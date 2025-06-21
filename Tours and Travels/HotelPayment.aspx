<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HotelPayment.aspx.cs" Inherits="Tours_and_Travels.HotelPayment" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hotel Payment</title>
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <script type="text/javascript">
            window.onload = function () {
                var options = {
                    "key": "rzp_test_hSNPsu5aXeNV82", // ✅ Your Razorpay API key
                    "amount": "<%= amount %>",
                    "currency": "INR",
                    "name": "Tours & Travels",
                    "description": "Hotel Booking Payment",
                    "image": "images/logo.png",
                    "handler": function (response) {
                        alert("Payment successful. Payment ID: " + response.razorpay_payment_id);
                        window.location.href = "BookingDetail.aspx";
                    },
                    "prefill": {
                        "name": "<%= name %>",
                        "email": "<%= email %>"
                    },
                    "theme": {
                        "color": "#F37254"
                    },
                    "modal": {
                        "ondismiss": function () {
                            // 👇 Redirect to booking form if Razorpay is cancelled
                            window.location.href = "BookHotel.aspx";
                        }
                    }
                };
                var rzp = new Razorpay(options);
                rzp.open();
            };
        </script>
    </form>
</body>
</html>
