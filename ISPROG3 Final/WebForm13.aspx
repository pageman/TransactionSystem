<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm13.aspx.cs" Inherits="ISPROG3_Final.WebForm13" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="screen">   
    <script src="js/jquery-1.6.3.min.js" type="text/javascript"></script>
    <script src="js/cufon-yui.js" type="text/javascript"></script>
    <script src="js/cufon-replace.js" type="text/javascript"></script>
    <script src="js/NewsGoth_400.font.js" type="text/javascript"></script>
	<script src="js/NewsGoth_700.font.js" type="text/javascript"></script>
    <script src="js/NewsGoth_Lt_BT_italic_400.font.js" type="text/javascript"></script>
    <script src="js/Vegur_400.font.js" type="text/javascript"></script> 
    <script src="js/FF-cash.js" type="text/javascript"></script>
    <script src="js/jquery.featureCarousel.js" type="text/javascript"></script>     
    <script type="text/javascript">
        $(document).ready(function () {
            $("#carousel").featureCarousel({
                autoPlay: 7000,
                trackerIndividual: false,
                trackerSummation: false,
                topPadding: 50,
                smallFeatureWidth: .9,
                smallFeatureHeight: .9,
                sidePadding: 0,
                smallFeatureOffset: 0
            });
        });
    </script>
    <script type="text/javascript">
        tday = new Array("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday");
        tmonth = new Array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December");

        function GetClock() {
            d = new Date();
            nday = d.getDay();
            nmonth = d.getMonth();
            ndate = d.getDate();
            nyear = d.getYear();
            nhour = d.getHours();
            nmin = d.getMinutes();
            nsec = d.getSeconds();

            if (nyear < 1000) nyear = nyear + 1900;

            if (nhour == 0) { ap = " AM"; nhour = 12; }
            else if (nhour <= 11) { ap = " AM"; }
            else if (nhour == 12) { ap = " PM"; }
            else if (nhour >= 13) { ap = " PM"; nhour -= 12; }

            if (nmin <= 9) { nmin = "0" + nmin; }
            if (nsec <= 9) { nsec = "0" + nsec; }


            document.getElementById('clockbox').innerHTML = "" + tday[nday] + ", " + tmonth[nmonth] + " " + ndate + ", " + nyear + " " + nhour + ":" + nmin + ":" + nsec + ap + "";
            setTimeout("GetClock()", 1000);
        }
        window.onload = GetClock;
    </script>
	<style type="text/css">
        .style2
        {
            width: 210px;
            text-align: left;
        }
        .style3
        {
            text-align: left;
        }
        .style4
        {
            width: 145px;
            text-align: center;
            height: 18px;
        }
        .style5
        {
            width: 210px;
            text-align: left;
            height: 18px;
        }
        .style6
        {
            text-align: left;
            height: 18px;
        }
        .style8
        {
            text-align: center;
            height: 18px;
            width: 104px;
        }
        .style9
        {
            text-align: center;
            width: 104px;
        }
        .style10
        {
            width: 210px;
            text-align: left;
        }
        .style13
        {
            width: 145px;
            text-align: center;
        }
        .style14
        {
            text-align: right;
            }
        .style15
        {
            width: 145px;
            text-align: center;
            height: 26px;
        }
        .style16
        {
            width: 210px;
            text-align: left;
            height: 26px;
        }
        .style17
        {
            text-align: center;
            width: 104px;
            height: 26px;
        }
        .style18
        {
            text-align: left;
            height: 26px;
        }
        .style20
        {
            text-align: left;
            }
        .style22
        {
            text-align: left;
            height: 18px;
            width: 238px;
        }
        .style23
        {
            text-align: left;
            height: 26px;
            width: 238px;
        }
        .style27
        {
            width: 94px;
            text-align: left;
            height: 18px;
        }
        .style28
        {
            width: 94px;
            text-align: left;
            height: 26px;
        }
        .style30
        {
            width: 94px;
            text-align: left;
        }
        </style>
    <form id="form1" runat="server">
