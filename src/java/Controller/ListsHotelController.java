/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.CityDAO;
import DAO.HotelDAO;
import Model.City;
import Model.Hotel;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nhat Anh
 */
@WebServlet(name = "ListsHotelController", urlPatterns = {"/ListsHotelController"})
public class ListsHotelController extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ListsHotelController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ListsHotelController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String page = "";
        try {
            CityDAO cdao = new CityDAO();
            List<City> listc = cdao.getListCity();
            request.setAttribute("listc", listc);
            page = request.getParameter("page");
            if(page == null) {
                page = "1";
            }
        } catch (Exception e) {
            page = "1";
        }
       HotelDAO dao = new HotelDAO();
       ArrayList<Hotel> listHotel = dao.getHotelByPage(page);
        
        
        int numberOfPage = dao.getAllHotel().size() % 5 == 0 ? dao.getAllHotel().size() / 5 : dao.getAllHotel().size() / 5 + 1;
        request.setAttribute("listHotel", listHotel);
        request.setAttribute("numberOfPage", numberOfPage);
        request.setAttribute("page", Integer.parseInt(page));
        request.getRequestDispatcher("ListHotel.jsp").forward(request, response);
        
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
