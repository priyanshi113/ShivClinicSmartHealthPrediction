<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminPaitentList.aspx.cs" Inherits="SmartHealthPredication.AdminPaitentList" %>

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
    <link href="css/table-responsive.css" rel="stylesheet" />
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
                        <asp:LinkButton ID="lnkPatientDetails" CssClass="head-line" runat="server" ValidationGroup="lnkPatientDetails" ForeColor="White" OnClick="lnkPatientDetails_Click">Paitent Details</asp:LinkButton>
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        <asp:LinkButton ID="lnkDoctorDetails" CssClass="head-line" runat="server" ValidationGroup="lnkDoctorDetails" ForeColor="White" OnClick="lnkDoctorDetails_Click">Doctor Details</asp:LinkButton>


                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- BELOW SLIDESHOW SECTION END-->


    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            <section id="no-more-tables">
                <!---------------------- Paitent Details ---------------------->
                <!-- page start-->
                <div class="row" runat="server" id="PaitentDetails">
                    <div class="col-lg-12">
                        <section class="panel">
                            <header class="panel-heading">
                                -------- Patient List --------
                         
                            </header>
                            <div class="panel-body">
                                <%--   <section id="no-more-tables">--%>
                                <asp:ListView ID="LstPatient" runat="server">
                                    <LayoutTemplate>
                                        <table class="table table-bordered table-striped table-condensed cf">
                                            <thead class="cf">
                                                <tr>
                                                    <th class="numeric">PaitentID</th>
                                                    <th class="numeric">Paitent Name</th>
                                                    <th class="numeric">Email-ID</th>
                                                    <th class="numeric">Mobile No</th>
                                                    <th class="numeric">AdharCard No</th>
                                                    <th class="numeric">Address</th>
                                                    <th class="numeric">City</th>
                                                    <th class="numeric">DateOfBirth</th>
                                                    <th class="numeric">Status</th>
                                                    <th class="numeric">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr id="itemPlaceHolder" runat="server">
                                                </tr>
                                            </tbody>
                                        </table>
                                    </LayoutTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td class="numeric" data-title="PaitentID"><%# Eval("UserID") %></td>
                                            <td class="numeric" data-title="Paitent Name"><%# Eval("PaitentName") %></td>
                                            <td class="numeric" data-title="Email-ID"><%# Eval("EmailID") %></td>
                                            <td class="numeric" data-title="Mobile No"><%# Eval("MobileNumber") %></td>
                                            <td class="numeric" data-title="PrAdharCard Noice"><%# Eval("AdharCardNumber") %></td>
                                            <td class="numeric" data-title="Address"><%# Eval("Address") %></td>
                                            <td class="numeric" data-title="City"><%# Eval("City") %></td>
                                            <td class="numeric" data-title="DateOfBirth"><%# Eval("DateOfBirth","{0:dd/MM/yyyy}") %></td>
                                            <td class="numeric" data-title="Status"><%# Eval("Status") %></td>
                                            <td class="numeric" data-title="Action">
                                                <asp:LinkButton class="btn btn-danger" Text="Blocked" CommandName="Blocked" runat="server" CommandArgument='<%# Eval("UserID")%>' OnClick="Block_Click"></asp:LinkButton></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:ListView>
                                <%-- </section>--%>
                            </div>
                        </section>
                    </div>
                </div>
                <!-- page end-->
                <!---------------------- Paitent Appoinment Details ---------------------->
                <!-- page start-->
                <div class="row" runat="server" id="PatientAppoinmentList">
                    <div class="col-lg-12">
                        <section class="panel">
                            <header class="panel-heading">
                                -------- Patient Appoinment List --------
               
                         
                            </header>
                            <div class="panel-body">

                                <asp:ListView ID="LstPatientAppoinment" runat="server">
                                    <LayoutTemplate>
                                        <%-- <table class="table table-striped table-hover table-bordered" id="editable-sample">
                                        --%>
                                        <table class="table table-bordered table-striped table-condensed cf">
                                            <thead class="cf">
                                                <tr>
                                                    <th class="numeric">AppointmentID</th>
                                                    <th class="numeric">Patient Name</th>
                                                    <th class="numeric">Doctor Name</th>
                                                    <th class="numeric">Symptoms</th>
                                                    <th class="numeric">Symptoms Name</th>
                                                    <th class="numeric">Diseases Name</th>
                                                    <th class="numeric">Request Date</th>
                                                    <th class="numeric">Appoinment Fix Date</th>
                                                    <th class="numeric">Status</th>
                                                    <th class="numeric">Decline</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr id="itemPlaceHolder" runat="server">
                                                </tr>
                                            </tbody>
                                        </table>
                                    </LayoutTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td class="numeric" data-title="AppointmentID"><%# Eval("AppointmentID") %></td>
                                            <td class="numeric" data-title="Patient Name"><%# Eval("PatientName") %></td>
                                            <td class="numeric" data-title="Doctor Name"><%# Eval("DoctorName") %></td>
                                            <td class="numeric" data-title="Symptoms"><%# Eval("Symptoms") %></td>
                                            <td class="numeric" data-title="Symptoms Name"><%# Eval("SymptomsPredictionName") %></td>
                                            <td class="numeric" data-title="Diseases Name"><a href="<%# Eval("image") %>" target="_blank"><%# Eval("DiseasesName") %></a></td>
                                            <td class="numeric" data-title="Request Date"><%# Eval("RequestDate","{0:dd/MM/yyyy}") %></td>
                                            <td class="numeric" data-title="Booking Date"><%# Eval("BookingDate") %></td>
                                            <td class="numeric" data-title="Status"><%# Eval("Status") %></td>

                                            <td class="numeric" data-title="Decline">
                                                <asp:LinkButton class="btn btn-danger" Text="Decline" CommandName="Decline" runat="server" CommandArgument='<%# Eval("AppointmentID")%>' OnClick="Decline_Click"></asp:LinkButton></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:ListView>

                            </div>
                        </section>
                    </div>
                </div>
                <!-- page end-->


                <!---------------------- Doctor Details ---------------------->
                <!-- page start-->
                <div class="row" runat="server" id="DoctorDetails">
                    <div class="col-lg-12">
                        <section class="panel">
                            <header class="panel-heading">
                                -------- Doctor Sign Up Request List --------
                         
                            </header>
                            <div class="panel-body">

                                <asp:ListView ID="LstDoctor" runat="server">
                                    <LayoutTemplate>
                                        <table class="table table-bordered table-striped table-condensed cf">
                                            <thead class="cf">
                                                <tr>
                                                    <th class="numeric">DoctorID</th>
                                                    <th class="numeric">Doctor Name</th>
                                                    <th class="numeric">Email-ID</th>
                                                    <th class="numeric">Mobile No</th>
                                                    <th class="numeric">AdharCard No</th>
                                                    <th class="numeric">Address</th>
                                                    <th class="numeric">City</th>
                                                    <th class="numeric">DateOfBirth</th>
                                                    <th class="numeric">Certificate</th>
                                                    <th class="numeric">Status</th>
                                                    <th class="numeric">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr id="itemPlaceHolder" runat="server">
                                                </tr>
                                            </tbody>
                                        </table>
                                    </LayoutTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td class="numeric" data-title="PaitentID"><%# Eval("UserID") %></td>
                                            <td class="numeric" data-title="Paitent Name"><%# Eval("PaitentName") %></td>
                                            <td class="numeric" data-title="Email-ID"><%# Eval("EmailID") %></td>
                                            <td class="numeric" data-title="Mobile No"><%# Eval("MobileNumber") %></td>
                                            <td class="numeric" data-title="PrAdharCard Noice"><%# Eval("AdharCardNumber") %></td>
                                            <td class="numeric" data-title="Address"><%# Eval("Address") %></td>
                                            <td class="numeric" data-title="City"><%# Eval("City") %></td>
                                            <td class="numeric" data-title="DateOfBirth"><%# Eval("DateOfBirth","{0:dd/MM/yyyy}") %></td>
                                            <td class="numeric" data-title="Designation">
                                                <a href="<%# Eval("Designation") %>" target="_blank">Click here</a></td>
                                            <td class="numeric" data-title="Status"><%# Eval("Status") %></td>
                                            <td class="numeric" data-title="Action">
                                                <asp:LinkButton class="btn btn-success" Text="Accept" CommandName="Accept" runat="server" CommandArgument='<%# Eval("UserID")%>' OnClick="Accept_Click"></asp:LinkButton>&nbsp&nbsp&nbsp
                                                <asp:LinkButton class="btn btn-danger" Text="Decline" CommandName="Decline" runat="server" CommandArgument='<%# Eval("UserID")%>' OnClick="Accept_Click"></asp:LinkButton></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:ListView>

                            </div>
                        </section>
                    </div>
                </div>
                <!-- page end-->
                <!---------------------- Doctor Appoinment Details ---------------------->
                <!-- page start-->
                <div class="row" runat="server" id="DoctorAppoinmentList">
                    <div class="col-lg-12">
                        <section class="panel">
                            <header class="panel-heading">
                                -------- Doctor Appoinment Schedule --------
               
                         
                            </header>
                            <div class="panel-body">

                                <asp:ListView ID="LstDoctorAppoinmentSchedule" runat="server">
                                    <LayoutTemplate>
                                        <table class="table table-bordered table-striped table-condensed cf">
                                            <thead class="cf">
                                                <tr>
                                                    <th class="numeric">AppointmentID</th>
                                                    <th class="numeric">Doctor Name</th>
                                                    <th class="numeric">Patient Name</th>
                                                    <th class="numeric">Symptoms</th>
                                                    <th class="numeric">Symptoms Name</th>
                                                    <th class="numeric">Diseases Name</th>
                                                    <th class="numeric">Request Date</th>
                                                    <th class="numeric">Appoinment Fix Date</th>
                                                    <th class="numeric">Status</th>
                                                    <th class="numeric">Decline</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr id="itemPlaceHolder" runat="server">
                                                </tr>
                                            </tbody>
                                        </table>
                                    </LayoutTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td class="numeric" data-title="AppointmentID"><%# Eval("AppointmentID") %></td>
                                            <td class="numeric" data-title="Doctor Name"><%# Eval("DoctorName") %></td>
                                            <td class="numeric" data-title="Patient Name"><%# Eval("PatientName") %></td>
                                            <td class="numeric" data-title="Symptoms"><%# Eval("Symptoms") %></td>
                                            <td class="numeric" data-title="Symptoms Name"><%# Eval("SymptomsPredictionName") %></td>
                                            <td class="numeric" data-title="Diseases Name"><a href="<%# Eval("image") %>" target="_blank"><%# Eval("DiseasesName") %></a></td>
                                            <td class="numeric" data-title="Request Date"><%# Eval("RequestDate","{0:dd/MM/yyyy}") %></td>
                                            <td class="numeric" data-title="Booking Date"><%# Eval("BookingDate") %></td>
                                            <td class="numeric" data-title="Status"><%# Eval("Status") %></td>

                                            <td class="numeric" data-title="Decline">
                                                <asp:LinkButton class="btn btn-danger" Text="Decline" CommandName="Decline" runat="server" CommandArgument='<%# Eval("AppointmentID")%>' OnClick="Decline_Click"></asp:LinkButton></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:ListView>

                            </div>
                        </section>
                    </div>
                </div>
                <!-- page end-->
            </section>
        </section>
    </section>
    <!--main content end-->

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
