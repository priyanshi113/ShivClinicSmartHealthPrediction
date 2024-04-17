<%@ Page Title="" Language="C#" MasterPageFile="~/PaitentMasterPage.Master" AutoEventWireup="true" CodeBehind="PaitentAppointmentScheduleStatus.aspx.cs" Inherits="SmartHealthPredication.PaitentAppointmentScheduleStatus" %>

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

                        <asp:LinkButton ID="lnkDiseasePredicationPredication" CssClass="head-line" runat="server" ValidationGroup="lnkDiseasePredicationPredication" ForeColor="White" OnClick="lnkDiseasePredicationPredication_Click">DiseasePredication Predication</asp:LinkButton>
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
             <asp:LinkButton ID="lnkAppointmentScheduleStatus" CssClass="head-line" runat="server" ValidationGroup="lnkAppointmentScheduleStatus" ForeColor="White" OnClick="lnkAppointmentScheduleStatus_Click">Appointment Schedule Status</asp:LinkButton>

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
                <!---------------------- Doctor Appoinment Details ---------------------->
                <!-- page start-->
                <div class="row" runat="server" id="DoctorAppoinmentList">
                    <div class="col-lg-12">
                        <section class="panel">
                            <header class="panel-heading">
                                -------- Appoinment Schedule --------
               
                         
                            </header>
                            <div class="panel-body">
                                <asp:ListView ID="LstDoctorAppoinmentSchedule" runat="server">
                                    <LayoutTemplate>
                                        <table class="table table-bordered table-striped table-condensed cf">
                                            <thead class="cf">
                                                <tr>
                                                    <th class="numeric">AppointmentID</th>
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
                                            <td class="numeric" data-title="Doctor Name"><%# Eval("DoctorName") %></td>
                                            <td class="numeric" data-title="Symptoms"><%# Eval("Symptoms") %></td>
                                            <td class="numeric" data-title="Symptoms Name"><%# Eval("SymptomsPredictionName") %></td>
                                            <td class="numeric" data-title="Diseases Name"><a href="<%# Eval("image") %>" target="_blank"><%# Eval("DiseasesName") %></a></td>
                                            <td class="numeric" data-title="Request Date"><%# Eval("RequestDate","{0:dd/MM/yyyy}") %></td>
                                            <td class="numeric" data-title="Booking Date"><%# Eval("BookingDate") %></td>
                                            <td class="numeric" data-title="Status"><%# Eval("Status") %></td>

                                            <td class="numeric" data-title="Decline">
                                                <asp:LinkButton class="btn btn-danger" Text="Decline" CommandName="Decline" runat="server" CommandArgument='<%# Eval("AppointmentID")%>' OnClick="Decline_Click"></asp:LinkButton>&nbsp&nbsp
                                          
                                                <asp:LinkButton class="btn btn-success" Text="Give FeedBack" CommandName="FeedBack" runat="server" CommandArgument='<%# Eval("DoctorName")%>' OnClick="FeedBack_Click"></asp:LinkButton></td>

                                        </tr>
                                    </ItemTemplate>
                                </asp:ListView>

                                   <asp:Label ID="lbadd" runat="server" Style="font-weight: bold; color:red"></asp:Label>


                            </div>


                        </section>
                    </div>
                </div>
                <!-- page end-->
            </section>


            <div class="col-lg-6" id="Feedbackform" runat="server">
                <section class="panel">
                    <header class="panel-heading">
                        -------- FeedBack & Rating --------
                         
                    </header>
                    <div class="panel-body">
                        <div class="form-group">
                            <label>Doctor Name:</label>
                            <asp:Label ID="lbdoctorname" runat="server" Style="font-weight: bold; color: #78CD51"></asp:Label>
                        </div>
                        <div class="form-group">
                            <label>Rating</label>
                            <asp:RadioButtonList ID="rbrating" RepeatDirection="Horizontal" RepeatColumns="5" Width="58%" runat="server" Style="font-weight: bold; color: #78CD51">
                                <asp:ListItem Value="1"> 1 Star   </asp:ListItem>
                                <asp:ListItem Value="2"> 2 Star   </asp:ListItem>
                                <asp:ListItem Value="3"> 3 Star   </asp:ListItem>
                                <asp:ListItem Value="4"> 4 Star   </asp:ListItem>
                                <asp:ListItem Value="5"> 5 Star   </asp:ListItem>
                            </asp:RadioButtonList>
                        </div>

                        <div class="form-group">
                            <label>Feed Back</label>
                            <asp:TextBox ID="tbFeedback" runat="server" CssClass="form-control" Style="font-weight: bold; color:black " TextMode="MultiLine"></asp:TextBox><br />
                        </div>
                        <asp:Button ID="btnFeedback" runat="server" class="btn btn-info" Text="Submit" OnClick="btnFeedback_Click" />
                        <asp:Label ID="lbFeed" runat="server" Style="font-weight: bold; color: #78CD51"></asp:Label>


                    </div>
                </section>
            </div>


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
