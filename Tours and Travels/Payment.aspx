<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Tours_and_Travels.Payment" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment</title>
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <script>
                window.onload = function () {
                    var options = {
                        "key": "rzp_test_hSNPsu5aXeNV82", // Replace with your actual key
                        "amount": "<%= Request.QueryString["amount"] %>", // In paise
                        "currency": "INR",
                        "name": "<%= Request.QueryString["name"] %>",
                        "description": "Tour Package Booking",
                        "handler": function (response) {
                            alert("Payment successful! Payment ID: " + response.razorpay_payment_id);
                            window.location.href = "BookingDetail.aspx";
                        },
                        "prefill": {
                            "name": "<%= Request.QueryString["name"] %>",
                            "email": "<%= Request.QueryString["email"] %>"
                        },
                        "theme": {
                            "color": "#F37254"
                        },
                        "modal": {
                            "ondismiss": function () {
                                // Redirect back to the package booking page on cancel
                                window.location.href = "Booking.aspx";
                            }
                        }
                    };
                    var rzp = new Razorpay(options);
                    rzp.open();
                }
            </script>
        </div>
    </form>
</body>
</html>
