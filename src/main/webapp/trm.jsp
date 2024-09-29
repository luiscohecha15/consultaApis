<%--
  Created by IntelliJ IDEA.
  User: luisc
  Date: 29/09/2024
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>TRM API</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #e9ecef;
      color: #343a40;
    }
    .header {
      background-color: #17a2b8;
      color: white;
      padding: 20px;
      text-align: center;
      border-radius: 8px;
      margin-bottom: 20px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    .trm-info {
      border: 1px solid #17a2b8;
      border-radius: 8px;
      padding: 20px;
      background-color: white;
      box-shadow: 0 4px 8px rgba(0,0,0,0.1);
      transition: transform 0.3s, background-color 0.3s;
    }
    .trm-info:hover {
      background-color: #f1f3f5;
      transform: scale(1.02);
    }
    .btn-success {
      background-color: #28a745;
      border: none;
      transition: background-color 0.3s;
    }
    .btn-success:hover {
      background-color: #218838;
    }
    .footer {
      margin-top: 30px;
      text-align: center;
      color: #6c757d;
    }
    @media (max-width: 768px) {
      .header {
        font-size: 1.2rem;
        padding: 15px;
      }
      .trm-info {
        padding: 15px;
      }
      .btn-success {
        font-size: 0.9rem;
        padding: 10px 20px;
      }
    }
  </style>
</head>
<body>
<div class="header">
  <h1>Valor del TRM</h1>
</div>
<div class="container">
  <div class="trm-info">
    <h2>El Valor del TRM en esa fecha es:</h2>
    <% if (request.getAttribute("trm") != null) { %>
    <p>TRM: <%= request.getAttribute("trm") %> COP</p>
    <% } else { %>
    <p>No se pudo obtener el valor del TRM.</p>
    <% } %>

    <p>TRM: ${trm} COP</p>
  </div>
  <a href="index.jsp" class="btn btn-success mt-3">Volver al inicio</a>
</div>
<div class="footer">
  <p>&copy; Luis Alfonso Cohecha Suarez</p>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
