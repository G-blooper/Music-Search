package softwareDev;

import java.io.IOException;
import java.util.Random;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SelectJpop")
public class SelectJpop extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String song = request.getParameter("song");
        String genre = request.getParameter("genre");
        String[] jpop = {"白日 from King&Gun", "マリゴールド from あいみょん", "アイドル from YOASOBI", "シンデレラボーイ from Saucy Dog", "きらり from 藤井風"};

        if ("random".equals(song)) {
            Random rand = new Random();
            song = jpop[rand.nextInt(jpop.length)];
        }

        request.setAttribute("song", song);
        request.setAttribute("genre", genre);
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}