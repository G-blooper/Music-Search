package softwareDev;

import java.io.IOException;
import java.util.Random;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SelectKpop")
public class SelectKpop extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String song = request.getParameter("song");
        String genre = request.getParameter("genre");
        String[] kpop = {"TT from Twice", "ELEVEN from IVE", "OMG from Newjeans", "DNA from BTS", "Pretty U from SEVENTEEN"};

        if ("random".equals(song)) {
            Random rand = new Random();
            song = kpop[rand.nextInt(kpop.length)];
        }

        request.setAttribute("song", song);
        request.setAttribute("genre", genre);
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}
