/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.BookedRoomDAO;
import DAO.RoomDAO;
import Model.Hotel;
import Model.ReservationDetail;
import Model.Room;
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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name = "UpdateCartController", urlPatterns = {"/UpdateCart"})
public class UpdateCartController extends HttpServlet {

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
            out.println("<title>Servlet UpdateCartController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateCartController at " + request.getContextPath() + "</h1>");
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
//        processRequest(request,response);
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        // page send request update card (hoteldetail or reservation detail)
        String currentPage = request.getParameter("p")==null?"reservationdetail":"hoteldetail";
        

        ReservationDetail cart = (ReservationDetail) request.getSession().getAttribute("cart");
        int id=1,quantity=1;
        String update = request.getParameter("update"); 
        if(update.equals("cancelre")){
            HttpSession session = request.getSession();
            session.removeAttribute("cart");
//            currentPage = "home";
        request.setAttribute("notify", "The reservation have cancel");
        request.getRequestDispatcher("home").forward(request, response);
        }
        if((!update.equals("search"))||!update.equals("cancelre")){
            String i = request.getParameter("id");
            String q = request.getParameter("quantity");
            id = Integer.parseInt(i!=null?i:"0" );
            quantity = Integer.parseInt(q!=null?q:"0");
        }
//        int id = Integer.parseInt(request.getParameter("id"));
//        int quantity = Integer.parseInt(request.getParameter("quantity"));
        
        Hotel h = (Hotel) request.getSession().getAttribute("hotel");
        Search s = (Search) request.getSession().getAttribute("search");

        if (update.equals("room")) {
            if(new BookedRoomDAO().checkQuanRoom(id, quantity, h.getId(), s.getArrival(), s.getDepartment())) {
                cart.updateBookedRoomQuantity(id, quantity);
                if(cart.isEmptyRoom()) { 
                    request.getSession().removeAttribute("cart");
                    cart.clearService();
                }
                
                
                
                request.setAttribute("notify", "Update phòng trong giỏ hàng thành công");
            }
            else {
                request.setAttribute("message", "Thêm phòng thất bại. Loại phòng này của khách sạn đã hết");
            }
        } else if(update.equals("service")) {
            cart.updateServiceQuantity(id, quantity);
            request.setAttribute(update, s);
        } else if (update.equals("search")){
            String arri = request.getParameter("arrival");
                String depart = request.getParameter("department");
                String a = request.getParameter("adult");
                String c = request.getParameter("child");
                String r = request.getParameter("room");
                Search s1 = new Search("", Date.valueOf(arri), Date.valueOf(depart), Integer.parseInt(a), Integer.parseInt(c), Integer.parseInt(r));
            if(cart.isEmptyRoom()||new BookedRoomDAO().checkSearchChange(cart.getBookedRooms(), h.getId(), s1)){
                cart.setNoDate(s1.getArrival(), s1.getDepartment());
                s1.setSearch(s.getSearch());
                request.getSession().setAttribute("search", s1);
                request.setAttribute("notify", "Thay đổi thành công");
            }else if(!(new BookedRoomDAO().checkSearchChange(cart.getBookedRooms(), h.getId(), s1))){
                request.setAttribute("message","Thay đổi ngày không thành công do có phòng đã hết");
            }
        }
        
        ArrayList<Room> ar = new RoomDAO().getAvailableRoom(h.getId(), s);
        request.getSession().setAttribute("availableRoom",ar);
        
        request.getSession().setAttribute("cart", cart);
        
        request.getRequestDispatcher(currentPage).forward(request, response);
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
