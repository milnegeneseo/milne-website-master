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

public partial class Requests_Videos : System.Web.UI.Page
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
        mailMessage.Subject = "DVD/Video Hold Request: " + txtFirstName.Text + " " + txtLastName.Text;

        mailMessage.Priority = MailPriority.Normal;
        mailMessage.IsBodyHtml = false;

        StringBuilder sb = new StringBuilder();

        //sb.AppendFormat("Media Type: {0}" + Environment.NewLine + Environment.NewLine, rblType.SelectedValue);

        sb.AppendFormat("Media Type: {0}" + Environment.NewLine + Environment.NewLine, rblType.SelectedValue);

        sb.AppendFormat("Instructor Information" + Environment.NewLine + "    ");
        sb.AppendFormat("Name: {0}" + Environment.NewLine + "    ", txtFirstName.Text.Trim() + " " + txtLastName.Text.Trim());
        sb.AppendFormat("Email: {0}" + Environment.NewLine + "    ", txtEmail.Text.Trim());
        sb.AppendFormat("Department: {0}" + Environment.NewLine + "    ", txtDepartment.Text.Trim());
        sb.AppendFormat("Office Phone Number: {0}" + Environment.NewLine + Environment.NewLine, txtPhone.Text.Trim());

        sb.AppendFormat("DVD/Video Information" + Environment.NewLine + "    ");
        sb.AppendFormat("Full Title: {0}" + Environment.NewLine + "    ", txtTitle.Text.Trim());
        sb.AppendFormat("DVD/Video Call Number: {0}" + Environment.NewLine + "    ", txtCallNumber.Text.Trim());
        sb.AppendFormat("Pick-up Date: {0}" + Environment.NewLine + Environment.NewLine, txtDate.Text.Trim());

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

        Response.Redirect("VideosForClassThankYou.aspx");
    }
    protected void CancelButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("VideosForClass.aspx");
    }
}