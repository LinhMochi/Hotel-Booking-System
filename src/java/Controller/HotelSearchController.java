/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.BookedRoomDAO;
import DAO.HotelConvenientDAO;
import DAO.HotelDAO;
import Model.Hotel;
import Model.HotelConvenientList;
import Model.Search;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "HotelSearchController", urlPatterns = {"/searchresult"})
public class HotelSearchController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        /* TODO output your page here. You may use following sample code. */
        Search s;

        if (request.getParameter("filter") != null) {
            s = (Search) request.getSession().getAttribute("search");
        } else {
            String search = request.getParameter("search");
            String arri = request.getParameter("arrival");
            String depart = request.getParameter("department");
            String a = request.getParameter("adult");
            String c = request.getParameter("child");
            String r = request.getParameter("room");

            s = new Search(search, Date.valueOf(arri),
                    Date.valueOf(depart), Integer.parseInt(a),
                    Integer.parseInt(c), Integer.parseInt(r));
        }

//        try (PrintWriter out = response.getWriter()) {
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet server</title>");
//            out.println("</head>");
//            out.println("<body>");
//            out.write("U sended " + s.toString());
//            out.println("</body>");
//            out.println("</html>");
//        };
        int countResult = new HotelDAO().countAvailableHotel(s);
        if(countResult == 0){
            request.setAttribute("message", "Không thấy khách sạn phù hợp");
            request.setAttribute("countResult", countResult);
            request.getRequestDispatcher("NotFoundHotel.jsp").forward(request, response);
        }
        int endPage = countResult / 5 + (countResult % 5 == 0 ? 0 : 1);
        request.setAttribute("countResult", countResult);
        request.setAttribute("endpage", endPage);
        String page = request.getParameter("page") == null ? "1" : request.getParameter("page");
        ArrayList<Hotel> availableHotels = new HotelDAO().getAvailableHotel(s, page);
        if (availableHotels.isEmpty() && !(page == null)) {
            request.getRequestDispatcher("NotFound.jsp").forward(request, response);
        } else {
            request.getSession().setAttribute("search", s);
            request.setAttribute("availableHotel", availableHotels);
            request.setAttribute("page", Integer.parseInt(page));// set current page
            request.setAttribute("endPage", availableHotels.size() < 5 ? "next" : null);// set next able

            StringBuilder hotels = new StringBuilder("");
            for (Hotel h : availableHotels) {
                hotels.append(h.getId() + ", ");
            }
            String h = hotels.toString();
            HotelConvenientList cList = new HotelConvenientDAO().getRatedConvenientByHotels(h);
            request.setAttribute("cList", cList);
            request.setAttribute("pList", new BookedRoomDAO().getMaxPromotion(h, s.getArrival(), s.getDepartment()));
            request.getRequestDispatcher("SearchResult.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
