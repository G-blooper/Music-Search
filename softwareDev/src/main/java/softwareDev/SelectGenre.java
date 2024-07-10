package softwareDev;
//package com.example;

import java.io.IOException;
import java.util.Random;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SelectGenre")
public class SelectGenre extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String genre = request.getParameter("genre");
        String targetPage = "";
        
        if ("random".equals(genre)) {
            String[] genres = {"Kpop", "Jpop", "Western Pop"};
            Random rand = new Random();
            genre = genres[rand.nextInt(genres.length)];
        }
        
        if ("Kpop".equals(genre)) {
            targetPage = "index2_kpop.jsp";
        } else if ("Jpop".equals(genre)) {
            targetPage = "index2_jpop.jsp";
        } else if ("Western Pop".equals(genre)) {
            targetPage = "index2_wpop.jsp";
        }

        request.getRequestDispatcher(targetPage).forward(request, response);
    }
}