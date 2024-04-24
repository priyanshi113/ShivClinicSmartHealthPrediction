<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SmartHealthPredication.Home" %>

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

    <!-- MENU SECTION END-->
    <div id="slideshow-sec">
        <div id="carousel-div" class="carousel slide" data-ride="carousel">

            <div class="carousel-inner">
                <div class="item active">

                    <img src="assets/img/4.jpg" alt="" />
                    <div class="carousel-caption">
                        <h1 class="wow slideInLeft" data-wow-duration="5s">Disease Prediction</h1>
                        <h2 class="wow slideInRight" data-wow-duration="5s">Select Your Symptoms</h2>
                    </div>

                </div>
                <div class="item">
                    <img src="assets/img/2.jpg" alt="" />
                    <div class="carousel-caption">
                        <h1 class="wow slideInLeft" data-wow-duration="5s">Select Docotor</h1>
                        <h2 class="wow slideInRight" data-wow-duration="5s">Send Request For Appointment</h2>
                    </div>
                </div>
                <div class="item">
                    <img src="assets/img/3.jpg" alt="" />
                    <div class="carousel-caption">
                        <h1 class="wow slideInLeft" data-wow-duration="5s">Visit To The Doctor </h1>
                        <h2 class="wow slideInRight" data-wow-duration="5s">After Appoinment Fix, Notified Via Mail</h2>
                    </div>

                </div>
            </div>
            <!--INDICATORS-->
            <ol class="carousel-indicators">
                <li data-target="#carousel-div" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-div" data-slide-to="1"></li>
                <li data-target="#carousel-div" data-slide-to="2"></li>
            </ol>
            <!--PREVIUS-NEXT BUTTONS-->
            <a class="left carousel-control" href="#carousel-div" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#carousel-div" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
    </div>
    <!-- SLIDESHOW SECTION END-->
    <div class="below-slideshow">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="txt-block">


                        <i class="fa fa-globe fa-4x"></i>
                        <h4>ACCESS ANYWHERE</h4>
                        <p>
                            Can be used by each and every person anywhere using internet.
                        </p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="txt-block">


                        <i class="fa fa-yelp fa-4x"></i>
                        <h4>EASY TO USE</h4>
                        <p>
                            Will provide good graphics so that user can easily communicate with the system.
                        </p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="txt-block">


                        <i class="fa fa-location-arrow fa-4x"></i>
                        <h4>INSTANT GUIDANCE</h4>
                        <p>
                            Will provide instant guidance about health issues.
                        </p>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- BELOW SLIDESHOW SECTION END-->
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <h1 class="tag-home">It might have happened so many times that you or someone yours need doctors help immediately, but they are not available due to some reason. The Health Prediction system will fullfill your issues and will give you efficinet results </h1>
                <hr />
            </div>
        </div>
    </div>
    <!-- TAG HOME SECTION END-->


    <!-- PARALLAX LIKE SECTION END-->
    <div class="just-sec">


        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <h1 class="head-line" style="font-family: 'Comic Sans MS'">WE WILL PROVIDE </h1>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="just-txt-div">


                        <i class="fa fa-search-plus fa-3x"></i>
                        <h4><b>DISEASE PREDICTION </b></h4>
                        <p>
                            will provide disease prediction by answering the questions provided by the system 
                        </p>

                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="just-txt-div">


                        <i class="fa fa-user-md fa-3x"></i>
                        <h4><b>PROFESSIONAL PROFILE</b></h4>
                        <p>
                            users can take a online appointment from professional Doctor for better treatment.  
                        </p>

                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="just-txt-div">


                        <i class="fa fa-hospital-o fa-3x"></i>
                        <h4><b>MEDICAL FACILITIES</b></h4>
                        <p>
                            system will provide creating a new mediclaim facilities 
                        </p>

                    </div>
                </div>
            </div>

        </div>
    </div>
    <!--JUST SECTION END-->
    <div class="container ">
        <div class="row ">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <h1 class="head-line">Paitent Feed Back</h1>
                <br />
            </div>
        </div>
        <div class="row slides" runat="server" id="Status">

            <asp:Repeater ID="rpSearchDetail" runat="server">
                <ItemTemplate>

                    <div class="col-lg-10 col-md-10 col-sm-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-12 set-div">

                        <div class="just-txt-div text-center">

                            <p><b>--FEED BACK--</b></p>
                            <p><b>DoctorName:</b ><%# Eval("DoctorName") %></p>
                            <p><b>PatientName:</b>  <%# Eval("PatientName") %></p>
                            <p><b>Rating out of 5 Star:</b> <%# Eval("Rating") %></p>
                            <p><b>Feedback:</b>  <%# Eval("Feedback") %></p>
                            <!--PREVIUS-NEXT BUTTONS-->


                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
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
