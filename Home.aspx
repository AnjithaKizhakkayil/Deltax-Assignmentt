<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

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
            text-align: center;
        }
        .style3
        {
            width: 8px;
        }
        .style4
        {
            text-align: center;
            height: 20px;
        }
        .style5
        {
            width: 8px;
            height: 20px;
        }
        .style6
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" 
                        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        CellSpacing="2" GridLines="Both"  
                        RepeatDirection="Horizontal" oncancelcommand="DataList1_CancelCommand" 
                        oneditcommand="DataList1_EditCommand" onupdatecommand="DataList1_UpdateCommand">
                        <EditItemTemplate>
                            <table class="style1">
                                <tr>
                                    <td class="style6">
                                        Movie Name</td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" 
                                            Text='<%# Eval("Movie_Name") %>'></asp:TextBox>
                                    </td>
                                    <td rowspan="4">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Image ID="Image3" runat="server" Height="112px" 
                                            Width="100px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style6">
                                        Poster</td>
                                    <td>
                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                        <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style6">
                                        Actors</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                        </asp:DropDownList>
                                        <asp:Button ID="Button2" runat="server" Text="Button" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style6">
                                        Producer</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList2" runat="server">
                                        </asp:DropDownList>
                                        <asp:Button ID="Button3" runat="server" Text="Button" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Year of Release</td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        <asp:ImageButton ID="ImageButton1" runat="server" Height="16px" 
                                            ImageUrl="~/Images/calendar-icon.jpg" Width="30px" />
                                    </td>
                                    <td>
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style6">
                                        &nbsp;</td>
                                    <td>
                                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style6" colspan="2">
                                        <asp:Button ID="Update" runat="server" Text="Update" CommandName="Update" />
                                        &nbsp;
                                        <asp:Button ID="Update0" runat="server" CommandName="Cancel" Text="Cancel" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </EditItemTemplate>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <ItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td class="style2" colspan="2">
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Movie_Name") %>'></asp:Label>
                                    </td>
                                </tr>
            <tr>
                <td class="style2" colspan="2">
                    <asp:Image ID="Image2" runat="server" Height="144px" 
                        ImageUrl='<%# Eval("Images") %>' Width="151px" />
                </td>
            </tr>
                                <tr>
                                    <td class="style2">
                                        Producer</td>
                                    <td class="style3">
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Producer") %>' 
                                            Width="100px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style4">
                                        Actors</td>
                                    <td class="style5">
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Actor") %>' Width="100px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Year Of Releasing</td>
                                    <td class="style3">
                                        &nbsp;
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YearOfReleasing") %>' 
                                            Width="100px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" colspan="2">
                                        <asp:Button ID="Button6" runat="server"  Text="Edit" CommandName="Edit" />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
