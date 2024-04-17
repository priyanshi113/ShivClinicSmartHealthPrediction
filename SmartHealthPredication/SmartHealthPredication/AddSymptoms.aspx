<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddSymptoms.aspx.cs" Inherits="SmartHealthPredication.AddSymptoms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <link rel="shortcut icon" href="assets/img/Svg/health-care.png" />
    <title>Smart Health Predication</title>

    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME STYLE  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- ANIMATE STYLE  -->
    <link href="assets/css/animate.css" rel="stylesheet" />
    <!-- FLEXSLIDER STYLE  -->
    <link href="assets/css/flexslider.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- GOOGLE FONTS  -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css' />
</head>
<body>
    <form id="form1" runat="server">
        <section class="menu-section">
            <div class="container">
                <div class="row ">
                    <div class="col-md-12">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="Home.aspx"></a>
                            <%-- <img src="assets/img/Svg/health-care.png" /><b>SMART HEALTH PREDICATION</b>--%>
                            <asp:ImageButton ID="imglogo" runat="server" ValidationGroup="imglogo" ImageUrl="assets/img/Svg/health-care.png" /><b>SMART HEALTH PREDICATION</b>
                        </div>
                        <div class="navbar-collapse collapse ">
                            <ul id="menu-top" class="nav navbar-nav navbar-right">
                                <li><a href="Home.aspx">HOME</a></li>
                                <li><a href="ContactUs.aspx">CONTACT</a></li>
                                <li><a href="PatientLogin.aspx" class="menu-top-active">Login</a></li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </section>
    </form>
</body>
</html>
