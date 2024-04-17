<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.Master" AutoEventWireup="true" CodeBehind="HomeContactUs.aspx.cs" Inherits="SmartHealthPredication.HomeContactUs" %>

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


                        <h1 class="head-line">Contact Us</h1>

                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- BELOW SLIDESHOW SECTION END-->
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <h1 class="tag-home">Please fill the following details given below if you have any query.<br />
                    <strong>Our Team will contact you soon</strong>.</h1>
                <hr />
            </div>
        </div>
    </div>
    <!-- TAG HOME SECTION END-->
    <div class="just-sec">


        <div class="container">

            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="just-txt-div">


                        <h2>Contact Address : </h2>
                        <h4>
                            <p>
                                Deep Nagar Society, Bardoli 
                            <br />
                                Pin: 394601.
                            </p>
                            <p>
                                <strong>Call: </strong>+91-9327961543
                            </p>
                            <p>
                                <strong>E-mail: </strong>shivclinic60@gmail.com
                            </p>
                        </h4>
                        <%--  <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sagittis felis dolor vitae.
                            </p>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sagittis felis dolor vitae.
                            </p>--%>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="just-txt-div">
                        <div class="form-group">
                            <label>Enter Your Email</label>
                            <asp:TextBox ID="tbContactEmailID" Style="font-weight: bold; color: black" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbContactEmailID" Display="Dynamic" Style="font-weight: bold; color:red" ErrorMessage="Email Id is Required."></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>Enter Subject </label>
                            <asp:TextBox ID="tbContactSubject" Style="font-weight: bold; color: black" CssClass="form-control" runat="server"></asp:TextBox>                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbContactSubject" Display="Dynamic" Style="font-weight: bold; color:red" ErrorMessage="Subject is Required."></asp:RequiredFieldValidator>
                        </div>                 
                        <div class="form-group">
                            <label>Enter query/Feedback</label>
                            <asp:TextBox ID="tbContactQuery" Style="font-weight: bold; color: black" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>          
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbContactQuery" Display="Dynamic" Style="font-weight: bold; color:red" ErrorMessage="query/Feedback is Required."></asp:RequiredFieldValidator>
                        </div>
                        </div>
                        <asp:Button ID="btnContactSendQuery" runat="server" CssClass="btn btn-success btn-lg"  Text="SEND QUERY" OnClick="btnSubmit_Click" />
                        <asp:Label runat="server" ID="lb1"></asp:Label>
                    </div>
                </div>

            </div>

        </div>
    </div>
    <!--JUST SECTION END-->
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
