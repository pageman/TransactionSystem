<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="ISPROG3_Final.WebForm3" %>

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
            height: 54px;
        }
        .style30
        {
            text-align: left;
        }
        .style35
        {
            text-align: center;
            width: 4px;
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
                                <li><a href="WebForm4.aspx">Account</a></li>
                                <li><a href="WebForm6.aspx">Inventory</a></li>
                                <li class="active"><a href="WebForm3.aspx">Point of Sales</a></li>
                                <li><a href="WebForm15.aspx">Audit Trail</a></li>
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
                                <h3><asp:Label ID="Label2" runat="server" Text="Point Of Sales" 
                            Font-Size="Larger"></asp:Label></h3>
                            </td>
                            <td class="style1">
                                <h3>
                                <asp:Label ID="Label3" runat="server" Text="Pending Orders" 
                            Font-Size="Larger"></asp:Label></h3>
                            </td>
                        </tr>
                        <tr>
                            <td class="style35">
                                &nbsp;</td>
                            <td class="style30">
                                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                                    GridLines="None" Width="298px" 
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
                                &nbsp;
                                </td>
                            <td class="style30">
                                <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
                                    GridLines="None" onselectedindexchanged="GridView2_SelectedIndexChanged" 
                                    Width="630px">
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
                                </td>
                        </tr>
                        <tr>
                            <td class="style35">
                                &nbsp;</td>
                            <td class="style30">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                <asp:Button ID="Button4" runat="server" Text="Count" Width="75px" 
                                    onclick="Button4_Click" />
                                <br />
&nbsp;<asp:GridView ID="GridView3" runat="server">
                                </asp:GridView>
                            </td>
                            <td class="style30">
                                <asp:Button ID="Button5" runat="server" Text="Approve Order" Width="157px" 
                                    onclick="Button5_Click" />
                                <br />
                                <asp:Button ID="Button6" runat="server" Text="Hold Order" Width="157px" 
                                    onclick="Button6_Click" />
                                <br />
                                <asp:Button ID="Button7" runat="server" Text="Order Settled" Width="157px" 
                                    onclick="Button7_Click" />
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
