<%@ Page Title="" Language="C#" MasterPageFile="~/PaitentMasterPage.Master" AutoEventWireup="true" CodeBehind="PaitentDiseasePredication.aspx.cs" Inherits="SmartHealthPredication.PaitentDiseasePredication" %>

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
                        <asp:LinkButton ID="lnkDiseasePredicationPredication" CssClass="head-line" runat="server" ValidationGroup="lnkDiseasePredicationPredication" ForeColor="White" OnClick="lnkDiseasePredicationPredication_Click">DiseasePredication Predication</asp:LinkButton>
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <asp:LinkButton ID="lnkAppointmentScheduleStatus" CssClass="head-line" runat="server" ValidationGroup="lnkAppointmentScheduleStatus" ForeColor="White" OnClick="lnkAppointmentScheduleStatus_Click">Appointment Schedule Status</asp:LinkButton>

                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- BELOW SLIDESHOW SECTION END-->

    <!-- TAG HOME SECTION END-->
    <div class="just-sec">


        <div class="container">

            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="min-height: 500px;" id="SymptomQuestion" runat="server">
                    <div class="alert alert-info">
                        <h1 class="tag-home">Please Select Symptoms <strong>(Any  one Sympton)</strong></h1>
                        <h4>
                            <asp:RadioButtonList ID="rbList" AutoPostBack="true" Width="100%" RepeatColumns="3" runat="server" DataSourceID="SqlDataSource3" DataTextField="SymptomsName" DataValueField="SymptomsID" OnSelectedIndexChanged="rbList_SelectedIndexChanged"></asp:RadioButtonList>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:SmartHealthPredicationConnectionString %>' SelectCommand="SELECT [SymptomsID], [SymptomsName] FROM [tblSymptomsList] WHERE ([Status] = @Status)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="Active" Name="Status" Type="String"></asp:Parameter>
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </h4>
                        <br />


                        <br />
                        <asp:Label runat="server" ID="lb1" Font-Bold="true" Font-Size="Larger"></asp:Label><br />
                        <br />
                        <asp:RadioButtonList ID="rbSymptomList" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Vertical" Width="100%" AutoPostBack="true" RepeatColumns="3" DataTextField="SymptomsPredictionName" DataValueField="SymptomsPredictionID" OnSelectedIndexChanged="rbSymptomList_SelectedIndexChanged"></asp:RadioButtonList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:SmartHealthPredicationConnectionString %>' SelectCommand="SELECT [SymptomsPredictionID], [SymptomsPredictionName] FROM [tblSymptomsPrediction] WHERE ([SymptomsID] = @SymptomsID)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="rbList" PropertyName="SelectedValue" DefaultValue=" rbList.SelectedValue" Name="SymptomsID" Type="Int32"></asp:ControlParameter>
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        <%-- <b>Are You  Experiencing any of these  Symptom too?</b><br />--%>
                    </div>
                </div>
            </div>

            <%--        <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="min-height: 500px;" id="Div1" runat="server">
                    <div class="alert alert-info">

                        <asp:Repeater ID="rpSearchDetail" runat="server">
                            <ItemTemplate>
                                <h3><b><%# Eval("DiseasesName") %></b></h3>
                                <div class="col-md-4 ">

                                    <div class="portfolio-item awesome mix_all" data-cat="awesome">
                                        <img src="/assets/img/DiseasesPrediction/<%# Eval("images") %>" class="img-responsive " alt="" />
                                        <div class="overlay">
                                            <p>
                                                <span>Image Orinagal Size: 750x500
                                                </span>

                                                PROJECT TITLE HERE
                                            </p>
                                            <a class="preview btn btn-info " title="Image Title Here" href="assets/img/DiseasesPrediction/<%# Eval("images") %>"><i class="fa fa-plus fa-2x"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>--%>

            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="min-height: 500px;" id="Prediction" runat="server">
                    <div class="alert alert-info">
                        <%--  <b>AS Per Your Selection System Prediction Diseases is:-</b><br />--%>

                        <asp:Label runat="server" ID="lb2" Font-Bold="true"></asp:Label><br />
                        <br />
                        <asp:Label runat="server" ID="lbDiseases" Font-Bold="true" Font-Size="Larger"></asp:Label>
                        <br />

                        <asp:Image runat="server" class="img-responsive " ID="img" /><br />

                    </div>
                </div>
            </div>
        </div>

    </div>

    <div class="container ">
        <div class="row" runat="server" id="DoctorList">

            <asp:Repeater ID="rpSearchDetail" runat="server">
                <ItemTemplate>
                    <div class="col-lg-10 col-md-10 col-sm-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-12 set-div">
                        <div class="just-txt-div text-center">
                            <h3><strong>-------- Available Doctor --------</strong> </h3>
                            <p>
                                <b>Doctor Name:</b> <strong style="font-family: 'Times New Roman', Times, serif"><%# Eval("UserFullName") %></strong><br />
                                <b>Email ID:</b> <strong style="font-family: 'Times New Roman', Times, serif"><%# Eval("EmailID") %></strong><br />
                                <b>Address:</b> <strong style="font-family: 'Times New Roman', Times, serif"><%# Eval("Address") %></strong><br />
                                <b>City:</b> <strong style="font-family: 'Times New Roman', Times, serif"><%# Eval("City") %></strong>
                            </p>

                            <asp:LinkButton class="btn btn-success btn-lg" CommandName="AddAppointment" runat="server" CommandArgument='<%# Eval("UserID")%>' OnCommand="AddAppointment_Command">Take Appointment</asp:LinkButton>

                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

            <%--  <p>
                        Lorem Lorem ipsum dolor sit amet <strong>Lorem ipsum dolor sit ametLorem </strong>ipsum dolor sit ametLorem 
                ipsum dolor sit ametLorem ipsum dolor 
                      <br />
                        <br />
                    </p>
                    <a class="btn btn-info btn-lg" href="#">Read More Here</a>
                    &nbsp;&nbsp;
                    <a class="btn btn-success btn-lg" href="#">Download Now </a>--%>
        </div>



        <div class="row" runat="server" id="Status">
            <div class="col-lg-10 col-md-10 col-sm-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-12 set-div">
                <div class="just-txt-div text-center">
                    <h3><strong>
                        <asp:Label runat="server" ID="lbAppointment" Font-Bold="true"></asp:Label></strong> </h3>
                </div>
            </div>
        </div>
    </div>
    <!--SET-DIV SECTION END-->

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
