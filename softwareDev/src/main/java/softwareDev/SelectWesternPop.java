package softwareDev;

import java.io.IOException;
import java.util.Random;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SelectWesternPop")
public class SelectWesternPop extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String song = request.getParameter("song");
        String genre = request.getParameter("genre");
        String[] wpop = {"Feather from Sabrina Carpenter", "Calm down from Taylor Swift", "Vampire from Olivia Rodrigo", "bad guy from Billie Eilish", "Happily from One Direction"};

        if ("random".equals(song)) {
            Random rand = new Random();
            song = wpop[rand.nextInt(wpop.length)];
        }

        request.setAttribute("song", song);
        request.setAttribute("genre", genre);
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}