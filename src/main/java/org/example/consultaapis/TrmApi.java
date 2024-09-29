package org.example.consultaapis;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

@WebServlet("/trm")
public class TrmApi extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String date = "2023-06-22"; // Aquí se puede modificar la fecha a consultar
        String urlString = String.format("https://trm-colombia.vercel.app/?date=%s", date);


        URL url = new URL(urlString);
        HttpURLConnection con = (HttpURLConnection) url.openConnection();
        con.setRequestMethod("GET");


        BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
        String inputLine;
        StringBuilder content = new StringBuilder();
        while ((inputLine = in.readLine()) != null) {
            content.append(inputLine);
        }
        in.close();
        con.disconnect();


        JSONObject json = new JSONObject(content.toString());
        JSONObject data = json.getJSONObject("data");
        double trmValue = data.getDouble("value");


        request.setAttribute("trm", trmValue);
        request.getRequestDispatcher("trm.jsp").forward(request, response);
    }
}
