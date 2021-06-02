<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reset.aspx.cs" Inherits="Reset" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 51%;
            height: 43px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <table align="center" class="style1">
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Label ID="Label2" runat="server" Text="Delete Entry"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label1" runat="server" Text="Mobile:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Button ID="btnReset" runat="server" onclick="btnReset_Click" 
                        Text="Reset" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Cancel" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
