<%-- 
    Document   : index
    Created on : 4/09/2025, 5:10:07 p. m.
    Author     : camiloprieto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de Gestión de Inventario</title>
    <link rel="stylesheet" href="css/style.css">

</head>

<body>
    <!-- Header -->
    <header class="navbar">
        <div class="logo">TrackIt?</div>
        <nav>
            <ul>
                <li><a href="#inicio">Inicio</a></li>
                <li><a href="#funcionalidades">Funcionalidades</a></li>
                <li><a href="#reportes">Reportes</a></li>
                <li><a href="#contacto">Contacto</a></li>
            </ul>
        </nav>
    </header>

    <!-- Hero / Portada -->
    <section id="inicio" class="hero">
        <div class="hero-text">
            <h1>Bienvenido a TrackIt!</h1>
            <h3>Sistema de Gestión de Inventario</h3>
            <p>Una solución simple y eficiente para pequeñas empresas.</p>
            <a href="#funcionalidades" class="btn">Ver más</a>
        </div>
    </section>

    <!-- Funcionalidades -->
    <section id="funcionalidades" class="features">
        <h2>Características Principales</h2>
        <div class="feature-cards">
            <div class="card">
                <h3>📦 Registro de Productos</h3>
                <p>Agrega, edita y gestiona tu inventario de manera sencilla.</p>
            </div>
            <div class="card">
                <h3>💰 Procesamiento de Ventas</h3>
                <p>Actualiza el stock automáticamente con cada venta registrada.</p>
            </div>
            <div class="card">
                <h3>📊 Reportes</h3>
                <p>Genera reportes detallados de ventas e inventario.</p>
            </div>
            <div class="card">
                <h3>⚠️ Alertas de Bajo Stock</h3>
                <p>Recibe notificaciones cuando un producto esté por agotarse.</p>
            </div>
        </div>
    </section>

    <!-- Reportes -->
    <section id="reportes" class="reports">
        <h2>Reportes Inteligentes</h2>
        <p>Visualiza el rendimiento de tu negocio en tiempo real.</p>
        <img src="images/report-example.png" alt="Ejemplo de Reporte">
    </section>

    <!-- Footer -->
    <footer id="contacto" class="footer">
        <p>&copy; 2025 InventarioPro - Todos los derechos reservados</p>
        <p>By: Laura Valentina López Garcia - Juan Camilo Prieto Mestizo</p>
    </footer>
</body>

</html>