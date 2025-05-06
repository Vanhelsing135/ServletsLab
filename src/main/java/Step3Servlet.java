import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.io.IOException;

@WebServlet("/step3")
public class Step3Servlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        HttpSession session = req.getSession();
        int age = Integer.parseInt(req.getParameter("age"));
        try {
            if (age < 15 || age > 50) {
                throw new IllegalArgumentException("Недопустимый возраст!");
            }
        } catch (IllegalArgumentException e) {
            req.setAttribute("age", age);
            req.getRequestDispatcher("/step3.jsp").forward(req, resp);
        }
        session.setAttribute("age", age);
        session.setAttribute("height", req.getParameter("height"));
        session.setAttribute("weight", req.getParameter("weight"));
        session.setAttribute("foot", req.getParameter("foot"));
        resp.sendRedirect("confirm.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String age = req.getParameter("age");
        if (age != null && !req.getParameter("age").isEmpty()) {
            session.setAttribute("age", req.getParameter("age"));
        }
        String height = req.getParameter("height");
        if (height != null && !req.getParameter("height").isEmpty()) {
            session.setAttribute("height", req.getParameter("height"));
        }
        String weight = req.getParameter("weight");
        if (weight != null && !req.getParameter("weight").isEmpty()) {
            session.setAttribute("weight", req.getParameter("weight"));
        }
        session.setAttribute("foot", req.getParameter("foot"));

        req.getRequestDispatcher("step3.jsp").forward(req, resp);
    }
}
