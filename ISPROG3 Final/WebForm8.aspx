<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="ISPROG3_Final.WebForm8" %>

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
        .style1
        {
            text-align: left;
            }
        .style35
        {
            text-align: center;
            width: 4px;
        }
        .style36
        {
            text-align: center;
            height: 54px;
            width: 99px;
        }
        .style37
        {
            text-align: center;
            }
        .style38
        {
            text-align: left;
            width: 44px;
        }
        .style43
        {
            text-align: center;
            width: 4px;
            height: 20px;
        }
        .style44
        {
            text-align: left;
            width: 44px;
            height: 20px;
        }
        .style45
        {
            text-align: center;
            width: 99px;
            height: 20px;
        }
        .style46
        {
            text-align: left;
            height: 20px;
            width: 225px;
        }
        .style47
        {
            text-align: center;
            width: 4px;
            height: 11px;
        }
        .style48
        {
            text-align: left;
            width: 44px;
            height: 11px;
        }
        .style49
        {
            text-align: center;
            width: 99px;
            height: 11px;
        }
        .style50
        {
            text-align: left;
            height: 11px;
            width: 225px;
        }
        .style51
        {
            text-align: left;
            font-size: small;
        }
        .style52
        {
            text-align: left;
            width: 236px;
            font-size: small;
        }
        .style53
        {
            text-align: left;
            height: 20px;
            width: 236px;
        }
        .style54
        {
            text-align: left;
            height: 11px;
            width: 236px;
        }
        .style55
        {
            font-size: small;
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
                                <li><a href="WebForm5.aspx">Account</a></li>
                                <li class="active"><a href="WebForm8.aspx">Order</a></li>
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
                                <br />
                                </article>
                            </div>
                    <table style="width:100%;">
                        <tr>
                            <td class="style1" colspan="2">
                                <h3><asp:Label ID="Label2" runat="server" Text="Products" 
                            Font-Size="Larger"></asp:Label></h3>
                            </td>
                            <td class="style36">
                                &nbsp;</td>
                            <td class="style51">
                                <h3><asp:Label ID="Label3" runat="server" Text="Orders" 
                            Font-Size="Larger" Font-Bold="True" CssClass="style55"></asp:Label></h3></td>
                            <td class="style52">
                                order products here for delivery, see the order status, if approved expect the 
                                product within 48hrs, also don&#39;t forget your order no. for reference.</td>
                        </tr>
                        <tr>
                            <td class="style43">
                                </td>
                            <td class="style44">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                <asp:Button ID="Button4" runat="server" Text="Search" Width="75px" 
                                    onclick="Button4_Click" CausesValidation="False" />
                                </td>
                            <td class="style45">
                                <br />
                                <asp:Label ID="Label5" runat="server" Text="Product Name:"></asp:Label>
                                <br />
                            </td>
                            <td class="style46">
                                <br />
                                <asp:Label ID="Label6" runat="server" 
                                    Text="Select Product at the lower left side"></asp:Label>
                                <br />
                            </td>
                            <td class="style53">
                                <br />
                                <asp:Button ID="Button5" runat="server" Text="Order" Width="77px" 
                                    onclick="Button5_Click" />
                                <asp:Button ID="Button6" runat="server" Text="Change" Width="77px" 
                                    onclick="Button6_Click" />
                                <asp:Button ID="Button7" runat="server" Text="Cancel" Width="77px" 
                                    onclick="Button7_Click" CausesValidation="False" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style47">
                                </td>
                            <td class="style48">
                                &nbsp;</td>
                            <td class="style49">
                                <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
                            </td>
                            <td class="style50">
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                            <td class="style54">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="TextBox3" ErrorMessage="Cannot have 0 quantity" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                        </tr>
                        <tr>
                            <td class="style47">
                                &nbsp;</td>
                            <td class="style48">
                                &nbsp;</td>
                            <td class="style49">
                                <asp:Label ID="Label7" runat="server" Text="Contact"></asp:Label>
                            </td>
                            <td class="style50">
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                            <td class="style54">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="TextBox4" ErrorMessage="Cannot have 0 quantity" 
                                    ForeColor="Red">Input Contact</asp:RequiredFieldValidator>
                                </td>
                        </tr>
                        <tr>
                            <td class="style47">
                                &nbsp;</td>
                            <td class="style48">
                                &nbsp;</td>
                            <td class="style49">
                                <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
                            </td>
                            <td class="style50">
                                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td class="style54">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="TextBox5" ErrorMessage="Cannot have 0 quantity" 
                                    ForeColor="Red">Input Address to deliver</asp:RequiredFieldValidator>
                                </td>
                        </tr>
                        <tr>
                            <td class="style35">
                                &nbsp;</td>
                            <td class="style38">
                                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                                    GridLines="None" Width="340px" 
                                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:CommandField ShowSelectButton="True" />
                                    </Columns>
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>
                            </td>
                            <td class="style37" colspan="3">
                                <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
                                    GridLines="None" Width="609px" 
                                    onselectedindexchanged="GridView2_SelectedIndexChanged">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:CommandField ShowSelectButton="True" />
                                    </Columns>
                                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                    <SortedDescendingHeaderStyle BackColor="#820000" />
                                </asp:GridView>
                                <br />
                                <br />
                            </td>
                        </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="block"></div>
        </section>
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
