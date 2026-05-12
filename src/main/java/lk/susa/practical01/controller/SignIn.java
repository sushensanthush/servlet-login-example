package lk.susa.practical01.controller;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lk.susa.practical01.model.User;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/signin")
public class SignIn extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        ServletContext context = getServletContext();
        resp.setContentType("text/html");

        ArrayList<User> users = (ArrayList<User>) context.getAttribute("users");

        String head = "<html><head><style>" +
                "body { margin: 0; background: #000; font-family: 'Inter', sans-serif; color: white; display: flex; justify-content: center; align-items: center; min-height: 100vh; overflow: hidden; }" +
                ".glass-card { background: rgba(10, 10, 10, 0.8); backdrop-filter: blur(20px); border: 1px solid rgba(255, 255, 255, 0.08); padding: 3rem; border-radius: 16px; text-align: center; width: 350px; z-index: 10; }" +
                "h2 { font-weight: 300; letter-spacing: -0.02em; margin-bottom: 10px; }" +
                "p { color: #71717a; font-size: 0.9rem; margin-bottom: 25px; }" +
                ".btn { display: block; padding: 12px; border-radius: 6px; font-weight: 600; text-decoration: none; font-size: 0.8rem; background: #fff; color: #000; }" +
                "</style></head><body>" +
                "<script type='text/javascript' color='255,255,255' opacity='0.4' zIndex='-1' count='150' src='https://cdnjs.cloudflare.com/ajax/libs/canvas-nest.js/1.0.1/canvas-nest.min.js'></script>";

        if (users == null) {
            resp.sendRedirect("signup.jsp");
        } else {
            User user = null;
            for (User u : users) {
                if (u.getEmail().equals(email) && u.getPassword().equals(password)) {
                    user = u;
                    break;
                }
            }

            if (user != null) {
                HttpSession session = req.getSession();
                session.setAttribute("email", email);
                session.setAttribute("name", user.getName());
                session.setAttribute("mobile", user.getMobile());


                resp.getWriter().println(head + "<div class='glass-card'><h2>ACCESS GRANTED</h2><p>Welcome back, <b>" + user.getName() + "</b></p><a href='profile' class='btn'>Enter Dashboard</a></div></body></html>");
            } else {
                resp.getWriter().println(head + "<div class='glass-card'><h2 style='color:#ff4444;'>AUTH ERROR</h2><p>Invalid email or password.</p><a href='signin.jsp' class='btn'>Try Again</a></div></body></html>");
            }
        }
    }
}