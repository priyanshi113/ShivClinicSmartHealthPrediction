<%@ Page Title="" Language="C#" MasterPageFile="~/DoctorMasterPage.Master" AutoEventWireup="true" CodeBehind="AddNewSymptoms.aspx.cs" Inherits="SmartHealthPredication.AddNewSymptoms" %>

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

    <div class="just-sec">


        <div class="container">

            <div class="row">
                <!--------------------------------------------------------------- Select Symptom Page -------------------------------------------------------------------->

                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="min-height: 500px;" id="SelectSymptom" runat="server">
                    <div class="alert alert-info">
                        <h1 class="tag-home">Select Symptom <strong>(To Add in Existing List)</strong></h1>
                        <h4>
                            <asp:RadioButtonList ID="rbList" AutoPostBack="true" RepeatDirection="Vertical" Width="100%" RepeatColumns="3" runat="server" DataSourceID="SqlDataSource3" DataTextField="SymptomsName" DataValueField="SymptomsID" OnSelectedIndexChanged="rbList_SelectedIndexChanged"></asp:RadioButtonList>

                            <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:SmartHealthPredicationConnectionString %>' ProviderName="System.Data.SqlClient" SelectCommand="SELECT [SymptomsID], [SymptomsName] FROM [tblSymptomsList] WHERE ([Status] = @Status)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="Active" Name="Status" Type="String"></asp:Parameter>
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                            <asp:Label runat="server" ID="lb1"></asp:Label><br />
                            <br />
                            <asp:RadioButtonList ID="rbSymptomList" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Vertical" Width="100%" AutoPostBack="true" RepeatColumns="3" DataTextField="SymptomsPredictionName" DataValueField="SymptomsPredictionID" OnSelectedIndexChanged="rbSymptomList_SelectedIndexChanged"></asp:RadioButtonList>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:SmartHealthPredicationConnectionString %>' SelectCommand="SELECT [SymptomsPredictionID], [SymptomsPredictionName] FROM [tblSymptomsPrediction] WHERE ([SymptomsID] = @SymptomsID)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="rbList" PropertyName="SelectedValue" DefaultValue=" rbList.SelectedValue" Name="SymptomsID" Type="Int32"></asp:ControlParameter>

                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                            <asp:Label runat="server" ID="lb2"></asp:Label><br />
                            <br />
                            <asp:RadioButtonList ID="rbDiseasesSelect" runat="server" DataSourceID="SqlDataSource4" RepeatDirection="Vertical" Width="100%" AutoPostBack="true" RepeatColumns="3" DataTextField="DiseasesName" DataValueField="DiseasesID" OnSelectedIndexChanged="rbDiseasesSelect_SelectedIndexChanged"></asp:RadioButtonList>

                            <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:SmartHealthPredicationConnectionString %>' SelectCommand="SELECT [DiseasesID], [DiseasesName] FROM [tblDiseases]"></asp:SqlDataSource>
                            <%--   <asp:CheckBoxList ID="cbDiseasesSelect" runat="server" DataSourceID="SqlDataSource2" RepeatDirection="Horizontal" AutoPostBack="true" Width="100%" RepeatColumns="3" DataTextField="DiseasesName" DataValueField="DiseasesID"></asp:CheckBoxList>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:SmartHealthPredicationConnectionString %>' SelectCommand="SELECT [DiseasesID], [DiseasesName] FROM [tblDiseases]"></asp:SqlDataSource>
                            --%>              </h4>
                    </div>


                    <div class="row">
                        <!------------------------------------------ ADD Symptoms Name Page --------------------------------------------->
                        <div id="SymptomsName" runat="server" class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="just-txt-div">

                                <h2>Add New Symptoms</h2>

                                <div class="form-group">
                                    <label>Enter Symptoms Name</label>
                                    <h1>
                                        <asp:TextBox ID="tbSymptomsName" style="font-weight:bold;color:black"  CssClass="form-control" runat="server"></asp:TextBox></h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Symptoms Name is Required." ControlToValidate="tbSymptomsName"></asp:RequiredFieldValidator>
                                </div>
                                <asp:Button ID="btnNext" CssClass="btn btn-success btn-lg" runat="server" Text="Next" OnClick="btnNext_Click" />
                                <asp:Label ID="lbSymptomsName" Font-Bold="true" runat="server"></asp:Label>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <!------------------------------------------ ADD Symptoms List Page --------------------------------------------->
                        <div id="SymptomsList" runat="server" class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="just-txt-div">

                                <h2>Add Symptoms List of:-<asp:Label ID="lbSymptomName" runat="server" Font-Underline="true" Font-Bold="true"></asp:Label></h2>

                                <div class="form-group">
                                    <label>Enter New Symptoms</label>
                                    <h1>
                                        <asp:TextBox ID="tbSymptoms1" style="font-weight:bold;color:black"  CssClass="form-control" runat="server" placeholder="If Multiple Name use ('Fever-BodyAche')"></asp:TextBox></h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" runat="server" ErrorMessage="Enter At least one Symptoms." ControlToValidate="tbSymptoms1"></asp:RequiredFieldValidator>
                                </div>
                                <asp:Button ID="btnAddList" CssClass="btn btn-success btn-lg" runat="server" Text="Add List" OnClick="btnAddList_Click" />
                                <asp:Label ID="lbnext" Font-Bold="true" runat="server"></asp:Label>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <!------------------------------------------ ADD Diseases Name Page --------------------------------------------->
                        <div id="DiseasesName" runat="server" class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="just-txt-div">

                                <h2>Add Diseases Name of This Symptoms:-<asp:Label ID="lbSymptomList" runat="server" Font-Underline="true" Font-Bold="true"></asp:Label></h2>

                                <div class="form-group">
                                    <label>Enter New Diseases</label>
                                    <h1>
                                        <asp:TextBox ID="tbDiseasesName1" style="font-weight:bold;color:black"  CssClass="form-control" runat="server" placeholder="If Multiple Name use ('Pharyngitis/Throat Infection')"></asp:TextBox></h1>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" runat="server" ErrorMessage="Enter At least one Diseases." ControlToValidate="tbDiseasesName1"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:FileUpload ID="DoctorAddDiseases" runat="server" />
                                </div>
                                <asp:Button ID="btnDiseases" CssClass="btn btn-success btn-lg" runat="server" Text="Add Diseases" OnClick="btnDiseases_Click" />
                                <asp:Label ID="lbDiseases" Font-Bold="true" runat="server"></asp:Label>

                            </div>
                        </div>

                    </div>



                    <div class="row">
                        <!------------------------------------------ ADD Confirm  Page --------------------------------------------->
                        <div id="Confirm" runat="server" class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="just-txt-div">

                                <h2>Are you soure Add New Diseases</h2>
                                <asp:Label ID="lbSymptom1" Font-Bold="true" runat="server"></asp:Label><br />
                                <asp:Label ID="lbSymptom2" Font-Bold="true" runat="server"></asp:Label><br />
                                <asp:Label ID="lbSymptom3" Font-Bold="true" runat="server"></asp:Label><br /><br />
                                <asp:Button ID="btnConfirm" CssClass="btn btn-success btn-lg" runat="server" Text="Confirm" OnClick="btnConfirm_Click" />
                                <asp:Label ID="lbconfirm" Font-Bold="true" runat="server"></asp:Label>

                            </div>
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
