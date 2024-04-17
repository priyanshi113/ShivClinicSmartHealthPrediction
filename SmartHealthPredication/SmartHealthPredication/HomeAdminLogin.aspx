<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.Master" AutoEventWireup="true" CodeBehind="HomeAdminLogin.aspx.cs" Inherits="SmartHealthPredication.HomeAdminLogin" %>

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
                        <h1 class="head-line">Security Verification Code</h1>
                        <%--    <asp:LinkButton ID="lnkPatientLogin" CssClass="head-line" runat="server" ValidationGroup="lnkPatientLogin" ForeColor="White">Disease Predication</asp:LinkButton>--%>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- BELOW SLIDESHOW SECTION END-->

    <div class="just-sec">
        <div class="container">

            <!------------------------------------------ Admin Login Security Code Page --------------------------------------------->
            <div id="SecurityCode" runat="server" class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="just-txt-div">

                    <h2>Security Code</h2>

                    <div class="form-group">
                        <label>Enter Security Code</label>
                        <h1>
                            <asp:TextBox ID="tbSecurityCode" runat="server" style="font-weight:bold;color:black" CssClass="form-control" TextMode="Password"></asp:TextBox></h1>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Style="font-weight: bold;" Display="Dynamic" runat="server" ErrorMessage="Password Must be Required." ControlToValidate="tbSecurityCode"></asp:RequiredFieldValidator>

                    </div>
                    <asp:Button ID="btnSecurityCode" runat="server" CssClass="btn btn-success btn-lg" Text="Next" OnClick="btnSecurityCode_Click" />
                </div>
            </div>



            <!------------------------------------------ Admin Login Emil verify Page --------------------------------------------->
            <div id="EmilaVerify" runat="server" class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="just-txt-div">

                    <h2>Email Verification</h2>

                    <div class="form-group">
                        <label>Enter Your Email</label>
                        <h1>
                            <asp:TextBox ID="AdminEmailID" style="font-weight:bold;color:black" CssClass="form-control" runat="server"></asp:TextBox></h1>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Style="font-weight: bold;" Display="Dynamic" runat="server" ErrorMessage="Enter Your Email_ID." ControlToValidate="AdminEmailID"></asp:RequiredFieldValidator>
                    </div>
                    <%-- <div class="form-group">
                        <label>Enter Password </label>
                        <h1>
                            <asp:TextBox ID="AdminPassword" runat="server" Style="font-weight: bold;" CssClass="form-control" TextMode="Password"></asp:TextBox></h1>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" Style="font-weight: bold;" Display="Dynamic" runat="server" ErrorMessage="Password Must be Required." ControlToValidate="AdminPassword"></asp:RequiredFieldValidator>

                    </div>--%>
                    <asp:Button ID="btnAdminLogin" runat="server" CssClass="btn btn-success btn-lg" Text="Verify" OnClick="btnAdminLogin_Click" />
                    <%--<asp:Label ID="lb1" Style="font-weight: bold;" runat="server"></asp:Label>--%>
                </div>
            </div>


            <!------------------------------------------ Admin Login Emil verify Page --------------------------------------------->
            <div id="PasswordVerify" runat="server" class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="just-txt-div">

                    <h2>Password Verification</h2>
                    <div class="form-group">
                        <label>Enter Your Password </label>
                        <h1>
                            <asp:TextBox ID="tbAdminPassword" runat="server" style="font-weight:bold;color:black" CssClass="form-control" TextMode="Password"></asp:TextBox></h1>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" Style="font-weight: bold;" Display="Dynamic" runat="server" ErrorMessage="Password Must be Required." ControlToValidate="tbAdminPassword"></asp:RequiredFieldValidator>

                    </div>
                    <asp:Button ID="btnPasswordVerify" runat="server" CssClass="btn btn-success btn-lg" Text="Verify" OnClick="btnPasswordVerify_Click" />
                    <%--<asp:Label ID="lb1" Style="font-weight: bold;" runat="server"></asp:Label>--%>
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
