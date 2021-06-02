<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Get.aspx.cs" Inherits="GetEncryptString" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 64%;
            height: 26px;
        }
        .style3
        {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center">
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" 
                        style="font-weight: 700" Text="Get Encrypted String"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label1" runat="server" Text="Enter MPIN:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMPIN" runat="server" BorderColor="#00CC00" Font-Bold="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label3" runat="server" Text="Enter Encrypted String:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEncrypted" runat="server" BorderColor="Red" 
                        Font-Bold="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Encrypt" />
&nbsp;<asp:Button ID="btnHash" runat="server" onclick="btnHash_Click" Text="Hash" />
&nbsp;<asp:Button ID="btnDecrypt" runat="server" BorderColor="Red" Font-Bold="True" 
                        onclick="btnDecrypt_Click" Text="Decrypt" />
&nbsp;<asp:Button ID="btnMPIN" runat="server" BorderColor="#00CC00" Font-Bold="True" 
                        ForeColor="Black" onclick="btnMPIN_Click" Text="Hash&amp;Encrypt" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Label ID="lblResult" runat="server" style="text-align: center"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table align="center">
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large" 
                        style="font-weight: 700" Text="Get Session &amp; Cust Id"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label5" runat="server" Text="Enter Mobile:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        Text="Get ID" />
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label6" runat="server" Text="Session ID: "></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblSession" runat="server" CssClass="style3"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label7" runat="server" Text="Cust ID:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblCustId" runat="server" CssClass="style3"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label8" runat="server" Text="Device ID: "></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblDeviceId" runat="server" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label9" runat="server" Text="Device Type: "></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblDeviceType" runat="server" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
