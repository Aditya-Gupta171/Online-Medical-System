<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
            margin: 20px;
        }

        h2 {
            text-align: center;
            color: #4CAF50;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group input, .form-group select {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            font-size: 1em;
        }

        .payment-methods {
            display: flex;
            justify-content: space-around;
            margin-bottom: 20px;
        }

        .payment-method {
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            text-align: center;
            width: 45%;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .payment-method:hover {
            background-color: #e0f7fa;
        }

        .payment-method img {
            width: 50px;
            height: auto;
            margin-bottom: 10px;
        }

        .button {
            display: block;
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1.1em;
            cursor: pointer;
            text-align: center;
        }

        .button:hover {
            background-color: #45a049;
        }

        .error, .success {
            text-align: center;
            margin-top: 10px;
            font-size: 1.1em;
        }

        .error {
            color: red;
        }

        .success {
            color: green;
        }

        @media (max-width: 768px) {
            .payment-methods {
                flex-direction: column;
            }

            .payment-method {
                width: 100%;
                margin-bottom: 10px;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Payment Details</h2>

        <form action="processPayment" method="post">

            <div class="form-group">
                <label for="patientName">Patient Name:</label>
                <input type="text" id="patientName" name="patientName" required>
            </div>

            <div class="form-group">
                <label for="appointmentId">Appointment ID:</label>
                <input type="text" id="appointmentId" name="appointmentId" required>
            </div>

            <div class="form-group">
                <label for="amount">Amount:</label>
                <input type="text" id="amount" name="amount" value="500" disabled>
            </div>

            <div class="form-group">
                <label for="paymentMethod">Select Payment Method:</label>
                <div class="payment-methods">
                    <div class="payment-method" id="upi">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/UPI_logo.svg/1200px-UPI_logo.svg.png" alt="UPI">
                        <p>UPI</p>
                    </div>
                    <div class="payment-method" id="netbanking">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/a/a9/Netbanking_logo.png" alt="Netbanking">
                        <p>Net Banking</p>
                    </div>
                </div>
                <input type="hidden" id="selectedPaymentMethod" name="selectedPaymentMethod" value="">
            </div>

            <div class="form-group">
                <label for="cardNumber" class="upi-hidden">Card Number:</label>
                <input type="text" id="cardNumber" name="cardNumber" class="upi-hidden" placeholder="1234 5678 9012 3456" required>
            </div>

            <div class="form-group">
                <label for="expiryDate" class="upi-hidden">Expiry Date:</label>
                <input type="month" id="expiryDate" name="expiryDate" class="upi-hidden" required>
            </div>

            <div class="form-group">
                <label for="cvv" class="upi-hidden">CVV:</label>
                <input type="password" id="cvv" name="cvv" class="upi-hidden" maxlength="3" required>
            </div>

            <button type="submit" class="button">Proceed to Payment</button>
        </form>

        <div class="error">
            <!-- Display error message if any -->
            ${errorMessage}
        </div>
        <div class="success">
            <!-- Display success message if any -->
            ${successMessage}
        </div>
    </div>

    <script>
        // Handling UPI and Net Banking selection
        document.getElementById('upi').addEventListener('click', function() {
            document.getElementById('selectedPaymentMethod').value = 'UPI';
            document.querySelectorAll('.upi-hidden').forEach(function(element) {
                element.style.display = 'none';
            });
        });

        document.getElementById('netbanking').addEventListener('click', function() {
            document.getElementById('selectedPaymentMethod').value = 'Net Banking';
            document.querySelectorAll('.upi-hidden').forEach(function(element) {
                element.style.display = 'block';
            });
        });
    </script>

</body>
</html>
