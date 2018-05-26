<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add_New_Movies.aspx.cs" Inherits="Add_New_Movies" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 10px;
        }
        .style2
        {
            text-align: right;
            width: 529px;
            height: 45px;
        }
        .style3
        {
            width: 529px;
        }
        .style4
        {
            text-align: right;
            width: 529px;
            height: 26px;
        }
        .style6
        {
            height: 23px;
            text-align: center;
        }
        .style7
        {
            width: 10px;
        }
        .style9
        {
            height: 45px;
            width: 169px;
        }
        .style10
        {
            width: 95%;
        }
        .style11
        {
            width: 529px;
            text-align: right;
        }
        .style13
        {
            height: 26px;
            width: 169px;
        }
        .style14
        {
            width: 169px;
        }
        .style15
        {
            text-align: right;
            width: 529px;
            height: 28px;
        }
        .style16
        {
            height: 28px;
            width: 169px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        &nbsp;
        <br />
    
        <table class="style1" >
            <tr>
                <td class="style11">
                    Movie Name</td>
                <td class="style14">
                    &nbsp;<asp:TextBox ID="txtname" runat="server" Width="301px"></asp:TextBox>
                </td>
                <td class="style7" rowspan="7">
                    <asp:Image ID="Image1" runat="server" Height="222px" Width="182px" />
                </td>
            </tr>
            <tr>
                <td class="style11">
                    Poster</td>
                <td class="style14">
                    <table class="style10">
                        <tr>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                            <td>
                                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Upload" />
                            </td>
                            <td>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Actor</td>
                <td class="style9">
                    <table class="style1">
                        <tr>
                            <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="198px" AutoPostBack="True">
                    </asp:DropDownList>
                    &nbsp;
                            </td>
                            <td>
                    <asp:Button ID="btnActorAdd" runat="server" style="text-align: center" 
                        Text="New" onclick="btnActorAdd_Click" Width="45px" />
                    &nbsp;&nbsp;
                            </td>
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
                </td>
            </tr>
            <tr>
                <td class="style15">
                    Producer</td>
                <td class="style16">
                    <table class="style10">
                        <tr>
                            <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" Width="198px" AutoPostBack="True">
                    </asp:DropDownList>
                            </td>
                            <td>
                    <asp:Button ID="btnproAd" runat="server" style="text-align: center" Text="New" 
                        onclick="btnproAd_Click" Width="45px" />
                    &nbsp;&nbsp;
                            </td>
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
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Year Of Releasing</td>
                <td class="style13">
                    <table class="style10">
                        <tr>
                            <td>
                    <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
                            </td>
                            <td>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="22px" 
                        ImageUrl="~/Images/calendar-icon.jpg" onclick="ImageButton1_Click" 
                        Width="21px" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style14">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                        BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" 
                        Font-Size="9pt" ForeColor="Black" Height="149px" NextPrevFormat="ShortMonth" 
                        onselectionchanged="Calendar1_SelectionChanged" Width="179px" 
                        FirstDayOfWeek="Monday" SelectedDate="05/25/2018 23:59:59">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                            Height="8pt" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" 
                            Font-Size="12pt" ForeColor="White" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="style6" colspan="2">
                    <asp:Button ID="Button1" runat="server" style="text-align: center" Text="Add" 
                        onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
