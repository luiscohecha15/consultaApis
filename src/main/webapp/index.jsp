<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consumo de 3 APIs</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 20px;
            background-color: #f0f2f5;
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
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .list-group-item {
            transition: background-color 0.3s, transform 0.2s;
        }
        .list-group-item:hover {
            background-color: #e2f1f8;
            transform: scale(1.02);
        }
        .btn-link {
            color: #007bff;
            font-weight: bold;
        }
        .btn-link:hover {
            color: #0056b3;
            text-decoration: none;
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
            .container {
                padding: 15px;
            }
            .list-group-item {
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>
<div class="header">
    <h1>Consumo de APIs</h1>
</div>
<div class="container">
    <p class="lead">Seleccione una API:</p>
    <ul class="list-group">
        <li class="list-group-item">
            <a href="rickandmorty.jsp" class="btn btn-link">API Rick and Morty</a>
        </li>
        <li class="list-group-item">
            <a href="weather.jsp" class="btn btn-link">API Clima</a>
        </li>
        <li class="list-group-item">
            <a href="trm.jsp" class="btn btn-link">API TRM Colombia</a>
        </li>
    </ul>
</div>
<div class="footer">
    <p>&copy; Luis Alfonso Cohecha Suarez.</p>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
