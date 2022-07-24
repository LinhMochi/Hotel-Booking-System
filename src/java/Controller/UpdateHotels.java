/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.HotelDAO;
import Model.Hotel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nhat Anh
 */
@WebServlet(name = "UpdateHotels", urlPatterns = {"/UpdateHotels"})
public class UpdateHotels extends HttpServlet {

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
            out.println("<title>Servlet UpdateHotels</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateHotels at " + request.getContextPath() + "</h1>");
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
         HotelDAO dao = new HotelDAO();
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            Hotel hotel = dao.getHotelByID(id);
            request.setAttribute("hotel",hotel );
            request.getRequestDispatcher("EditHotel.jsp").forward(request, response);
        } catch (Exception e) {
        }
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

        try {
            String name = request.getParameter("name");
            int star = Integer.parseInt(request.getParameter("star"));
            String decription = request.getParameter("decription");
            String hoteladvance = request.getParameter("hoteladvance");
            String policies = request.getParameter("policies");
            String map = request.getParameter("map");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String status = request.getParameter("status");
            String address = request.getParameter("address");
            int city = Integer.parseInt(request.getParameter("city"));
            int category = Integer.parseInt(request.getParameter("category"));
            String image = request.getParameter("image");

            int id = Integer.parseInt(request.getParameter("id"));
            HotelDAO dao = new HotelDAO();
            dao.editHotel(id, name, star, decription, hoteladvance, policies, map, email, phone, status, address, city, category, image);
            response.sendRedirect("ListsHotelController");
        } catch (Exception e) {
        }
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
