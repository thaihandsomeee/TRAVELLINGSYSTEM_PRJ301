/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAL.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author HP
 */
public class LoginController extends HttpServlet {

    DAO db = new DAO();

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

        Cookie cookies[] = request.getCookies();
        if (cookies != null) {
            for (Cookie c : cookies) {
                if (c.getName().equals("username")) {
                    request.setAttribute("username", c.getValue());
                }
                if (c.getName().equals("password")) {
                    request.setAttribute("password", c.getValue());
                }
            }
        }

        request.getRequestDispatcher("login.jsp").forward(request, response);

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

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String remember = request.getParameter("remember");

        Account acc = db.getAccountByUsernameandPassword(username, password);

        if (acc == null) {
            request.setAttribute("username", username);
            request.setAttribute("password", password);
            request.setAttribute("wrongmessage", "username or password not correct!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            //session: thời gian sử dụng trình duyệt kể từ khi đăng nhập, sau chừng ấy thời gian hoặc tắt trình duyệt sẽ tự động đăng xuất
            HttpSession session = request.getSession();
            session.setAttribute("acc", acc);
            session.setMaxInactiveInterval(30 * 60);

            //Cookie: thời gian đăng nhập tồn tại khi tắt trình duyệt
            Cookie u = new Cookie("username", username);
            Cookie p = new Cookie("password", password);
            u.setMaxAge(60);
            if (remember != null) {
                p.setMaxAge(60*60*24);
            } else {
                p.setMaxAge(0);
            }

            response.addCookie(u); //lưu u và p lên trên trình duyệt
            response.addCookie(p);

            response.sendRedirect("home");
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
