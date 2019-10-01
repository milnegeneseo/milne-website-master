using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;


public partial class Requests_CirculatingReservesThankYou : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string CurrDateTime = DateTime.Now.ToString("yyMMddHHmm");
        Label1.Text = CurrDateTime;
        DataBind();
        //Label1.Text = PreviousPage.FirstName;
        //Label2.Text = PreviousPage.LastName;
        //Label3.Text = PreviousPage.LastName;

    }
}