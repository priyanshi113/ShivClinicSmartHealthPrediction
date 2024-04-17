<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.Master" AutoEventWireup="true" CodeBehind="HomeLogin.aspx.cs" Inherits="SmartHealthPredication.HomeLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="Mosaddek" />
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina" />
    <link rel="shortcut icon" href="img/favicon.png" />
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap-reset.css" rel="stylesheet" />
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/data-tables/DT_bootstrap.css" />
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="below-slideshow">
        <div class="container">
            <div class="row">

                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="txt-block">

                        <asp:LinkButton ID="lnkPatientLogin" CssClass="head-line" runat="server" ValidationGroup="lnkPatientLogin" ForeColor="White" OnClick="lnkPatientLogin_Click">Patient Login</asp:LinkButton>
                        <%--<h1 class="head-line">Patient Login</h1>--%>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <asp:LinkButton ID="lnkDoctorLogin" CssClass="head-line" runat="server" ValidationGroup="lnkDoctorLogin" ForeColor="White" OnClick="lnkDoctorLogin_Click">Doctor Login</asp:LinkButton>
                        <%--<h1 class="head-line">Doctor  Login</h1>--%>
                    </div>
                </div>
            </div>

        </div>
    </div>


    <div class="just-sec">


        <div class="container">

            <div class="row">
                <!--------------------------------------------------------------- Paitent Login Page -------------------------------------------------------------------->

                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="min-height: 500px;" id="LoginPatient" runat="server">
                    <div class="alert alert-info">
                        <asp:Image runat="server" ImageUrl="~/assets/img/Svg/login2.png" />
                        <asp:LinkButton ID="lnkLogin" runat="server" Style="align-content: center" OnClick="Login_Click" ValidationGroup="lnkLogin">Login</asp:LinkButton>
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                           <asp:Image runat="server" ImageUrl="~/assets/img/Svg/signup.svg" />
                        <asp:LinkButton ID="lnkSignUP" runat="server" Style="align-content: center" OnClick="SignUP_Click" ValidationGroup="lnkSignUP">Create New Account</asp:LinkButton>
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <asp:Image runat="server" ImageUrl="~/assets/img/Svg/forgot.png" />
                        <asp:LinkButton ID="lnkForgotPassword" runat="server" Style="align-content: center" OnClick="ForgotPassword_Click" ValidationGroup="lnkForgotPassword"> Can't Access Your Account?</asp:LinkButton>
                    </div>

                    <div class="row">

                        <!------------------------------------------ Paitent Login Page --------------------------------------------->
                        <div id="login" runat="server" class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="just-txt-div">

                                <h2>Login</h2>

                                <div class="form-group">
                                    <label>Enter Your Email</label>
                                    <h1>
                                        <asp:TextBox ID="PatientLoginEmailID" Style="font-weight: bold; color: black" CssClass="form-control" runat="server"></asp:TextBox></h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" runat="server" Style="font-weight: bold; color: red" ErrorMessage="Enter Your Email_ID." ControlToValidate="PatientLoginEmailID"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label>Enter Password </label>
                                    <h1>
                                        <asp:TextBox ID="PatientloginPassword" Style="font-weight: bold; color: black" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox></h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" Display="Dynamic" Style="font-weight: bold; color: red" runat="server" ErrorMessage="Password Must be Required." ControlToValidate="PatientloginPassword"></asp:RequiredFieldValidator>

                                </div>
                                <asp:Button ID="btnPatientLogin" runat="server" CssClass="btn btn-success btn-lg" Text="Login" OnClick="btnPatientLogin_Click" />
                                <asp:Label ID="lb1" Style="font-weight: bold; color: red" runat="server"></asp:Label>

                            </div>
                        </div>


                        <!------------------------------------------ Paitent Sign Up Page --------------------------------------------->
                        <div id="signup" runat="server" class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="just-txt-div">

                                <h2>Sign Up</h2>

                                <div class="form-group">
                                    <label>Enter Your FullName</label>
                                    <h1>
                                        <asp:TextBox ID="PatientFullName" Style="font-weight: bold; color: black" CssClass="form-control" runat="server"></asp:TextBox></h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" Style="font-weight: bold; color: red" Display="Dynamic" runat="server" ErrorMessage="FullName is Required." ControlToValidate="PatientFullName"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Style="font-weight: bold; color: red" Display="Dynamic" runat="server" ControlToValidate="PatientFullName" ValidationExpression="^[a-zA-Z ]{7,20}$" ErrorMessage="Enter only character "></asp:RegularExpressionValidator>

                                </div>
                                <div class="form-group">
                                    <label>Enter Your Email-ID</label>
                                    <h1>
                                        <asp:TextBox ID="PatientEmailID" Style="font-weight: bold; color: black" CssClass="form-control" runat="server"></asp:TextBox>
                                    </h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" Style="font-weight: bold; color: red" Display="Dynamic" runat="server" ErrorMessage="Enter Your Email_ID." ControlToValidate="PatientEmailID"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" Style="font-weight: bold; color: red" Display="Dynamic" runat="server" ControlToValidate="PatientEmailID" ErrorMessage="Please Enter a Valid EmailID('ex: ravi12@xyz.com')" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                                </div>
                                <div class="form-group">
                                    <label>Enter Your MobileNo</label>
                                    <h1>
                                        <asp:TextBox ID="PatientMobileNo" Style="font-weight: bold; color: black" CssClass="form-control" runat="server"></asp:TextBox></h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Style="font-weight: bold; color: red" Display="Dynamic" runat="server" ErrorMessage="Enter Your MobileNo." ControlToValidate="PatientMobileNo"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Style="font-weight: bold; color: red" Display="Dynamic" runat="server" ControlToValidate="PatientMobileNo" ValidationExpression="^[7-9][0-9]{9}$" ErrorMessage="Number You enter is not valid please enter valid number"></asp:RegularExpressionValidator>

                                </div>
                                <div class="form-group">
                                    <label>Enter Your AdharCardNo</label>
                                    <h1>
                                        <asp:TextBox ID="PatientAdharCardNo" Style="font-weight: bold; color: black" CssClass="form-control" runat="server"></asp:TextBox></h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" Style="font-weight: bold; color: red" runat="server" ErrorMessage="Enter Your AdharCard Number." ControlToValidate="PatientAdharCardNo"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" Display="Dynamic" Style="font-weight: bold; color: red" runat="server" ControlToValidate="PatientAdharCardNo" ErrorMessage="AdharCard No :9656 165* 2***" ValidationExpression="^\d{4}\s\d{4}\s\d{4}$"></asp:RegularExpressionValidator>

                                </div>
                                <div class="form-group">
                                    <label>Enter Your Address</label>
                                    <h1>
                                        <asp:TextBox ID="PatientAddress" Style="font-weight: bold; color: black" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox></h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="Dynamic" Style="font-weight: bold; color: red" runat="server" ErrorMessage="Enter Your Address." ControlToValidate="PatientAddress"></asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group">
                                    <label>Select Your City</label>
                                    <h1>
                                        <asp:DropDownList ID="ddlPatientCity" Style="font-weight: bold; color: black" runat="server" CssClass="form-control">
                                            <asp:ListItem Selected="True">----Select----</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Andhra Pradesh----</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-Anantapur">Anantapur</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-Guntakal">Guntakal</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-Guntur">Guntur</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-Hyderabad">Hyderabad/Secunderabad</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-kakinada">kakinada</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-kurnool">kurnool</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-Nellore">Nellore</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-Nizamabad">Nizamabad</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-Rajahmundry">Rajahmundry</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-Tirupati">Tirupati</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-Vijayawada">Vijayawada</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-Visakhapatnam">Visakhapatnam</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-Warangal">Warangal</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-Other">Andra Pradesh-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Arunachal Pradesh----</asp:ListItem>
                                            <asp:ListItem Value="Arunachal Pradesh-Itanagar">Itanagar</asp:ListItem>
                                            <asp:ListItem Value="Arunachal Pradesh-Other">Arunachal Pradesh-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Assam----</asp:ListItem>
                                            <asp:ListItem Value="Assam-Guwahati">Guwahati</asp:ListItem>
                                            <asp:ListItem Value="Assam-Silchar">Silchar</asp:ListItem>
                                            <asp:ListItem Value="Assam-Other">Assam-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Bihar----</asp:ListItem>
                                            <asp:ListItem Value="Bihar-Bhagalpur">Bhagalpur</asp:ListItem>
                                            <asp:ListItem Value="Bihar-Patna">Patna</asp:ListItem>
                                            <asp:ListItem Value="Bihar-Other">Bihar-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Chhattisgarh----</asp:ListItem>
                                            <asp:ListItem Value="Chhattisgarh-Bhillai">Bhillai</asp:ListItem>
                                            <asp:ListItem Value="Chattisgarh-Bilaspur">Bilaspur</asp:ListItem>
                                            <asp:ListItem Value="Chhattisgarh-Raipur">Raipur</asp:ListItem>
                                            <asp:ListItem Value="Chhattisgarh-Other">Chhattisgarh-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Goa----</asp:ListItem>
                                            <asp:ListItem Value="Goa-Panjim/Panaji">Panjim/Panaji</asp:ListItem>
                                            <asp:ListItem Value="Goa-Vasco Da Gama">Vasco Da Gama</asp:ListItem>
                                            <asp:ListItem Value="Goa-Other">Goa-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Gujarat----</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Ahmedabad">Ahmedabad</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Anand">Anand</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Ankleshwar">Ankleshwar</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Bharuch">Bharuch</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Bhavnagar">Bhavnagar</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Bhuj">Bhuj</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Gandhinagar">Gandhinagar</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Gir">Gir</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Jamnagar">Jamnagar</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Kandla">Kandla</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Porbandar">Porbandar</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Rajkot">Rajkot</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Surat">Surat</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Vadodara/Baroda">Vadodara/Baroda</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Valsad">Valsad</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Vapi">Vapi</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Other">Gujarat-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Haryana----</asp:ListItem>
                                            <asp:ListItem Value="Haryana-Ambala">Ambala</asp:ListItem>
                                            <asp:ListItem Value="Haryana-Chandigarh">Chandigarh</asp:ListItem>
                                            <asp:ListItem Value="Haryana-Faridabad">Faridabad</asp:ListItem>
                                            <asp:ListItem Value="Haryana-Gurgaon">Gurgaon</asp:ListItem>
                                            <asp:ListItem Value="Haryana-Hisar">Hisar</asp:ListItem>
                                            <asp:ListItem Value="Haryana-Karnal">Karnal</asp:ListItem>
                                            <asp:ListItem Value="Haryana-Kurukshetra">Kurukshetra</asp:ListItem>
                                            <asp:ListItem Value="Haryana-Panipat">Panipat</asp:ListItem>
                                            <asp:ListItem Value="Haryana-Rohtak">Rohtak</asp:ListItem>
                                            <asp:ListItem Value="Haryana-Other">Haryana-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Himachal Pradesh----</asp:ListItem>
                                            <asp:ListItem Value="Himachal Pradesh-Dalhousie">Dalhousie</asp:ListItem>
                                            <asp:ListItem Value="Himachal Pradesh-Dharmasala">Dharmasala</asp:ListItem>
                                            <asp:ListItem Value="Himachal Pradesh-Kulu/Manali">Kulu/Manali</asp:ListItem>
                                            <asp:ListItem Value="Himachal Pradesh-Shimla">Shimla</asp:ListItem>
                                            <asp:ListItem Value="Himachal Pradesh-Other">Himachal Pradesh-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Jammu and Kashmir----</asp:ListItem>
                                            <asp:ListItem Value="Jammu and Kashmir-Jammu">Jammu</asp:ListItem>
                                            <asp:ListItem Value="Jammu and Kashmir-Srinagar">Srinagar</asp:ListItem>
                                            <asp:ListItem Value="Jammu and Kashmir-Other">Jammu and Kashmir-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Jharkhand----</asp:ListItem>
                                            <asp:ListItem Value="Jharkhand-Bokaro">Bokaro</asp:ListItem>
                                            <asp:ListItem Value="Jharkhand-Dhanbad">Dhanbad</asp:ListItem>
                                            <asp:ListItem Value="Jharkhand-Jamshedpur">Jamshedpur</asp:ListItem>
                                            <asp:ListItem Value="Jharkhand-Ranchi">Ranchi</asp:ListItem>
                                            <asp:ListItem Value="Jharkhand-Other">Jharkhand-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Karnataka----</asp:ListItem>
                                            <asp:ListItem Value="Karnataka-Bengaluru/Bangalore">Bengaluru/Bangalore</asp:ListItem>
                                            <asp:ListItem Value="Karnataka-Belgaum">Belgaum</asp:ListItem>
                                            <asp:ListItem Value="Karnataka-Bellary">Bellary</asp:ListItem>
                                            <asp:ListItem Value="Karnataka-Bidar">Bidar</asp:ListItem>
                                            <asp:ListItem Value="Karnataka-Dharwad">Dharwad</asp:ListItem>
                                            <asp:ListItem Value="Karnataka-Gulbarga">Gulbarga</asp:ListItem>
                                            <asp:ListItem Value="Karnataka-Hubli">Hubli</asp:ListItem>
                                            <asp:ListItem Value="Karnataka-Kolar">Kolar</asp:ListItem>
                                            <asp:ListItem Value="Karnataka-Mangalore">Mangalore</asp:ListItem>
                                            <asp:ListItem Value="Karnataka-Mysoru/Mysore">Mysoru/Mysore</asp:ListItem>
                                            <asp:ListItem Value="Karnataka-Other">Karnataka-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Kerala----</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Calicut">Calicut</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Cochin">Cochin</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Ernakulam">Ernakulam</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Kannur">Kannur</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Kochi">Kochi</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Kollam">Kollam</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Kottayam">Kottayam</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Kozhikode">Kozhikode</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Palakkad">Palakkad</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Palghat">Palghat</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Thrissur">Thrissur</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Trivandrum">Trivandrum</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Other">Kerela-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Madhya Pradesh----</asp:ListItem>
                                            <asp:ListItem Value="Madhya Pradesh-Bhopal">Bhopal</asp:ListItem>
                                            <asp:ListItem Value="Madhya Pradesh-Gwalior">Gwalior</asp:ListItem>
                                            <asp:ListItem Value="Madhya Pradesh-Indore">Indore</asp:ListItem>
                                            <asp:ListItem Value="Madhya Pradesh-Jabalpur">Jabalpur</asp:ListItem>
                                            <asp:ListItem Value="Madhya Pradesh-Ujjain">Ujjain</asp:ListItem>
                                            <asp:ListItem Value="Madhya Pradesh-Other">Madhya Pradesh-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Maharashtra----</asp:ListItem>
                                            <asp:ListItem Value="Maharashtra-Ahmednagar">Ahmednagar</asp:ListItem>
                                            <asp:ListItem Value="Maharashtra-Aurangabad">Aurangabad</asp:ListItem>
                                            <asp:ListItem Value="Maharashtra-Jalgaon">Jalgaon</asp:ListItem>
                                            <asp:ListItem Value="Maharashtra-Kolhapur">Kolhapur</asp:ListItem>
                                            <asp:ListItem Value="Maharashtra-Mumbai">Mumbai</asp:ListItem>
                                            <asp:ListItem Value="Maharashtra-Mumbai Suburbs">Mumbai Suburbs</asp:ListItem>
                                            <asp:ListItem Value="Maharashtra-Nagpur">Nagpur</asp:ListItem>
                                            <asp:ListItem Value="Maharashtra-Nasik">Nasik</asp:ListItem>
                                            <asp:ListItem Value="Maharashtra-Navi Mumbai">Navi Mumbai</asp:ListItem>
                                            <asp:ListItem Value="Maharashtra-Pune">Pune</asp:ListItem>
                                            <asp:ListItem Value="Maharashtra-Solapur">Solapur</asp:ListItem>
                                            <asp:ListItem Value="Maharashtra-Other">Maharashtra-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Manipur----</asp:ListItem>
                                            <asp:ListItem Value="Maniput-Imphal">Imphal</asp:ListItem>
                                            <asp:ListItem Value="Manipur-Other">Manipur-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Meghalaya----</asp:ListItem>
                                            <asp:ListItem Value="Meghalaya-Shillong">Shillong</asp:ListItem>
                                            <asp:ListItem Value="Meghalaya-Other">Meghalaya-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Mizoram----</asp:ListItem>
                                            <asp:ListItem Value="Mizoram-Aizawal">Aizawal</asp:ListItem>
                                            <asp:ListItem Value="Mizoram-Other">Mizoram-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Nagaland----</asp:ListItem>
                                            <asp:ListItem Value="Nagaland-Dimapur">Dimapur</asp:ListItem>
                                            <asp:ListItem Value="Nagaland-Other">Nagaland-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Orissa----</asp:ListItem>
                                            <asp:ListItem Value="Orissa-Bhubaneshwar">Bhubaneshwar</asp:ListItem>
                                            <asp:ListItem Value="Orissa-Cuttak">Cuttak</asp:ListItem>
                                            <asp:ListItem Value="Orissa-Paradeep">Paradeep</asp:ListItem>
                                            <asp:ListItem Value="Orissa-Puri">Puri</asp:ListItem>
                                            <asp:ListItem Value="Orissa-Rourkela">Rourkela</asp:ListItem>
                                            <asp:ListItem Value="Orissa-Other">Orissa-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Punjab----</asp:ListItem>
                                            <asp:ListItem Value="Punjab-Amritsar">Amritsar</asp:ListItem>
                                            <asp:ListItem Value="Punjab-Bathinda">Bathinda</asp:ListItem>
                                            <asp:ListItem Value="Punjab-Chandigarh">Chandigarh</asp:ListItem>
                                            <asp:ListItem Value="Punjab-Jalandhar">Jalandhar</asp:ListItem>
                                            <asp:ListItem Value="Punjab-Ludhiana">Ludhiana</asp:ListItem>
                                            <asp:ListItem Value="Punjab-Mohali">Mohali</asp:ListItem>
                                            <asp:ListItem Value="Punjab-Pathankot">Pathankot</asp:ListItem>
                                            <asp:ListItem Value="Punjab-Patiala">Patiala</asp:ListItem>
                                            <asp:ListItem Value="Punjab-Other">Punjab-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Rajasthan----</asp:ListItem>
                                            <asp:ListItem Value="Rajasthan-Ajmer">Ajmer</asp:ListItem>
                                            <asp:ListItem Value="Rajasthan-Jaipur">Jaipur</asp:ListItem>
                                            <asp:ListItem Value="Rajasthan-Jodhpur">Jodhpur</asp:ListItem>
                                            <asp:ListItem Value="Rajasthan-Kota">Kota</asp:ListItem>
                                            <asp:ListItem Value="Rajasthan-Udaipur">Udaipur</asp:ListItem>
                                            <asp:ListItem Value="">Rajasthan-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Sikkim----</asp:ListItem>
                                            <asp:ListItem Value="Sikkim-Gangtok">Gangtok</asp:ListItem>
                                            <asp:ListItem Value="Sikkim-Other">Sikkim-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Tamil Nadu----</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Chennai">Chennai</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Coimbatore">Coimbatore</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Cuddalore">Cuddalore</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Erode">Erode</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Hosur">Hosur</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Madurai">Madurai</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Nagerkoil">Nagerkoil</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Ooty">Ooty</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Salem">Salem</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Thanjavur">Thanjavur</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Tirunalveli">Tirunalveli</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Trichy">Trichy</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Tuticorin">Tuticorin</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Vellore">Vellore</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Other">Tamil Nadu-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Tripura----</asp:ListItem>
                                            <asp:ListItem Value="Tripura-Agartala">Agartala</asp:ListItem>
                                            <asp:ListItem Value="Tripura-Other">Tripura-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Union Territories----</asp:ListItem>
                                            <asp:ListItem Value="Union Territories-Chandigarh">Chandigarh</asp:ListItem>
                                            <asp:ListItem Value="Union Territories-Dadra & Nagar Haveli-Silvassa">Dadra & Nagar Haveli-Silvassa</asp:ListItem>
                                            <asp:ListItem Value="Union Territories-Daman & Diu">Daman & Diu</asp:ListItem>
                                            <asp:ListItem Value="Union Territories-Delhi">Delhi</asp:ListItem>
                                            <asp:ListItem Value="Union Territories-Pondichery">Pondichery</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Uttar Pradesh----</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Agra">Agra</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Aligarh">Aligarh</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Allahabad">Allahabad</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Bareilly">Bareilly</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Faizabad">Faizabad</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Ghaziabad">Ghaziabad</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Gorakhpur">Gorakhpur</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Kanpur">Kanpur</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Lucknow">Lucknow</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Mathura">Mathura</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Meerut">Meerut</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Moradabad">Moradabad</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Noida">Noida</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Varanasi/Banaras">Varanasi/Banaras</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Other">Uttar Pradesh-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Uttaranchal----</asp:ListItem>
                                            <asp:ListItem Value="Uttaranchal-Dehradun">Dehradun</asp:ListItem>
                                            <asp:ListItem Value="Uttaranchal-Roorkee">Roorkee</asp:ListItem>
                                            <asp:ListItem Value="Uttaranchal-Other">Uttaranchal-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----West Bengal----</asp:ListItem>
                                            <asp:ListItem Value="West Bengal-Asansol">Asansol</asp:ListItem>
                                            <asp:ListItem Value="West Bengal-Durgapur">Durgapur</asp:ListItem>
                                            <asp:ListItem Value="West Bengal-Haldia">Haldia</asp:ListItem>
                                            <asp:ListItem Value="West Bengal-Kharagpur">Kharagpur</asp:ListItem>
                                            <asp:ListItem Value="West Bengal-Kolkatta">Kolkatta</asp:ListItem>
                                            <asp:ListItem Value="West Bengal-Siliguri">Siliguri</asp:ListItem>
                                            <asp:ListItem Value="West Bengal-Other">West Bengal-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Other----</asp:ListItem>
                                            <asp:ListItem Value="Other">Other</asp:ListItem>
                                        </asp:DropDownList></h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" Display="Dynamic" Style="font-weight: bold; color: red" runat="server" ErrorMessage="Select Your City." ControlToValidate="ddlPatientCity"></asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group">
                                    <label>Enter Your Date of Birth</label>
                                    <h1>
                                        <asp:TextBox ID="PatientBirthdate" Style="font-weight: bold; color: black" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox></h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" Display="Dynamic" Style="font-weight: bold; color: red" runat="server" ErrorMessage="Enter Your AGE." ControlToValidate="PatientBirthdate"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label>Enter Your Password</label>
                                    <h1>
                                        <asp:TextBox ID="PatientPassword" Style="font-weight: bold; color: black" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox></h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" Style="font-weight: bold; color: red" runat="server" ErrorMessage="Password Must be Required." ControlToValidate="PatientPassword"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" Style="font-weight: bold; color: red" Display="Dynamic" ControlToValidate="PatientPassword" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}" ErrorMessage="Password must contain: Minimum 8 characters atleast 1 UpperCase Alphabet, 1 LowerCase Alphabet, 1 Number and 1 Special Character"></asp:RegularExpressionValidator>

                                </div>
                                <div class="form-group">
                                    <label>Confirm Your Password</label>
                                    <h1>
                                        <asp:TextBox ID="PatientConfirmPassword" Style="font-weight: bold; color: black" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox></h1>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" Display="Dynamic" Style="font-weight: bold; color: red" ControlToCompare="PatientPassword" ControlToValidate="PatientConfirmPassword" ErrorMessage="Password dose not match"></asp:CompareValidator>

                                </div>

                                <asp:Button ID="btnPatientSignup" CssClass="btn btn-success btn-lg" runat="server" Text="Sign Up" OnClick="btnPatientSignup_Click" />
                                <asp:Label ID="lb2" Style="font-weight: bold; color: red" runat="server"></asp:Label>


                            </div>
                        </div>


                        <!------------------------------------------ Paitent Forgot Page --------------------------------------------->
                        <div id="Forgot" runat="server" class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="just-txt-div">

                                <h2>Forgot Password</h2>

                                <div class="form-group">
                                    <label>Enter Your Email</label>
                                    <h1>
                                        <asp:TextBox ID="ForgotEmail" Style="font-weight: bold; color: black" CssClass="form-control" runat="server"></asp:TextBox></h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" runat="server" Style="font-weight: bold; color: red" ErrorMessage="Enter Your Email_ID." ControlToValidate="ForgotEmail"></asp:RequiredFieldValidator>
                                </div>
                                <asp:Button ID="btnPatientForgotPassword" CssClass="btn btn-success btn-lg" runat="server" Text="Forgot Password" OnClick="btnPatientForgotPassword_Click" />
                                <asp:Label ID="lb3" Style="font-weight: bold; color: red" runat="server"></asp:Label>

                            </div>
                        </div>


                    </div>

                </div>


                <!--------------------------------------------------------------- Doctor Login Page -------------------------------------------------------------------->

                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="min-height: 500px;" id="LoginDoctor" runat="server">
                    <div class="alert alert-info">
                        <asp:Image runat="server" ImageUrl="~/assets/img/Svg/login2.png" />
                        <asp:LinkButton ID="lnkDoctorLoginpage" runat="server" Style="align-content: center" ValidationGroup="lnkDoctorLoginpage" OnClick="lnkDoctorLoginpage_Click">Login</asp:LinkButton>
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                             <asp:Image runat="server" ImageUrl="~/assets/img/Svg/signup.svg" />
                        <asp:LinkButton ID="lnkDoctorSignUppage" runat="server" Style="align-content: center" ValidationGroup="lnkDoctorSignUp" OnClick="lnkDoctorSignUppage_Click">Create New Account</asp:LinkButton>
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                              <asp:Image runat="server" ImageUrl="~/assets/img/Svg/forgot.png" />
                        <asp:LinkButton ID="lnkDocotorForgotpage" runat="server" Style="align-content: center" ValidationGroup="lnkDocotorForgot" OnClick="lnkDocotorForgotpage_Click"> Can't Access Your Account?</asp:LinkButton>
                    </div>

                    <div class="row">

                        <!------------------------------------------ Doctor Login Page --------------------------------------------->
                        <div id="DoctorLoginPage" runat="server" class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="just-txt-div">

                                <h2>Doctor Login</h2>

                                <div class="form-group">
                                    <label>EmailID</label>
                                    <h1>
                                        <asp:TextBox ID="DoctorLoginEmail" Style="font-weight: bold; color: black" CssClass="form-control" runat="server"></asp:TextBox>
                                    </h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" Display="Dynamic" Style="font-weight: bold; color: red" runat="server" ErrorMessage="Enter Your Email_ID." ControlToValidate="DoctorLoginEmail"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <h1>
                                        <asp:TextBox ID="DoctorLoginPassword" Style="font-weight: bold; color: black" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                    </h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" Display="Dynamic" Style="font-weight: bold; color: red" runat="server" ErrorMessage="Password Must be Required." ControlToValidate="DoctorLoginPassword"></asp:RequiredFieldValidator>

                                </div>
                                <asp:Button ID="btnDocotrLoing" CssClass="btn btn-success btn-lg" runat="server" Text="Login" OnClick="btnDocotrLoing_Click" />
                                <asp:Label ID="lb4" Style="font-weight: bold; color: red" runat="server"></asp:Label>

                            </div>
                        </div>


                        <!------------------------------------------ DoctorSign Up Page --------------------------------------------->
                        <div id="DoctorRegistrationPage" runat="server" class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="just-txt-div">

                                <h2>Doctor Sign Up</h2>

                                <div class="form-group">
                                    <label>Enter Your FullName</label>
                                    <h1>
                                        <asp:TextBox ID="DoctorSingupFullName" Style="font-weight: bold; color: black" CssClass="form-control" runat="server"></asp:TextBox>
                                    </h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" Display="Dynamic" Style="font-weight: bold; color: red" runat="server" ErrorMessage="FullName is Required." ControlToValidate="DoctorSingupFullName"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" Display="Dynamic" Style="font-weight: bold; color: red" runat="server" ControlToValidate="DoctorSingupFullName" ValidationExpression="^[a-zA-Z ]{7,20}$" ErrorMessage="Enter only character "></asp:RegularExpressionValidator>

                                </div>
                                <div class="form-group">
                                    <label>Enter Your Email-ID</label>
                                    <h1>
                                        <asp:TextBox ID="DoctorSingupEmailID" Style="font-weight: bold; color: black" CssClass="form-control" runat="server"></asp:TextBox></h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" Display="Dynamic" Style="font-weight: bold; color: red" runat="server" ErrorMessage="Enter Your Email_ID." ControlToValidate="DoctorSingupEmailID"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" Display="Dynamic" Style="font-weight: bold; color: red" runat="server" ControlToValidate="DoctorSingupEmailID" ErrorMessage="Please Enter a Valid EmailID('ex: ravi12@xyz.com')" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                                </div>
                                <div class="form-group">
                                    <label>Enter Your MobileNo</label>
                                    <h1>
                                        <asp:TextBox ID="DoctorSingupMobileNo" Style="font-weight: bold; color: black" CssClass="form-control" runat="server"></asp:TextBox></h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" Display="Dynamic" Style="font-weight: bold; color: red" runat="server" ErrorMessage="Enter Your MobileNo." ControlToValidate="DoctorSingupMobileNo"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" Display="Dynamic" Style="font-weight: bold; color: red" runat="server" ControlToValidate="DoctorSingupMobileNo" ValidationExpression="^[7-9][0-9]{9}$" ErrorMessage="Number You enter is not valid please enter valid number"></asp:RegularExpressionValidator>

                                </div>
                                <div class="form-group">
                                    <label>Enter Your AdharCardNo</label>
                                    <h1>
                                        <asp:TextBox ID="DoctorSingupAdharCardNo" Style="font-weight: bold; color: black" CssClass="form-control" runat="server"></asp:TextBox></h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" Display="Dynamic" Style="font-weight: bold; color: red" runat="server" ErrorMessage="Enter Your AdharCard Number." ControlToValidate="DoctorSingupAdharCardNo"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" Display="Dynamic" Style="font-weight: bold; color: red" runat="server" ControlToValidate="DoctorSingupAdharCardNo" ErrorMessage="AdharCard No :9656 165* 2***" ValidationExpression="^\d{4}\s\d{4}\s\d{4}$"></asp:RegularExpressionValidator>

                                </div>
                                <div class="form-group">
                                    <label>Enter Your Address</label>
                                    <h1>
                                        <asp:TextBox ID="DoctorSingupAddress" Style="font-weight: bold; color: black" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox></h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" Display="Dynamic" Style="font-weight: bold; color: red" runat="server" ErrorMessage="Enter Your Address." ControlToValidate="DoctorSingupAddress"></asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group">
                                    <label>Select Your City</label>
                                    <h1>
                                        <asp:DropDownList ID="ddlDoctorSingupCity" Style="font-weight: bold; color: black" runat="server" CssClass="form-control">
                                            <asp:ListItem Selected="True">----Select----</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Andhra Pradesh----</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-Anantapur">Anantapur</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-Guntakal">Guntakal</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-Guntur">Guntur</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-Hyderabad">Hyderabad/Secunderabad</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-kakinada">kakinada</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-kurnool">kurnool</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-Nellore">Nellore</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-Nizamabad">Nizamabad</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-Rajahmundry">Rajahmundry</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-Tirupati">Tirupati</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-Vijayawada">Vijayawada</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-Visakhapatnam">Visakhapatnam</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-Warangal">Warangal</asp:ListItem>
                                            <asp:ListItem Value="Andhra Pradesh-Other">Andra Pradesh-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Arunachal Pradesh----</asp:ListItem>
                                            <asp:ListItem Value="Arunachal Pradesh-Itanagar">Itanagar</asp:ListItem>
                                            <asp:ListItem Value="Arunachal Pradesh-Other">Arunachal Pradesh-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Assam----</asp:ListItem>
                                            <asp:ListItem Value="Assam-Guwahati">Guwahati</asp:ListItem>
                                            <asp:ListItem Value="Assam-Silchar">Silchar</asp:ListItem>
                                            <asp:ListItem Value="Assam-Other">Assam-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Bihar----</asp:ListItem>
                                            <asp:ListItem Value="Bihar-Bhagalpur">Bhagalpur</asp:ListItem>
                                            <asp:ListItem Value="Bihar-Patna">Patna</asp:ListItem>
                                            <asp:ListItem Value="Bihar-Other">Bihar-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Chhattisgarh----</asp:ListItem>
                                            <asp:ListItem Value="Chhattisgarh-Bhillai">Bhillai</asp:ListItem>
                                            <asp:ListItem Value="Chattisgarh-Bilaspur">Bilaspur</asp:ListItem>
                                            <asp:ListItem Value="Chhattisgarh-Raipur">Raipur</asp:ListItem>
                                            <asp:ListItem Value="Chhattisgarh-Other">Chhattisgarh-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Goa----</asp:ListItem>
                                            <asp:ListItem Value="Goa-Panjim/Panaji">Panjim/Panaji</asp:ListItem>
                                            <asp:ListItem Value="Goa-Vasco Da Gama">Vasco Da Gama</asp:ListItem>
                                            <asp:ListItem Value="Goa-Other">Goa-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Gujarat----</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Ahmedabad">Ahmedabad</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Anand">Anand</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Ankleshwar">Ankleshwar</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Bharuch">Bharuch</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Bhavnagar">Bhavnagar</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Bhuj">Bhuj</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Gandhinagar">Gandhinagar</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Gir">Gir</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Jamnagar">Jamnagar</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Kandla">Kandla</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Porbandar">Porbandar</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Rajkot">Rajkot</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Surat">Surat</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Vadodara/Baroda">Vadodara/Baroda</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Valsad">Valsad</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Vapi">Vapi</asp:ListItem>
                                            <asp:ListItem Value="Gujarat-Other">Gujarat-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Haryana----</asp:ListItem>
                                            <asp:ListItem Value="Haryana-Ambala">Ambala</asp:ListItem>
                                            <asp:ListItem Value="Haryana-Chandigarh">Chandigarh</asp:ListItem>
                                            <asp:ListItem Value="Haryana-Faridabad">Faridabad</asp:ListItem>
                                            <asp:ListItem Value="Haryana-Gurgaon">Gurgaon</asp:ListItem>
                                            <asp:ListItem Value="Haryana-Hisar">Hisar</asp:ListItem>
                                            <asp:ListItem Value="Haryana-Karnal">Karnal</asp:ListItem>
                                            <asp:ListItem Value="Haryana-Kurukshetra">Kurukshetra</asp:ListItem>
                                            <asp:ListItem Value="Haryana-Panipat">Panipat</asp:ListItem>
                                            <asp:ListItem Value="Haryana-Rohtak">Rohtak</asp:ListItem>
                                            <asp:ListItem Value="Haryana-Other">Haryana-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Himachal Pradesh----</asp:ListItem>
                                            <asp:ListItem Value="Himachal Pradesh-Dalhousie">Dalhousie</asp:ListItem>
                                            <asp:ListItem Value="Himachal Pradesh-Dharmasala">Dharmasala</asp:ListItem>
                                            <asp:ListItem Value="Himachal Pradesh-Kulu/Manali">Kulu/Manali</asp:ListItem>
                                            <asp:ListItem Value="Himachal Pradesh-Shimla">Shimla</asp:ListItem>
                                            <asp:ListItem Value="Himachal Pradesh-Other">Himachal Pradesh-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Jammu and Kashmir----</asp:ListItem>
                                            <asp:ListItem Value="Jammu and Kashmir-Jammu">Jammu</asp:ListItem>
                                            <asp:ListItem Value="Jammu and Kashmir-Srinagar">Srinagar</asp:ListItem>
                                            <asp:ListItem Value="Jammu and Kashmir-Other">Jammu and Kashmir-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Jharkhand----</asp:ListItem>
                                            <asp:ListItem Value="Jharkhand-Bokaro">Bokaro</asp:ListItem>
                                            <asp:ListItem Value="Jharkhand-Dhanbad">Dhanbad</asp:ListItem>
                                            <asp:ListItem Value="Jharkhand-Jamshedpur">Jamshedpur</asp:ListItem>
                                            <asp:ListItem Value="Jharkhand-Ranchi">Ranchi</asp:ListItem>
                                            <asp:ListItem Value="Jharkhand-Other">Jharkhand-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Karnataka----</asp:ListItem>
                                            <asp:ListItem Value="Karnataka-Bengaluru/Bangalore">Bengaluru/Bangalore</asp:ListItem>
                                            <asp:ListItem Value="Karnataka-Belgaum">Belgaum</asp:ListItem>
                                            <asp:ListItem Value="Karnataka-Bellary">Bellary</asp:ListItem>
                                            <asp:ListItem Value="Karnataka-Bidar">Bidar</asp:ListItem>
                                            <asp:ListItem Value="Karnataka-Dharwad">Dharwad</asp:ListItem>
                                            <asp:ListItem Value="Karnataka-Gulbarga">Gulbarga</asp:ListItem>
                                            <asp:ListItem Value="Karnataka-Hubli">Hubli</asp:ListItem>
                                            <asp:ListItem Value="Karnataka-Kolar">Kolar</asp:ListItem>
                                            <asp:ListItem Value="Karnataka-Mangalore">Mangalore</asp:ListItem>
                                            <asp:ListItem Value="Karnataka-Mysoru/Mysore">Mysoru/Mysore</asp:ListItem>
                                            <asp:ListItem Value="Karnataka-Other">Karnataka-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Kerala----</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Calicut">Calicut</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Cochin">Cochin</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Ernakulam">Ernakulam</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Kannur">Kannur</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Kochi">Kochi</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Kollam">Kollam</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Kottayam">Kottayam</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Kozhikode">Kozhikode</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Palakkad">Palakkad</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Palghat">Palghat</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Thrissur">Thrissur</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Trivandrum">Trivandrum</asp:ListItem>
                                            <asp:ListItem Value="Kerela-Other">Kerela-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Madhya Pradesh----</asp:ListItem>
                                            <asp:ListItem Value="Madhya Pradesh-Bhopal">Bhopal</asp:ListItem>
                                            <asp:ListItem Value="Madhya Pradesh-Gwalior">Gwalior</asp:ListItem>
                                            <asp:ListItem Value="Madhya Pradesh-Indore">Indore</asp:ListItem>
                                            <asp:ListItem Value="Madhya Pradesh-Jabalpur">Jabalpur</asp:ListItem>
                                            <asp:ListItem Value="Madhya Pradesh-Ujjain">Ujjain</asp:ListItem>
                                            <asp:ListItem Value="Madhya Pradesh-Other">Madhya Pradesh-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Maharashtra----</asp:ListItem>
                                            <asp:ListItem Value="Maharashtra-Ahmednagar">Ahmednagar</asp:ListItem>
                                            <asp:ListItem Value="Maharashtra-Aurangabad">Aurangabad</asp:ListItem>
                                            <asp:ListItem Value="Maharashtra-Jalgaon">Jalgaon</asp:ListItem>
                                            <asp:ListItem Value="Maharashtra-Kolhapur">Kolhapur</asp:ListItem>
                                            <asp:ListItem Value="Maharashtra-Mumbai">Mumbai</asp:ListItem>
                                            <asp:ListItem Value="Maharashtra-Mumbai Suburbs">Mumbai Suburbs</asp:ListItem>
                                            <asp:ListItem Value="Maharashtra-Nagpur">Nagpur</asp:ListItem>
                                            <asp:ListItem Value="Maharashtra-Nasik">Nasik</asp:ListItem>
                                            <asp:ListItem Value="Maharashtra-Navi Mumbai">Navi Mumbai</asp:ListItem>
                                            <asp:ListItem Value="Maharashtra-Pune">Pune</asp:ListItem>
                                            <asp:ListItem Value="Maharashtra-Solapur">Solapur</asp:ListItem>
                                            <asp:ListItem Value="Maharashtra-Other">Maharashtra-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Manipur----</asp:ListItem>
                                            <asp:ListItem Value="Maniput-Imphal">Imphal</asp:ListItem>
                                            <asp:ListItem Value="Manipur-Other">Manipur-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Meghalaya----</asp:ListItem>
                                            <asp:ListItem Value="Meghalaya-Shillong">Shillong</asp:ListItem>
                                            <asp:ListItem Value="Meghalaya-Other">Meghalaya-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Mizoram----</asp:ListItem>
                                            <asp:ListItem Value="Mizoram-Aizawal">Aizawal</asp:ListItem>
                                            <asp:ListItem Value="Mizoram-Other">Mizoram-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Nagaland----</asp:ListItem>
                                            <asp:ListItem Value="Nagaland-Dimapur">Dimapur</asp:ListItem>
                                            <asp:ListItem Value="Nagaland-Other">Nagaland-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Orissa----</asp:ListItem>
                                            <asp:ListItem Value="Orissa-Bhubaneshwar">Bhubaneshwar</asp:ListItem>
                                            <asp:ListItem Value="Orissa-Cuttak">Cuttak</asp:ListItem>
                                            <asp:ListItem Value="Orissa-Paradeep">Paradeep</asp:ListItem>
                                            <asp:ListItem Value="Orissa-Puri">Puri</asp:ListItem>
                                            <asp:ListItem Value="Orissa-Rourkela">Rourkela</asp:ListItem>
                                            <asp:ListItem Value="Orissa-Other">Orissa-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Punjab----</asp:ListItem>
                                            <asp:ListItem Value="Punjab-Amritsar">Amritsar</asp:ListItem>
                                            <asp:ListItem Value="Punjab-Bathinda">Bathinda</asp:ListItem>
                                            <asp:ListItem Value="Punjab-Chandigarh">Chandigarh</asp:ListItem>
                                            <asp:ListItem Value="Punjab-Jalandhar">Jalandhar</asp:ListItem>
                                            <asp:ListItem Value="Punjab-Ludhiana">Ludhiana</asp:ListItem>
                                            <asp:ListItem Value="Punjab-Mohali">Mohali</asp:ListItem>
                                            <asp:ListItem Value="Punjab-Pathankot">Pathankot</asp:ListItem>
                                            <asp:ListItem Value="Punjab-Patiala">Patiala</asp:ListItem>
                                            <asp:ListItem Value="Punjab-Other">Punjab-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Rajasthan----</asp:ListItem>
                                            <asp:ListItem Value="Rajasthan-Ajmer">Ajmer</asp:ListItem>
                                            <asp:ListItem Value="Rajasthan-Jaipur">Jaipur</asp:ListItem>
                                            <asp:ListItem Value="Rajasthan-Jodhpur">Jodhpur</asp:ListItem>
                                            <asp:ListItem Value="Rajasthan-Kota">Kota</asp:ListItem>
                                            <asp:ListItem Value="Rajasthan-Udaipur">Udaipur</asp:ListItem>
                                            <asp:ListItem Value="">Rajasthan-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Sikkim----</asp:ListItem>
                                            <asp:ListItem Value="Sikkim-Gangtok">Gangtok</asp:ListItem>
                                            <asp:ListItem Value="Sikkim-Other">Sikkim-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Tamil Nadu----</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Chennai">Chennai</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Coimbatore">Coimbatore</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Cuddalore">Cuddalore</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Erode">Erode</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Hosur">Hosur</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Madurai">Madurai</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Nagerkoil">Nagerkoil</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Ooty">Ooty</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Salem">Salem</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Thanjavur">Thanjavur</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Tirunalveli">Tirunalveli</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Trichy">Trichy</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Tuticorin">Tuticorin</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Vellore">Vellore</asp:ListItem>
                                            <asp:ListItem Value="Tamil Nadu-Other">Tamil Nadu-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Tripura----</asp:ListItem>
                                            <asp:ListItem Value="Tripura-Agartala">Agartala</asp:ListItem>
                                            <asp:ListItem Value="Tripura-Other">Tripura-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Union Territories----</asp:ListItem>
                                            <asp:ListItem Value="Union Territories-Chandigarh">Chandigarh</asp:ListItem>
                                            <asp:ListItem Value="Union Territories-Dadra & Nagar Haveli-Silvassa">Dadra & Nagar Haveli-Silvassa</asp:ListItem>
                                            <asp:ListItem Value="Union Territories-Daman & Diu">Daman & Diu</asp:ListItem>
                                            <asp:ListItem Value="Union Territories-Delhi">Delhi</asp:ListItem>
                                            <asp:ListItem Value="Union Territories-Pondichery">Pondichery</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Uttar Pradesh----</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Agra">Agra</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Aligarh">Aligarh</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Allahabad">Allahabad</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Bareilly">Bareilly</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Faizabad">Faizabad</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Ghaziabad">Ghaziabad</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Gorakhpur">Gorakhpur</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Kanpur">Kanpur</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Lucknow">Lucknow</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Mathura">Mathura</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Meerut">Meerut</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Moradabad">Moradabad</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Noida">Noida</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Varanasi/Banaras">Varanasi/Banaras</asp:ListItem>
                                            <asp:ListItem Value="Uttar Pradesh-Other">Uttar Pradesh-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Uttaranchal----</asp:ListItem>
                                            <asp:ListItem Value="Uttaranchal-Dehradun">Dehradun</asp:ListItem>
                                            <asp:ListItem Value="Uttaranchal-Roorkee">Roorkee</asp:ListItem>
                                            <asp:ListItem Value="Uttaranchal-Other">Uttaranchal-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----West Bengal----</asp:ListItem>
                                            <asp:ListItem Value="West Bengal-Asansol">Asansol</asp:ListItem>
                                            <asp:ListItem Value="West Bengal-Durgapur">Durgapur</asp:ListItem>
                                            <asp:ListItem Value="West Bengal-Haldia">Haldia</asp:ListItem>
                                            <asp:ListItem Value="West Bengal-Kharagpur">Kharagpur</asp:ListItem>
                                            <asp:ListItem Value="West Bengal-Kolkatta">Kolkatta</asp:ListItem>
                                            <asp:ListItem Value="West Bengal-Siliguri">Siliguri</asp:ListItem>
                                            <asp:ListItem Value="West Bengal-Other">West Bengal-Other</asp:ListItem>
                                            <asp:ListItem disabled="disabled">----Other----</asp:ListItem>
                                            <asp:ListItem Value="Other">Other</asp:ListItem>
                                        </asp:DropDownList></h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" Display="Dynamic" Style="font-weight: bold; color: red" runat="server" ErrorMessage="Select Your City." ControlToValidate="ddlDoctorSingupCity"></asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group">
                                    <label>Enter Your Date of Birth</label>
                                    <h1>
                                        <asp:TextBox ID="DoctorSingupBirthdate" Style="font-weight: bold; color: black" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox></h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" Display="Dynamic" Style="font-weight: bold; color: red" runat="server" ErrorMessage="Enter Your Birthdate." ControlToValidate="DoctorSingupBirthdate"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label>Enter Your Password</label>
                                    <h1>
                                        <asp:TextBox ID="DoctorSingupPassword" Style="font-weight: bold; color: black" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox></h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" Display="Dynamic" Style="font-weight: bold; color: red" runat="server" ErrorMessage="Password Must be Required." ControlToValidate="DoctorSingupPassword"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" Display="Dynamic" Style="font-weight: bold; color: red" ControlToValidate="DoctorSingupPassword" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}" ErrorMessage="Password must contain: Minimum 8 characters atleast 1 UpperCase Alphabet, 1 LowerCase Alphabet, 1 Number and 1 Special Character"></asp:RegularExpressionValidator>

                                </div>
                                <div class="form-group">
                                    <label>Attach Your Designation</label>

                                    <asp:FileUpload ID="DoctorSignupDesignation" runat="server" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" Display="Dynamic" Style="font-weight: bold; color: red" runat="server" ErrorMessage="This field  is Required." ControlToValidate="DoctorSignupDesignation"></asp:RequiredFieldValidator>
                                </div>

                                <asp:Button ID="btnDoctorRegistration" CssClass="btn btn-success btn-lg" runat="server" Text="Sign Up" OnClick="btnDoctorRegistration_Click" />
                                <asp:Label ID="lb5" Style="font-weight: bold; color: red" runat="server"></asp:Label>

                            </div>
                        </div>


                        <!------------------------------------------ Doctor Forgot Page --------------------------------------------->
                        <div id="DoctorForgotPasswordPage" runat="server" class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="just-txt-div">

                                <h2>Doctor Forgot Password</h2>

                                <div class="form-group">
                                    <label>Enter Your Email</label>
                                    <h1>
                                        <asp:TextBox ID="DoctorForgotPassword" Style="font-weight: bold; color: black" CssClass="form-control" runat="server"></asp:TextBox>
                                    </h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" Display="Dynamic" runat="server" Style="font-weight: bold; color: red" ErrorMessage="Enter Your Email_ID." ControlToValidate="DoctorForgotPassword"></asp:RequiredFieldValidator>
                                </div>
                                <asp:Button ID="btnDoctorForgotPassword" CssClass="btn btn-success btn-lg" runat="server" Text="Forgot Passowrod" OnClick="btnDoctorForgotPassword_Click" />
                                <asp:Label ID="lb6" Style="font-weight: bold; color: red" runat="server"></asp:Label>

                            </div>
                        </div>



                    </div>
                </div>



                <div class="row" runat="server" id="Status">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-12 set-div">
                        <div class="just-txt-div text-center">
                            <h3><strong>
                                <asp:Label runat="server" ID="lbStatus" Font-Bold="true" Style="font-weight: bold; color: green"></asp:Label></strong> </h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <script type="text/javascript" src="assets1/data-tables/jquery.dataTables.js"></script>
    <script type="text/javascript" src="assets1/data-tables/DT_bootstrap.js"></script>
    <script src="js/respond.min.js"></script>

    <!--common script for all pages-->
    <script src="js/common-scripts.js"></script>

    <!--script for this page only-->
    <script src="js/editable-table.js"></script>

    <!-- END JAVASCRIPTS -->
    <script>
        jQuery(document).ready(function () {
            EditableTable.init();
        });
      </script>

</asp:Content>
