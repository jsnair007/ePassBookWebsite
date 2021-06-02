using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Collections.Specialized;
using System.Web.Script.Serialization;
using System.Runtime.Serialization.Json;
using PassBook;

public partial class VPTransReceiver : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        PassBook.ServiceClient objPassBook = new PassBook.ServiceClient();
        string sResponse = "";
        
        try
        {
            string sInput = Request.QueryString.Get("INPUT");

            
            sResponse= objPassBook.PassBookService(sInput);

            Response.Write(sResponse);

        }
        catch (Exception eee)
        {
            clsEvent.LogExceptionEvent(eee.Message);
            sResponse = "116";
        }
        
    }
}