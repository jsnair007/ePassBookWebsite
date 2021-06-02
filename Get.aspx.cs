using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Collections.Specialized;
using System.Web.Script.Serialization;
using System.Runtime.Serialization.Json;

public partial class GetEncryptString : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        lblResult.Text = "";
        string sEncPwd = JsonCsharpUtiil.getEncryptString(txtMPIN.Text.Trim(), "vijaya!@#");
        lblResult.Text = sEncPwd;
    }
    protected void btnHash_Click(object sender, EventArgs e)
    {
        lblResult.Text= FormsAuthentication.HashPasswordForStoringInConfigFile(txtMPIN.Text.Trim(), "SHA1");
    }

    protected void btnMPIN_Click(object sender, EventArgs e)
    {
        string sHash = FormsAuthentication.HashPasswordForStoringInConfigFile(txtMPIN.Text.Trim(), "SHA1");
        string sEncPwd = JsonCsharpUtiil.getEncryptString(sHash, "vijaya!@#");
        lblResult.Text = sEncPwd;
    }
    protected void btnDecrypt_Click(object sender, EventArgs e)
    {
        if (txtEncrypted.Text == "")
        {
            lblResult.Text = "Please enter encrypted string";
            return;
        }
        else
        {
            string sEncPwd = JsonCsharpUtiil.getDecryptString(txtEncrypted.Text, "vijaya!@#");
            lblResult.Text = sEncPwd;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        PassBook.ServiceClient objPassBook = new PassBook.ServiceClient();
        
        PassBook.ClassJsonGETID objId = new PassBook.ClassJsonGETID();

        objId = objPassBook.GetId(txtMobile.Text);
        lblCustId.Text = objId.CUSTID;
        lblSession.Text = objId.SESSIONID;
        lblDeviceId.Text = objId.DEVICEID;
        lblDeviceType.Text = objId.DEVICETYPE;
    }
}