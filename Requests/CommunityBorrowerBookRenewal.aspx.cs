using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text;

public partial class Requests_BookRenewal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //############ Mail Settings ############ 

        MailMessage mailMessage = new MailMessage();
        SmtpClient smtpClient = new SmtpClient();

        mailMessage.From = new MailAddress(txtEmail.Text);
        mailMessage.To.Add("circ@geneseo.edu");
        //mailMessage.To.Add("ha@geneseo.edu");
        mailMessage.Bcc.Add("ha@geneseo.edu");
        mailMessage.Subject = "Community Borrower Book Renewal Request: " + txtFirstName.Text + " " + txtLastName.Text;

        mailMessage.Priority = MailPriority.Normal;
        mailMessage.IsBodyHtml = false;

        StringBuilder sb = new StringBuilder();

        sb.AppendFormat("Patron Information" + Environment.NewLine + "    ");
        sb.AppendFormat("Name: {0}" + Environment.NewLine + "    ", txtFirstName.Text.Trim() + " " + txtLastName.Text.Trim());
        sb.AppendFormat("Email: {0}" + Environment.NewLine + "    ", txtEmail.Text.Trim());
        sb.AppendFormat("Local Address: {0}" + Environment.NewLine + "    ", txtAddress.Text.Trim());
        sb.AppendFormat("Phone Number: {0}" + Environment.NewLine + "    ", txtPhone.Text.Trim());
        sb.AppendFormat("Barcode Number: {0}" + Environment.NewLine + Environment.NewLine, txtBarcode.Text.Trim());

        sb.AppendFormat("Book Information" + Environment.NewLine + "    ");
        sb.AppendFormat("Book 1: {0}" + Environment.NewLine + "    ", txtBook1.Text.Trim());
        sb.AppendFormat("Book 2: {0}" + Environment.NewLine + "    ", txtBook2.Text.Trim());
        sb.AppendFormat("Book 3: {0}" + Environment.NewLine + "    ", txtBook3.Text.Trim());
        sb.AppendFormat("Book 4: {0}" + Environment.NewLine + "    ", txtBook4.Text.Trim());
        sb.AppendFormat("Book 5: {0}" + Environment.NewLine + "    ", txtBook5.Text.Trim());
        sb.AppendFormat("Book 6: {0}" + Environment.NewLine + "    ", txtBook6.Text.Trim());
        sb.AppendFormat("Book 7: {0}" + Environment.NewLine + "    ", txtBook7.Text.Trim());
        sb.AppendFormat("Book 8: {0}" + Environment.NewLine + "    ", txtBook8.Text.Trim());
        sb.AppendFormat("Book 9: {0}" + Environment.NewLine + "    ", txtBook9.Text.Trim());
        sb.AppendFormat("Book 10: {0}" + Environment.NewLine + Environment.NewLine, txtBook10.Text.Trim());

        sb.AppendFormat("Additional Remarks: {0}" + Environment.NewLine + Environment.NewLine, txtRemarks.Text.Trim());      

        mailMessage.Body = sb.ToString();

        try
        {
            smtpClient.Send(mailMessage);
        }

        catch (System.Net.Mail.SmtpException ex)
        {
            lblErrorMessage.Text = "Error. " + ex.Message;
            lblErrorMessage.ForeColor = System.Drawing.Color.Red;
        }

        Response.Redirect("CommunityBorrowerBookRenewalThankYou.aspx");
   
    
    }


    protected void CancelButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("CommunityBorrowerBookRenewal.aspx");
  

    }




}