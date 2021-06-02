using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Specialized;
using System.Text;

public partial class _Default : System.Web.UI.Page
{
    clsDetails.UserDetails objUser = new clsDetails.UserDetails();
    protected void Page_Load(object sender, EventArgs e)
    {
        PanelEnrollment.Visible = false;
        PanelChangeMpin.Visible = false;
        PanelLogin.Visible = false;
        PanelAccounts.Visible = false;
        PanelTransactions.Visible = false;
        PanelMessage.Visible = false;
        PanelLogout.Visible = false;
        PanelBanner.Visible = false;
        PanelRequest.Visible = false;

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        //NameValueCollection postdata = new NameValueCollection();
        //postdata.Add("OPCODE",txtOPCode.Text);
        //postdata.Add("MOBILENO", txtMob.Text);
        //postdata.Add("COUNTRYCODE", txtCountryCode.Text);
        //postdata.Add("DEVICETYPE", txtType.Text);
        //postdata.Add("DEVICEID", txtToken.Text);

        

        //string sJsonRequest = "{\"INPUT\":{" +
        //                    " \"OPCODE\":\"ENROLLMENT\", " +
        //                    " \"MOBILENO\":\"8197891618\", " +
        //                    " \"COUNTRYCODE\":\"91\", " +
        //                    " \"DEVICETYPE\":\"ANDROID\", " +
        //                    " \"DEVICEID\":\"ANDROID123\" " +
        //                    " }}";

        string sJsonRequest = "{" +
                            " \"OPCODE\":\"ENROLLMENT\", " +
                            " \"MOBILENO\":\""+txtMob.Text+"\", " +
                            " \"COUNTRYCODE\":\""+txtCountryCode.Text+"\", " +
                            " \"DEVICETYPE\":\""+txtType.Text+"\", " +
                            " \"DEVICEID\":\""+txtToken.Text+"\" " +
                            " }";

        
        objUser = ClassJson.JsonDeserialize<clsDetails.UserDetails>(sJsonRequest);

        sJsonRequest = JsonCsharpUtiil.getEncryptString(sJsonRequest, "snowtint!@#$");

        sJsonRequest = HttpUtility.UrlEncode(sJsonRequest);
        
        Response.Redirect("https://www.easba.vijayabankonline.in/VPTransReceiver.aspx?INPUT=" + sJsonRequest, false);
        //Response.Redirect("http://www.vijayabank.com:83/VPassBook/VPTransReceiver.aspx?INPUT=" + sJsonRequest, false);

        //clsPOST.HttpHelper.RedirectAndPOST(this.Page, "http://www.vijayabank.com:83/VPassBook/VPTransReceiver.aspx", sJsonRequest);


    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        PanelEnrollment.Visible = true;
        PanelChangeMpin.Visible = false;
        PanelLogin.Visible = false;
        PanelAccounts.Visible = false;
        PanelTransactions.Visible = false;
        PanelMessage.Visible = false;
        PanelLogout.Visible = false;
        PanelBanner.Visible = false;
        PanelRequest.Visible = false;

    }
    protected void btnChangeMPIN_Click(object sender, EventArgs e)
    {
        string sJsonRequest = "{" +
                            " \"OPCODE\":\"CHANGEPIN\", " +
                            " \"MOBILENO\":\"" + txtMobPIN.Text + "\", " +
                            " \"COUNTRYCODE\":\"" + txtCountryCodePIN.Text + "\", " +
                            " \"DEVICETYPE\":\"" + txtDeviceTypePIN.Text + "\", " +
                            " \"DEVICEID\":\"" + txtDeviceIDPIN.Text + "\", " +
                            " \"OLDMPIN\":\""+txtOldPIN.Text+"\", "+
                            " \"NEWMPIN\":\"" + txtNewPin.Text + "\" " +
                            " }";

        objUser = ClassJson.JsonDeserialize<clsDetails.UserDetails>(sJsonRequest);
        sJsonRequest = HttpUtility.UrlEncode(sJsonRequest);

sJsonRequest = JsonCsharpUtiil.getEncryptString(sJsonRequest, "snowtint!@#$");

        Response.Redirect("https://www.mobile.vijayabankonline.in/VPTransReceiver.aspx?INPUT=" + sJsonRequest, false);
        //Response.Redirect("http://www.vijayabank.com:83/VPassBook/VPTransReceiver.aspx?INPUT=" + sJsonRequest, false);


        //clsPOST.HttpHelper.RedirectAndPOST(this.Page, "http://www.vijayabank.com:83/VPassBook/VPTransReceiver.aspx", postdata);
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        PanelChangeMpin.Visible = true;
        PanelEnrollment.Visible = false;
        PanelLogin.Visible = false;
        PanelAccounts.Visible = false;
        PanelTransactions.Visible = false;
        PanelMessage.Visible = false;
        PanelLogout.Visible = false;
        PanelBanner.Visible = false;
        PanelRequest.Visible = false;

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {

        string sJsonRequest = "{" +
                            " \"OPCODE\":\"LOGIN\", " +
                            " \"DEVICETYPE\":\"" + txtDeviceTypeLogin.Text + "\", " +
                            " \"DEVICEID\":\"" + txtDeviceIDlOGIN.Text + "\", " +
                            " \"NEWMPIN\":\"" + txtMPINLogin.Text + "\" " +
                            " }";

        objUser = ClassJson.JsonDeserialize<clsDetails.UserDetails>(sJsonRequest);
        sJsonRequest = HttpUtility.UrlEncode(sJsonRequest);

        Response.Redirect("https://www.mobile.vijayabankonline.in/VPTransReceiver.aspx?INPUT=" + sJsonRequest, false);
        //Response.Redirect("http://www.vijayabank.com:83/VPassBook/VPTransReceiver.aspx?INPUT=" + sJsonRequest, false);


    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        PanelChangeMpin.Visible = false;
        PanelEnrollment.Visible = false;
        PanelLogin.Visible = true;
        PanelTransactions.Visible = false;
        PanelMessage.Visible = false;
        PanelLogout.Visible = false;
        PanelBanner.Visible = false;
        PanelRequest.Visible = false;

    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button5_Click1(object sender, EventArgs e)
    {
        PanelEnrollment.Visible = false;
        PanelChangeMpin.Visible = false;
        PanelLogin.Visible = true;
        PanelAccounts.Visible = false;
        PanelTransactions.Visible = false;
        PanelMessage.Visible = false;
        PanelLogout.Visible = false;
        PanelBanner.Visible = false;
        PanelRequest.Visible = false;

    }
    protected void btnAccounts_Click(object sender, EventArgs e)
    {
        string sJsonRequest = "{" +
                            " \"OPCODE\":\"ACCOUNTS\", " +
                            " \"SESSIONID\":\""+txtSessionAccounts.Text+"\", " +
                            " \"DEVICETYPE\":\""+txtDeviceTypeAccounts.Text+"\", " +
                            " \"DEVICEID\":\""+txtDeviceIDAccounts.Text+"\", " +
                            " \"CUSTOMERID\":\""+txtCustIdAccounts.Text+"\" " +
                            " }";

        objUser = ClassJson.JsonDeserialize<clsDetails.UserDetails>(sJsonRequest);
        sJsonRequest = HttpUtility.UrlEncode(sJsonRequest);
        Response.Redirect("https://www.mobile.vijayabankonline.in/VPTransReceiver.aspx?INPUT=" + sJsonRequest, false);
        //Response.Redirect("http://www.vijayabank.com:83/VPassBook/VPTransReceiver.aspx?INPUT=" + sJsonRequest, false);
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        PanelEnrollment.Visible = false;
        PanelChangeMpin.Visible = false;
        PanelLogin.Visible = false;
        PanelAccounts.Visible = true;
        PanelTransactions.Visible = false;
        PanelMessage.Visible = false;
        PanelLogout.Visible = false;
        PanelBanner.Visible = false;
        PanelRequest.Visible = false;

    }
    protected void btnTxnSubmit_Click(object sender, EventArgs e)
    {
        string sJsonRequest = "{" +
                            " \"OPCODE\":\"TRANSACTIONS\", " +
                            " \"SESSIONID\":\"" + txtSessionTxn.Text + "\", " +
                            " \"ACCOUNTNO\":\"" + txtForacidTxn.Text + "\", " +
                            " \"ACCOUNTTYPE\":\"" + txtForacidTypeTxn.Text + "\", " +
                            " \"CUSTOMERID\":\"" + txtCustIdTxn.Text + "\", " +
                            " \"DEVICETYPE\":\"" + txtDeviceTypeTxn.Text + "\", " +
                            " \"DEVICEID\":\"" + txtDeviceIdTxn.Text + "\", " +
                            " \"LASTTRANSACTIONDATETIME\":\"" + txtLastTran.Text + "\", " +
                            " \"LASTRCRETIME\":\"" +txtLastRCRE.Text+ "\", " +
                            " }";

        objUser = ClassJson.JsonDeserialize<clsDetails.UserDetails>(sJsonRequest);
        sJsonRequest = HttpUtility.UrlEncode(sJsonRequest);
        Response.Redirect("https://www.mobile.vijayabankonline.in/VPTransReceiver.aspx?INPUT=" + sJsonRequest, false);
        //Response.Redirect("http://www.vijayabank.com:83/VPassBook/VPTransReceiver.aspx?INPUT=" + sJsonRequest, false);

    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        PanelEnrollment.Visible = false;
        PanelChangeMpin.Visible = false;
        PanelLogin.Visible = false;
        PanelAccounts.Visible = false;
        PanelTransactions.Visible = true;
        PanelMessage.Visible = false;
        PanelLogout.Visible = false;
        PanelBanner.Visible = false;
        PanelRequest.Visible = false;

    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        string redirect = "<script>window.open('https://www.mobile.vijayabankonline.in/Get.aspx');</script>";
        //string redirect = "<script>window.open('http://www.vijayabank.com:83/VPassBookV2.0/Get.aspx');</script>";
        Response.Write(redirect);
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        //string redirect = "<script>window.open('http://www.vijayabank.com:83/VPassBookV2.0/Reset.aspx');</script>";
        string redirect = "<script>window.open('https://www.mobile.vijayabankonline.in/Reset.aspx');</script>";
        Response.Write(redirect);
    }
    protected void btnMessage_Click(object sender, EventArgs e)
    {
        PanelEnrollment.Visible = false;
        PanelChangeMpin.Visible = false;
        PanelLogin.Visible = false;
        PanelAccounts.Visible = false;
        PanelTransactions.Visible = false;
        PanelMessage.Visible = true;
        PanelLogout.Visible = false;
        PanelBanner.Visible = false;
        PanelRequest.Visible = false;
    }
    protected void btnSubmitMessage_Click(object sender, EventArgs e)
    {
        string sJsonRequest = "{" +
                            " \"OPCODE\":\"MESSAGES\", " +
                            " \"CUSTOMERID\":\"" + txtCustId.Text + "\", " +
                            " \"DEVICETYPE\":\"" + txtDeviceTypeMessage.Text + "\", " +
                            " \"DEVICEID\":\"" + txtDeviceIdMessage.Text + "\", " +
                            " \"LASTTRANSACTIONDATETIME\":\"" + txtLastSyncTimeMessage.Text + "\", " +
                            " }";

        objUser = ClassJson.JsonDeserialize<clsDetails.UserDetails>(sJsonRequest);
        sJsonRequest = HttpUtility.UrlEncode(sJsonRequest);
        Response.Redirect("https://www.mobile.vijayabankonline.in/VPTransReceiver.aspx?INPUT=" + sJsonRequest, false);
        //Response.Redirect("http://www.vijayabank.com:83/VPassBook/VPTransReceiver.aspx?INPUT=" + sJsonRequest, false);

    }
    protected void Button16_Click(object sender, EventArgs e)
    {
        PanelEnrollment.Visible = false;
        PanelChangeMpin.Visible = false;
        PanelLogin.Visible = false;
        PanelAccounts.Visible = false;
        PanelTransactions.Visible = false;
        PanelMessage.Visible = false;
        PanelLogout.Visible = true;
        PanelBanner.Visible = false;
        PanelRequest.Visible = false;
    }
    protected void Button17_Click(object sender, EventArgs e)
    {
        string sJsonRequest = "{" +
                           " \"OPCODE\":\"LOGOUT\", " +
                           " \"DEVICETYPE\":\"" + txtDeviceTypeLogout.Text + "\", " +
                           " \"DEVICEID\":\"" + txtDeviceIdLogout.Text + "\", " +
                           " \"SESSIONID\":\"" + txtSessionLogout.Text + "\", " +
                           " }";

        objUser = ClassJson.JsonDeserialize<clsDetails.UserDetails>(sJsonRequest);
        sJsonRequest = HttpUtility.UrlEncode(sJsonRequest);
        Response.Redirect("https://www.mobile.vijayabankonline.in/VPTransReceiver.aspx?INPUT=" + sJsonRequest, false);
        //Response.Redirect("http://www.vijayabank.com:83/VPassBook/VPTransReceiver.aspx?INPUT=" + sJsonRequest, false);

    }
 
    
    protected void Button22_Click(object sender, EventArgs e)
    {
        PanelEnrollment.Visible = false;
        PanelChangeMpin.Visible = false;
        PanelLogin.Visible = false;
        PanelAccounts.Visible = false;
        PanelTransactions.Visible = false;
        PanelMessage.Visible = false;
        PanelLogout.Visible = false;
        PanelBanner.Visible = false;
        PanelRequest.Visible = true;
    }
    protected void tbnSubmitRequest_Click(object sender, EventArgs e)
    {
        string sJsonRequest = "{" +
                          " \"OPCODE\":\"BANKREQUEST\", " +
                          " \"DEVICETYPE\":\"" + txtDeviceTypeRequest.Text + "\", " +
                          " \"DEVICEID\":\"" + txtDeviceIdRequest.Text + "\", " +
                          " \"SESSIONID\":\"" + txtSessionRequest.Text + "\", " +
                          " \"CUSTOMERID\":\"" + txtCustIdRequest.Text + "\", " +
                          " \"EMAILID\":\"" + txtEmailRequest.Text + "\", " +
                          " \"ACCOUNTNO\":\"" + txtAccountNumberRequest.Text + "\", " +
                          " \"SUBJECT\":\"" + txtSubjectRequest.Text + "\", " +
                          " \"MESSAGE\":\"" + txtMessageRequest.Text + "\", " +
                          " }";

        objUser = ClassJson.JsonDeserialize<clsDetails.UserDetails>(sJsonRequest);
        sJsonRequest = HttpUtility.UrlEncode(sJsonRequest);
        Response.Redirect("https://www.mobile.vijayabankonline.in/VPTransReceiver.aspx?INPUT=" + sJsonRequest, false);
        //Response.Redirect("http://www.vijayabank.com:83/VPassBook/VPTransReceiver.aspx?INPUT=" + sJsonRequest, false);


    }
    protected void Button21_Click1(object sender, EventArgs e)
    {
        PanelEnrollment.Visible = false;
        PanelChangeMpin.Visible = false;
        PanelLogin.Visible = false;
        PanelAccounts.Visible = false;
        PanelTransactions.Visible = false;
        PanelMessage.Visible = false;
        PanelLogout.Visible = false;
        PanelBanner.Visible = true;
        PanelRequest.Visible = false;
    }
    protected void tbnSubmitBanner_Click1(object sender, EventArgs e)
    {
        string sJsonRequest = "{" +
                           " \"OPCODE\":\"BANNERS\", " +
                           " \"DEVICETYPE\":\"" + txtDeviceTypeBanner.Text + "\", " +
                           " \"DEVICEID\":\"" + txtDeviceIdBanner.Text + "\", " +
                           " \"SESSIONID\":\"" + txtSessionBanner.Text + "\", " +
                           " }";

        objUser = ClassJson.JsonDeserialize<clsDetails.UserDetails>(sJsonRequest);
        sJsonRequest = HttpUtility.UrlEncode(sJsonRequest);
        Response.Redirect("https://www.mobile.vijayabankonline.in/VPTransReceiver.aspx?INPUT=" + sJsonRequest, false);
        //Response.Redirect("http://www.vijayabank.com:83/VPassBook/VPTransReceiver.aspx?INPUT=" + sJsonRequest, false);
    }
}