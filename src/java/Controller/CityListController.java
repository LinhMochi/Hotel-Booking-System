/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.CityDAO;
import Model.City;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
@WebServlet(name = "CityListController", urlPatterns = {"/CityListController"})
public class CityListController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final int NUMBER_IMAGE = 8;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
         request.setCharacterEncoding("utf-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            HttpSession session = request.getSession();
            User a = (User) session.getAttribute("user");
            if (a != null) {
                if (/*a.getRole().equals("Manager")||*/a.getRole().equals("Admin")) {
            String page;
            try {
                page = request.getParameter("page");
                if (page == null) {
                    page = "1";
                }
            } catch (Exception e) {
                page = "1";
            }
            
              String searchName = request.getParameter("searchName");
                    if (searchName == null) {
                        searchName = "";
                    }
            CityDAO c = new CityDAO();
//            ArrayList<Room> list = hgd.GetAllRoom();
            int count = c.getAllListCity().size();
            int endPage = count / NUMBER_IMAGE;
            if (count % NUMBER_IMAGE != 0) {
                endPage++;
            }
            ArrayList<City> hlist = new CityDAO().getListCity();

            ArrayList<City> list = c.SearchCity(searchName,page, NUMBER_IMAGE);
//            response.getWriter().print(list);
            City spc = new City();
            request.setAttribute("list", list);
            request.setAttribute("endPage", endPage);
            request.setAttribute("searchName", searchName);
            request.setAttribute("page", page);
            request.setAttribute("count", count);
            request.setAttribute("numberOfImage", NUMBER_IMAGE);
            request.setAttribute("hlist", hlist);

//            RoomDAO hgd = new RoomDAO();
            request.getRequestDispatcher("CityList.jsp").forward(request, response);
                   } else {
                    request.getRequestDispatcher("AccessDenied.jsp").forward(request, response);
                }
            } else {
                request.getRequestDispatcher("AccessDenied.jsp").forward(request, response);
            }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(CityListController.class.getName()).log(Level.SEVERE, null, ex);
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
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(CityListController.class.getName()).log(Level.SEVERE, null, ex);
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
