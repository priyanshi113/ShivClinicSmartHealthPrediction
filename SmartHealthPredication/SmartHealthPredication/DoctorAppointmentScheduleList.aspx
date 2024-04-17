<%@ Page Title="" Language="C#" MasterPageFile="~/DoctorMasterPage.Master" AutoEventWireup="true" CodeBehind="DoctorAppointmentScheduleList.aspx.cs" Inherits="SmartHealthPredication.DoctorAppointmentScheduleList" %>

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

                        <asp:LinkButton ID="lnkPatientAppointmentList" CssClass="head-line" runat="server" ValidationGroup="lnkPatientAppointmentList" ForeColor="White" OnClick="lnkPatientAppointmentList_Click">Patient Appointment List</asp:LinkButton>
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <asp:LinkButton ID="lnkAddNewSymptoms" CssClass="head-line" runat="server" ValidationGroup="lnkAddNewSymptoms" ForeColor="White" OnClick="lnkAddNewSymptoms_Click">Add New Symptoms</asp:LinkButton>

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
                <!-- page start-->
                <div class="row">
                    <div class="col-lg-12">
                        <section class="panel">
                            <header class="panel-heading">
                                -------- Patient Appointment List --------
               
                            </header>
                            <div class="panel-body">

                                <label>Select Appoinment Date:</label>
                                <asp:TextBox runat="server" ID="tbdate" Style="font-weight: bold;" TextMode="DateTimeLocal"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" runat="server" Style="font-weight: bold;" ControlToValidate="tbdate" ErrorMessage="This Field is Required"></asp:RequiredFieldValidator>
                                <asp:Label ID="lbstatus" runat="server" Display="Dynamic"></asp:Label>
                                <asp:ListView ID="LstPatientAppoinment" runat="server">
                                    <LayoutTemplate>
                                        <table class="table table-bordered table-striped table-condensed cf">
                                            <thead class="cf">
                                                <tr>
                                                    <th class="numeric">Patient Name</th>
                                                    <th class="numeric">Symptoms</th>
                                                    <th class="numeric">Symptoms Name</th>
                                                    <th class="numeric">Diseases Name</th>
                                                    <th class="numeric">Request Date</th>
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
                                            <td class="numeric" data-title="Patient Name"><%# Eval("PatientName") %></td>
                                            <td class="numeric" data-title="Symptoms"><%# Eval("Symptoms") %></td>
                                            <td class="numeric" data-title="Symptoms Name"><%# Eval("SymptomsPredictionName") %></td>
                                            <td class="numeric" data-title="Diseases Name"><%# Eval("DiseasesName") %></td>
                                            <td class="numeric" data-title="Request Date"><%# Eval("RequestDate","{0:dd/MM/yyyy}") %></td>
                                            <td class="numeric" data-title="Status"><%# Eval("Status") %></td>

                                            <td class="numeric" data-title="Action">
                                                <asp:LinkButton class="btn btn-success" Text="Accept" CommandName="Accept" runat="server" CommandArgument='<%# Eval("AppointmentID")%>' OnClick="Accept_Click"></asp:LinkButton>&nbsp&nbsp&nbsp 

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
                            <p><b>DoctorName:</b><%# Eval("DoctorName") %></p>
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
