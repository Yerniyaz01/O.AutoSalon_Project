package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

import java.io.IOException;

@WebServlet (value = "/login-eng")
public class LoginEngServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/JSP/login-eng.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user =  DBConnection.getUser(email);

        if(user!=null && user.getPassword().equals(password)){
            HttpSession session = request.getSession();
            session.setAttribute("currentUser", user);
            response.sendRedirect("/profile");
        }
        else response.sendRedirect("/login-eng?error");

    }


}
