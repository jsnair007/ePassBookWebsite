<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 46%;
            height: 24px;
        }
        .style3
        {
            text-align: center;
        }
        .style4
        {
            width: 46%;
            height: 39px;
        }
        .style1
        {
            width: 44%;
            height: 34px;
        }
        .style5
        {
            width: 61%;
            height: 46px;
        }
        .style6
        {
            text-align: left;
        }
        .style7
        {
            width: 42%;
            height: 62px;
        }
        .style8
        {
            width: 50%;
            height: 38px;
        }
        .style9
        {
            width: 49%;
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style2">
            <tr>
                <td class="style3">
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                        Text="ENROLLMENT" />
                </td>
                <td style="text-align: center">
                    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                        Text="CHANGE MPIN" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Button ID="Button5" runat="server" Text="LOGIN" onclick="Button5_Click1" />
                </td>
                <td style="text-align: center">
                    <asp:Button ID="Button6" runat="server" Text="ACCOUNTS" 
                        onclick="Button6_Click" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Button ID="Button12" runat="server" onclick="Button12_Click" 
                        style="text-align: center" Text="TRANSACTIONS" />
                </td>
                <td style="text-align: center">
                    <asp:Button ID="btnReset" runat="server" onclick="btnReset_Click" BorderColor="Lime" Font-Bold="True" 
                        Text="Reset" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Button ID="btnMessage" runat="server" onclick="btnMessage_Click" 
                        Text="MESSAGE" />
                </td>
                <td style="text-align: center">
                    <asp:Button ID="Button16" runat="server" onclick="Button16_Click" 
                        Text="LOGOUT" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Button ID="Button21" runat="server" Text="BANNERS" 
                        onclick="Button21_Click1" />
                </td>
                <td style="text-align: center">
                    <asp:Button ID="Button22" runat="server" Text="REQUEST" 
                        onclick="Button22_Click" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Button ID="Button13" runat="server" BorderColor="Lime" Font-Bold="True" 
                        onclick="Button13_Click" Text="Utility" />
                </td>
                <td style="text-align: center">
                    &nbsp;</td>
            </tr>
            </table>
        <br />
        <asp:Panel ID="PanelEnrollment" runat="server" style="text-align: center" 
            Visible="False">
            <asp:Label ID="Label4" runat="server" Text="Enrollment"></asp:Label>
            <br />
            <table class="style4" align="center">
                <tr>
                    <td colspan="2">
                        <table align="center" class="style1">
                            <tr>
                                <td>
                                    <asp:Label ID="Label11" runat="server" Text="OP Code :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtOPCode" runat="server">ENROLLMENT</asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Mobile Number :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtMob" runat="server">9480491824</asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label12" runat="server" Text="Country Code:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCountryCode" runat="server">91</asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text="Device ID :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtToken" runat="server">A1</asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text="Device Type :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtType" runat="server">android</asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right">
                                    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                                        Text="Submit" />
                                </td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" Text="Clear" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
        </asp:Panel>
        <br />
        <asp:Panel ID="PanelChangeMpin" runat="server" Visible="False">
            <br />
            <table class="style5" align="center">
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Label ID="Label5" runat="server" Text="Change MPIN"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table align="center" class="style1">
                            <tr>
                                <td>
                                    <asp:Label ID="Label13" runat="server" Text="Country Code:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCountryCodePIN" runat="server">91</asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text="Mobile:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtMobPIN" runat="server">9480491824</asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text="Device Id: "></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDeviceIDPIN" runat="server">A1</asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Text="Device Type:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDeviceTypePIN" runat="server">android</asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label9" runat="server" Text="Old MPIN: "></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtOldPIN" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label10" runat="server" Text="NewMPIN: "></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNewPin" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right">
                                    <asp:Button ID="btnChangeMPIN" runat="server" onclick="btnChangeMPIN_Click" 
                                        Text="Submit" />
                                </td>
                                <td>
                                    <asp:Button ID="Button7" runat="server" Text="Clear" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
        </asp:Panel>
        <br />
        <asp:Panel ID="PanelLogin" runat="server">
            <br />
            <table align="center" class="style5">
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Label ID="Label14" runat="server" Text="Login"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table align="center" class="style1">
                            <tr>
                                <td>
                                    <asp:Label ID="Label17" runat="server" Text="Device Id: "></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDeviceIDlOGIN" runat="server">A1</asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label18" runat="server" Text="Device Type:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDeviceTypeLogin" runat="server">android</asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label19" runat="server" Text="MPIN: "></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtMPINLogin" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right">
                                    <asp:Button ID="btnLogin" runat="server"  
                                        Text="Submit" onclick="btnLogin_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="Button8" runat="server" Text="Clear" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
        </asp:Panel>
        <br />
        <asp:Panel ID="PanelAccounts" runat="server" style="text-align: center">
            <table align="center" class="style5">
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Label ID="Label20" runat="server" Text="Accounts"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table align="center" class="style1">
                            <tr>
                                <td>
                                    <asp:Label ID="Label21" runat="server" Text="Session ID:"></asp:Label>
                                </td>
                                <td class="style6">
                                    <asp:TextBox ID="txtSessionAccounts" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label22" runat="server" Text="Device Type:"></asp:Label>
                                </td>
                                <td class="style6">
                                    <asp:TextBox ID="txtDeviceTypeAccounts" runat="server">android</asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label23" runat="server" Text="Device ID:"></asp:Label>
                                </td>
                                <td class="style6">
                                    <asp:TextBox ID="txtDeviceIDAccounts" runat="server">1234</asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label24" runat="server" Text="Cust ID:"></asp:Label>
                                </td>
                                <td class="style6">
                                    <asp:TextBox ID="txtCustIdAccounts" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right">
                                    <asp:Button ID="btnAccounts" runat="server"  
                                        Text="Submit" onclick="btnAccounts_Click" />
                                </td>
                                <td style="text-align: left">
                                    <asp:Button ID="Button10" runat="server" Text="Clear" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <asp:Panel ID="PanelTransactions" runat="server">
            <br />
            <table align="center" class="style5">
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Label ID="Label25" runat="server" Text="Transactions"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table align="center" class="style1">
                            <tr>
                                <td>
                                    <asp:Label ID="Label26" runat="server" Text="Session ID:"></asp:Label>
                                </td>
                                <td class="style6">
                                    <asp:TextBox ID="txtSessionTxn" runat="server">123</asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label30" runat="server" Text="Account No: "></asp:Label>
                                </td>
                                <td class="style6">
                                    <asp:TextBox ID="txtForacidTxn" runat="server">133101021000326</asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label31" runat="server" Text="Account Type:"></asp:Label>
                                </td>
                                <td class="style6">
                                    <asp:TextBox ID="txtForacidTypeTxn" runat="server">SBA</asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label29" runat="server" Text="Cust ID:"></asp:Label>
                                </td>
                                <td class="style6">
                                    <asp:TextBox ID="txtCustIdTxn" runat="server">100595925 </asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label27" runat="server" Text="Device Type:"></asp:Label>
                                </td>
                                <td class="style6">
                                    <asp:TextBox ID="txtDeviceTypeTxn" runat="server">android</asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label28" runat="server" Text="Device ID:"></asp:Label>
                                </td>
                                <td class="style6">
                                    <asp:TextBox ID="txtDeviceIdTxn" runat="server">A1</asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label32" runat="server" Text="Last Tran Date Time"></asp:Label>
                                </td>
                                <td class="style6">
                                    <asp:TextBox ID="txtLastTran" runat="server">0</asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Last RCRETime<br />
                                </td>
                                <td class="style6">
                                    <asp:TextBox ID="txtLastRCRE" runat="server">0</asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right">
                                    <asp:Button ID="btnTxnSubmit" runat="server" 
                                        Text="Submit" onclick="btnTxnSubmit_Click" />
                                </td>
                                <td style="text-align: left">
                                    <asp:Button ID="Button11" runat="server" Text="Clear" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
        </asp:Panel>
        <br />
        <asp:Panel ID="PanelMessage" runat="server">
            <br />
            <table align="center" class="style7">
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Label ID="Label33" runat="server" Text="Messages"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label39" runat="server" Text="Device ID:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDeviceIdMessage" runat="server">A1</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label40" runat="server" Text="Device Type:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDeviceTypeMessage" runat="server">android</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label36" runat="server" Text="CustId:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCustId" runat="server">100595925</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label38" runat="server" Text="LASTSYNCDATETIME"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLastSyncTimeMessage" runat="server">08/10/2013</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        <asp:Button ID="btnSubmitMessage" runat="server" 
                            onclick="btnSubmitMessage_Click" Text="Submit" />
                    </td>
                    <td>
                        <asp:Button ID="Button15" runat="server" Text="Cancel" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
        </asp:Panel>
        <br />
        <asp:Panel ID="PanelLogout" runat="server">
            <br />
            <table class="style8" align="center">
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Label ID="Label41" runat="server" Text="Logout"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label42" runat="server" Text="Device Id:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDeviceIdLogout" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label43" runat="server" Text="Device Type:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDeviceTypeLogout" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label44" runat="server" Text="Session"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSessionLogout" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        <asp:Button ID="Button17" runat="server" Text="Submit" 
                            onclick="Button17_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button18" runat="server" Text="Cancel" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <asp:Panel ID="PanelBanner" runat="server">
            <br />
            <table align="center" class="style9">
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Label ID="Label45" runat="server" Text="Banner"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label46" runat="server" Text="Device Id:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDeviceIdBanner" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label47" runat="server" Text="Device Type:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDeviceTypeBanner" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label48" runat="server" Text="Session ID:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSessionBanner" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        <asp:Button ID="tbnSubmitBanner" runat="server" Text="Submit" 
                            onclick="tbnSubmitBanner_Click1" />
                    </td>
                    <td>
                        <asp:Button ID="Button20" runat="server" Text="Cancel" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
        </asp:Panel>
        <br />
        <asp:Panel ID="PanelRequest" runat="server">
            <br />
            <table align="center" class="style9">
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Label ID="Label49" runat="server" Text="Request"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label50" runat="server" Text="Device Id:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDeviceIdRequest" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label51" runat="server" Text="Device Type:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDeviceTypeRequest" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label52" runat="server" Text="Session ID:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSessionRequest" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label57" runat="server" Text="CustId:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCustIdRequest" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label53" runat="server" Text="Email ID:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmailRequest" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label54" runat="server" Text="Account Number:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAccountNumberRequest" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label55" runat="server" Text="Subject :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSubjectRequest" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label56" runat="server" Text="Message:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMessageRequest" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        <asp:Button ID="tbnSubmitRequest" runat="server" Text="Submit" 
                            onclick="tbnSubmitRequest_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button23" runat="server" Text="Cancel" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
        </asp:Panel>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