</head>
<body id="page1">
	<div class="extra">
    	<!--==============================header=================================-->
        <header>
        	<div class="row-top">
            	<div class="main">
                	<div class="wrapper">
                    	<h1><a href="index.html"></a></h1>
                    </div>
                </div>
            </div>
            <div class="menu-row">
            	<div class="menu-bg">
                    <div class="main">
                        <nav class="indent-left">
                            <ul class="menu wrapper">
                                <li><a href="WebForm11.aspx">Account</a></li>
                                <li class="active"><a href="WebForm13.aspx">Inventory</a></li>
                                <li><a href="WebForm7.aspx">Log Out</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="row-bot">
            	<div class="center-shadow">
                	<div class="carousel-container">
                      <div id="carousel">
                       
        <!--==============================content================================-->
            <br />
                    <center>
                        <div id="clockbox">
                        </div>
                    </center>
                    <br />
            <div class="main">
                <div class="container_12">
                    <div class="wrapper">
                        <article class="grid_8">
                                <h3>
                                <asp:Label ID="Label1" runat="server" Text="Product Inventory" Font-Bold="True"></asp:Label></h3>
                                </article>
                            </div>
                    <table style="width:100%;">
                        <tr>
                            <td class="style13">
                                <asp:Label ID="Label2" runat="server" Text="Product Name"></asp:Label>
                            </td>
                            <td class="style2">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                <asp:Button ID="Button4" runat="server" Text="Find" 
                                    onclick="Button4_Click" Width="55px" />
                            </td>
                            <td class="style14" colspan="4" rowspan="13">
                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="664px" 
                                    ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:CommandField />
                                    <asp:CommandField ShowSelectButton="True" />
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />

<SortedAscendingCellStyle BackColor="#F5F7FB"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#6D95E1"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#E9EBEF"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#4870BE"></SortedDescendingHeaderStyle>
                            </asp:GridView>
&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style13">
                                <asp:Label ID="Label3" runat="server" Text="Stock on Hand"></asp:Label>
                            </td>
                            <td class="style2">
                                <asp:TextBox ID="TextBox2" runat="server" style="margin-bottom: 0px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style13">
                                <asp:Label ID="Label4" runat="server" Text="Stock Received"></asp:Label>
                            </td>
                            <td class="style10">
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label10" runat="server" Text="Description"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style13">
                                <asp:Label ID="Label11" runat="server" Text="Price"></asp:Label>
                            </td>
                            <td class="style2">
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label12" runat="server" Text="Number Sold"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label13" runat="server" Text="Expiry Date"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style13">
                                &nbsp;</td>
                            <td class="style2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style13">
                                &nbsp;</td>
                            <td class="style2">
                                <asp:Button ID="Button1" runat="server" Text="Add" 
                                    onclick="Button1_Click" Width="55px" />
                                <asp:Button ID="Button2" runat="server" Text="Edit" onclick="Button2_Click" 
                                    Width="55px" />
                                <asp:Button ID="Button3" runat="server" Text="Delete" onclick="Button3_Click" 
                                    Width="55px" />
                                </td>
                        </tr>
                        <tr>
                            <td class="style13">
                                &nbsp;</td>
                            <td class="style2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style13">
                                &nbsp;</td>
                            <td class="style2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style15">
                                &nbsp;</td>
                            <td class="style16">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style15">
                                </td>
                            <td class="style16">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style15">
                                &nbsp;</td>
                            <td class="style16">
                                &nbsp;</td>
                            <td class="style17">
                                &nbsp;</td>
                            <td class="style23">
                                &nbsp;</td>
                            <td class="style28">
                                &nbsp;</td>
                            <td class="style18">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style13">
                                &nbsp;</td>
                            <td class="style2">
                                &nbsp;</td>
                            <td class="style9">
                                &nbsp;</td>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style30">
                                &nbsp;</td>
                            <td class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style13">
                                &nbsp;</td>
                            <td class="style2">
                                &nbsp;</td>
                            <td class="style9">
                                &nbsp;</td>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style30">
                                &nbsp;</td>
                            <td class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style13">
                                &nbsp;</td>
                            <td class="style2">
                                &nbsp;</td>
                            <td class="style9">
                                &nbsp;</td>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style30">
                                &nbsp;</td>
                            <td class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                </td>
                            <td class="style5">
                                </td>
                            <td class="style8">
                                </td>
                            <td class="style22">
                                </td>
                            <td class="style27">
                                </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style13">
                                &nbsp;</td>
                            <td class="style2">
                                &nbsp;</td>
                            <td class="style9">
                                &nbsp;</td>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style30">
                                &nbsp;</td>
                            <td class="style3">
                                &nbsp;</td>
                        </tr>
                    </table>
                    </div>
                </div>
            </div>
            <div class="block">
                <table style="width:100%;">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                        </div>
    </div>
                        </div>
                      </div>
    				</div>
                </div>
            </div>
        </header>
        
	<script type="text/javascript">	    Cufon.now(); </script>
    </form>
</body>
</html>

