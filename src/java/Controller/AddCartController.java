/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.BookedRoomDAO;
import DAO.RoomDAO;
import DAO.ServiceDAO;
import Model.BookedRoom;
import Model.Hotel;
import Model.ReservationDetail;
import Model.Room;
import Model.Search;
import Model.Service;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "AddCartController", urlPatterns = {"/AddCart"})
public class AddCartController extends HttpServlet {

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
        request.setCharacterEncoding("charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddCartController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddCartController at " + request.getContextPath() + "</h1>");
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
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        
//        response.setContentType("text/html;charset=UTF-8");
//        request.setCharacterEncoding("UTF-8");
//        
//        String p = request.getParameter("p")== null ?"reservationdetail":"hoteldetail";
//        
////String currentPage = request.getParameter("p")==null?"reservationdetail":"hoteldetail";        
//        
//        ReservationDetail cart= (ReservationDetail) request.getSession().getAttribute("cart");
//        Hotel h = (Hotel) request.getSession().getAttribute("hotel");
//        Search s = (Search) request.getSession().getAttribute("search");
//        int id = 0;
//        if(request.getParameter("add").equals("room")){
//            if(cart==null) {
//                cart = new ReservationDetail();
//                cart.setNoDate(s.getArrival(), s.getDepartment());
//            }
//            id = Integer.parseInt(request.getParameter("id"));
//            int quantity = 1;
//            BookedRoom br = cart.getBookedRoom(id);
//            if(br!=null) quantity = quantity + br.getQuantity();
//            BookedRoom b = new BookedRoomDAO().getBookedRoom(id, quantity, h.getId(), s.getArrival(), s.getDepartment());
//            if(b!=null) {
//                cart.addBookedRoom(b);
//                request.setAttribute("notify", "Thêm phòng thành công");
//            } else request.setAttribute("message", "Phòng đã được chọn hết");
//        } else if(request.getParameter("add").equals("service")){
//            if(cart==null){
//                request.setAttribute("message", "Vui lòng chọn phòng trước");
//                request.getRequestDispatcher("hoteldetail").forward(request, response);
//            }
//            int quantity = Integer.parseInt(request.getParameter("quan"));
//            id = Integer.parseInt(request.getParameter("id"));
//            Service sv = new ServiceDAO().getService(id,s.getArrival(),s.getDepartment());
//            if(sv!=null&&quantity>=0){
//                Service bookS = cart.getBookedService(id);
//                if(bookS!=null) quantity = quantity+cart.getBookedService(id).getQuantity();
//                sv.setQuantity(quantity);
//                cart.addService(sv);
//                request.setAttribute("notify", "Thêm dịch vụ thành công");
//            }
//        }
//        if(cart!=null) request.getSession().setAttribute("cart", cart);
//        request.getRequestDispatcher(p).forward(request, response);
//    }     
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String p = request.getParameter("p") == null ? "reservationdetail" : "hoteldetail";

        ReservationDetail cart = (ReservationDetail) request.getSession().getAttribute("cart");
        Hotel h = (Hotel) request.getSession().getAttribute("hotel");
        Search s = (Search) request.getSession().getAttribute("search");
        int id = 0;

        //
        if (request.getParameter("add").equals("room")) {
            if (cart == null) {
                cart = new ReservationDetail();
                cart.setNoDate(s.getArrival(), s.getDepartment());
            }
            id = Integer.parseInt(request.getParameter("id"));
            int quantity = 1;
            BookedRoom br = cart.getBookedRoom(id);

            if (br != null) {
                quantity = quantity + br.getQuantity();
            }
            BookedRoom b = new BookedRoomDAO().getBookedRoom(id, quantity, h.getId(), s.getArrival(), s.getDepartment());

            if (b != null) {
                cart.addBookedRoom(b);
                request.setAttribute("notify", "Thêm phòng thành công");
            } else {
                request.setAttribute("message", "Phòng đã được chọn hết");
            }
        } else if (request.getParameter("add").equals("service")) {
            if (cart == null) {
                request.setAttribute("message", "Vui lòng chọn phòng trước");
                request.getRequestDispatcher("hoteldetail").forward(request, response);
            }
            int quantity = Integer.parseInt(request.getParameter("quan"));
            id = Integer.parseInt(request.getParameter("id"));

            Service sv = new ServiceDAO().getService(id, s.getArrival(), s.getDepartment());
            if (sv != null && quantity >= 0) {
                Service bookS = cart.getBookedService(id);

                if (bookS != null) {
                    quantity = quantity + cart.getBookedService(id).getQuantity();
                }
                sv.setQuantity(quantity);
                cart.addService(sv);
                request.setAttribute("notify", "Thêm dịch vụ thành công");
            }
        }

        if (cart != null) {
            request.getSession().setAttribute("cart", cart);
        }

        ArrayList<Room> ar = new RoomDAO().getAvailableRoom(h.getId(), s);
        request.getSession().setAttribute("availableRoom", ar);

        request.getRequestDispatcher(p).forward(request, response);
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
