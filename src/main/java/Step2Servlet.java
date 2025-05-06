import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.io.IOException;

@WebServlet("/step2")
public class Step2Servlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession session = req.getSession();
        session.setAttribute("position", req.getParameter("position"));
        session.setAttribute("numInTeam", req.getParameter("numInTeam"));
        session.setAttribute("description", req.getParameter("description"));
        resp.sendRedirect("step3.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        session.setAttribute("position", req.getParameter("position"));
        String numInTeam = req.getParameter("numInTeam");
        if (numInTeam != null && !numInTeam.isEmpty()) {
            session.setAttribute("numInTeam", req.getParameter("numInTeam"));
        }
        String description = req.getParameter("description");
        if(description != null && !description.isEmpty()){
            session.setAttribute("description", description);
        }
        req.getRequestDispatcher("step2.jsp").forward(req, resp);
    }
}
