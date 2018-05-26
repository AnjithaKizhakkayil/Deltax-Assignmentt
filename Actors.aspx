<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Actors.aspx.cs" Inherits="Actors" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: right;
            width: 557px;
        }
        .style3
        {
            width: 557px;
        }
        .style5
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                Name</td>
            <td>
                <asp:TextBox ID="txtacorname" runat="server" Width="249px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Sex</td>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
                    Checked="True" oncheckedchanged="RadioButton1_CheckedChanged" Text="Male" />
                <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" 
                    oncheckedchanged="RadioButton2_CheckedChanged" Text="Female" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                DOB</td>
            <td>
                <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="21px" 
                    ImageUrl="~/Images/calendar-icon.jpg" onclick="ImageButton1_Click" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                    BorderColor="#999999" CellPadding="4" FirstDayOfWeek="Monday" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                    NextPrevFormat="ShortMonth" onselectionchanged="Calendar1_SelectionChanged" 
                    SelectionMode="DayWeekMonth" ShowGridLines="True" Width="200px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Bio</td>
            <td>
                <asp:TextBox ID="txtbio" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="SAVE" />
&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    style="height: 26px" Text="&lt;&lt;&lt;" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
