<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Services - Medical Management System</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
       

        .services-page * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        /* Services Container */
        .services-page .services-container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 0 20px;
            text-align: center;
        }

        .services-page .services-container h1 {
            font-size: 36px;
            color: #2c3e50;
            margin-bottom: 20px;
        }

        .services-page .services-container p {
            font-size: 18px;
            color: #7f8c8d;
            margin-bottom: 40px;
        }

        /* Cards Grid */
        .services-page .cards-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            padding: 0 20px;
        }

        /* Card Styling */
        .services-page .card {
            background: #ffffff;
            border: 1px solid #e0e0e0;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            overflow: hidden;
            display: flex;
            flex-direction: column;
            width: 100%;
            height: 380px;
        }

        .services-page .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.2);
        }

        .services-page .card img {
            width: 100%;
            height: 180px;
            object-fit: cover;
        }

        .services-page .card-content {
            padding: 20px;
            flex: 1;
        }

        .services-page .card-content h3 {
            font-size: 24px;
            color: #2c3e50;
            margin-bottom: 10px;
        }

        .services-page .card-content p {
            font-size: 16px;
            color: #7f8c8d;
            margin-bottom: 15px;
        }

        .services-page .card-content a {
            display: inline-block;
            padding: 10px 15px;
            background-color: #3498db;
            color: #ffffff;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
        }

        .services-page .card-content a:hover {
            background-color: #2980b9;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .services-page .cards-grid {
                grid-template-columns: 1fr;
            }

            .services-page .card {
                height: auto;
            }

            .services-page .card img {
                height: 150px;
            }
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <div class="services-page">
        <div class="services-container">
            <h1>Our Services</h1>
            <p>Explore the range of healthcare services we offer to ensure your well-being.</p>
            
            <div class="cards-grid">
                <!-- Card 1 -->
                <div class="card">
                    <img src="images/online-consultation.jpg" alt="Online Consultation">
                    <div class="card-content">
                        <h3>Online Consultation</h3>
                        <p>Connect with top doctors from the comfort of your home through video calls.</p>
                        <a href="#">Learn More</a>
                    </div>
                </div>

                <!-- Card 2 -->
                <div class="card">
                    <img src="images/appointment-booking.jpg" alt="Appointment Booking">
                    <div class="card-content">
                        <h3>Appointment Booking</h3>
                        <p>Book your appointments seamlessly with a few clicks.</p>
                        <a href="#">Learn More</a>
                    </div>
                </div>

                <!-- Card 3 -->
                <div class="card">
                    <img src="images/pharmacy.jpg" alt="Online Pharmacy">
                    <div class="card-content">
                        <h3>Online Pharmacy</h3>
                        <p>Order medicines online and get them delivered to your doorstep.</p>
                        <a href="#">Learn More</a>
                    </div>
                </div>

                <!-- Card 4 -->
                <div class="card">
                    <img src="images/diagnostic.jpg" alt="Diagnostic Tests">
                    <div class="card-content">
                        <h3>Diagnostic Tests</h3>
                        <p>Schedule diagnostic tests and get accurate results quickly.</p>
                        <a href="#">Learn More</a>
                    </div>
                </div>

                <!-- Card 5 -->
                <div class="card">
                    <img src="images/health-packages.jpg" alt="Health Packages">
                    <div class="card-content">
                        <h3>Health Packages</h3>
                        <p>Choose from a variety of affordable health checkup packages.</p>
                        <a href="#">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="footer.jsp" %>
</body>
</html>
