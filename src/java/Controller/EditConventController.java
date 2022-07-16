/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.UserDAO;
import Model.Convenients;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Duong
 */
@WebServlet(name = "EditConventController", urlPatterns = {"/EditConventController"})
public class EditConventController extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDAO ud = new UserDAO();
        List<Convenients> listCon1 = ud.getConvenient(1);
        List<Convenients> listCon2 = ud.getConvenient(2);
        List<Convenients> listCon3 = ud.getConvenient(3);
        List<Convenients> listCon4 = ud.getConvenient(4);
        List<Convenients> listCon5 = ud.getConvenient(5);
        List<Convenients> listCon6 = ud.getConvenient(6);
        List<Convenients> listCon7 = ud.getConvenient();
        List<Convenients> listConCate = ud.ConvenientCategories();
        request.setAttribute("listCon1", listCon1);
        request.setAttribute("listCon2", listCon2);
        request.setAttribute("listCon3", listCon3);
        request.setAttribute("listCon4", listCon4);
        request.setAttribute("listCon5", listCon5);
        request.setAttribute("listCon6", listCon6);
        request.setAttribute("listCon7", listCon7);
        request.setAttribute("listConCate", listConCate);
        request.getRequestDispatcher("EditConvent.jsp").forward(request, response);
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
        

        int convenientCateId = Integer.parseInt(request.getParameter("conCateId"));
        String convenient = request.getParameter("convenient");
        int conId = Integer.parseInt(request.getParameter("conId"));

        UserDAO userDao = new UserDAO();
        userDao.updateConvenByAdmin(conId, convenientCateId, convenient);
        UserDAO ud = new UserDAO();
        List<Convenients> listCon1 = ud.getConvenient(1);
        List<Convenients> listCon2 = ud.getConvenient(2);
        List<Convenients> listCon3 = ud.getConvenient(3);
        List<Convenients> listCon4 = ud.getConvenient(4);
        List<Convenients> listCon5 = ud.getConvenient(5);
        List<Convenients> listCon6 = ud.getConvenient(6);
        List<Convenients> listCon7 = ud.getConvenient();
        List<Convenients> listConCate = ud.ConvenientCategories();
        request.setAttribute("listCon1", listCon1);
        request.setAttribute("listCon2", listCon2);
        request.setAttribute("listCon3", listCon3);
        request.setAttribute("listCon4", listCon4);
        request.setAttribute("listCon5", listCon5);
        request.setAttribute("listCon6", listCon6);
        request.setAttribute("listCon7", listCon7);
        request.setAttribute("listConCate", listConCate);
        request.getRequestDispatcher("EditConvent.jsp").forward(request, response);
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
