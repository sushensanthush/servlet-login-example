package lk.susa.practical01.controller;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.susa.practical01.model.User;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/signup")
public class SignUp extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String mobile = req.getParameter("mobile");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        ServletContext context = getServletContext();
        resp.setContentType("text/html");

        ArrayList<User> users = (ArrayList<User>) context.getAttribute("users");
        if (users == null) {
            users = new ArrayList<>();
            context.setAttribute("users", users);
        }


        String head = "<html><head><style>" +
                "body { margin: 0; background: #000; font-family: 'Inter', sans-serif; color: white; display: flex; justify-content: center; align-items: center; min-height: 100vh; overflow: hidden; }" +
                ".glass-card { background: rgba(10, 10, 10, 0.8); backdrop-filter: blur(20px); border: 1px solid rgba(255, 255, 255, 0.08); padding: 3rem; border-radius: 16px; text-align: center; width: 350px; z-index: 10; }" +
                "h2 { font-weight: 300; letter-spacing: -0.02em; margin-bottom: 10px; }" +
                "p { color: #71717a; font-size: 0.9rem; margin-bottom: 25px; }" +
                ".btn { display: block; padding: 12px; border-radius: 6px; font-weight: 600; text-decoration: none; font-size: 0.8rem; background: #fff; color: #000; }" +
                "</style></head><body>" +
                "<script type='text/javascript' color='255,255,255' opacity='0.4' zIndex='-1' count='150' src='https://cdnjs.cloudflare.com/ajax/libs/canvas-nest.js/1.0.1/canvas-nest.min.js'></script>";

        if (!name.isEmpty() && !mobile.isEmpty() && !email.isEmpty() && !password.isEmpty()) {

            for (User user : users) {
                if (user.getEmail().equals(email)) {
                    resp.getWriter().println(head + "<div class='glass-card'><h2 style='color:#ff4444;'>EXISTING IDENTITY</h2><p>The email <b>" + email + "</b> is already registered.</p><a href='signup.jsp' class='btn'>Back to Registration</a></div></body></html>");
                    return;
                }
            }

            User user = new User(name, mobile, email, password);
            users.add(user);
            resp.getWriter().println(head + "<div class='glass-card'><h2>REGISTRATION COMPLETE</h2><p>Identity created for <b>" + email + "</b></p><a href='signin.jsp' class='btn'>Proceed to Sign In</a></div></body></html>");

        } else {
            resp.getWriter().println(head + "<div class='glass-card'><h2 style='color:#ff4444;'>INCOMPLETE DATA</h2><p>Required fields cannot be empty.</p><a href='signup.jsp' class='btn'>Try Again</a></div></body></html>");
        }
    }
}