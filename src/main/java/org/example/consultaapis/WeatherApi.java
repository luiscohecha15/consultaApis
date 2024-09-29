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


@WebServlet("/weather")
public class WeatherApi extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String urlString = "https://my.meteoblue.com/packages/basic-day?apikey=1pXSnYPqmyHINgxK&lat=6.25184&lon=-75.5636&asl=1405&format=json";

        try {

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


            if (json.has("data_day")) {
                JSONObject dataDay = json.getJSONObject("data_day");


                if (dataDay.has("temperature_max")) {
                    String temperatureMax = dataDay.get("temperature_max").toString();
                    request.setAttribute("temperatureMax", temperatureMax);
                    request.getRequestDispatcher("weather.jsp").forward(request, response);
                } else {
                    request.setAttribute("error", "No se encontró la temperatura máxima en los datos.");
                    request.getRequestDispatcher("weather.jsp").forward(request, response);
                }
            } else {
                request.setAttribute("error", "No se pudo obtener el clima. Verifica los datos de la API.");
                request.getRequestDispatcher("weather.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Ocurrió un error al conectar con la API: " + e.getMessage());
            request.getRequestDispatcher("weather.jsp").forward(request, response);
        }
    }
}
