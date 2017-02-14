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

public partial class Requests_CirculatingReserves : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
            //if (string.IsNullOrEmpty(txtHF.Text))
            //var chkDate = System.DateTime.Parse(txtDate.Text);

            if (txtDate.Text !=String.Empty)
            {
                //############ Mail Settings ############ 

                MailMessage mailMessage = new MailMessage();
                SmtpClient smtpClient = new SmtpClient();

                mailMessage.From = new MailAddress(txtEmail.Text);
                mailMessage.To.Add("salluzzo@geneseo.edu");
                //mailMessage.To.Add("ha@geneseo.edu"); 
                mailMessage.Bcc.Add("ha@geneseo.edu,rootl@geneseo.edu");
                mailMessage.Subject = "Circulating Reserve Request: " + txtFirstName.Text + " " + txtLastName.Text;

                mailMessage.Priority = MailPriority.Normal;
                mailMessage.IsBodyHtml = false;

                StringBuilder sb = new StringBuilder();

                sb.AppendFormat("Instructor Information" + Environment.NewLine + "    ");
                sb.AppendFormat("Name: {0}" + Environment.NewLine + "    ", txtFirstName.Text.Trim() + " " + txtLastName.Text.Trim());
                sb.AppendFormat("Email: {0}" + Environment.NewLine + "    ", txtEmail.Text.Trim());
                sb.AppendFormat("Department: {0}" + Environment.NewLine + "    ", txtDepartment.Text.Trim());
                sb.AppendFormat("Office Phone Number: {0}" + Environment.NewLine + Environment.NewLine, txtPhone.Text.Trim());

                sb.AppendFormat("Course Information" + Environment.NewLine + "    ");
                sb.AppendFormat("Date Remove: {0}" + Environment.NewLine + "    ", txtDate.Text.Trim());
                sb.AppendFormat("Course Number: {0}" + Environment.NewLine + "    ", txtCourseNumber.Text.Trim());
                sb.AppendFormat("Section Number: {0}" + Environment.NewLine + "    ", txtSection.Text.Trim());
                sb.AppendFormat("Semester: {0}" + Environment.NewLine + Environment.NewLine, ddlSemester.SelectedValue);

                sb.AppendFormat("Additional Remarks: {0}" + Environment.NewLine + Environment.NewLine, txtRemarks.Text.Trim());

                sb.AppendFormat("Material Information" + Environment.NewLine + "    ");
                sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor.Text.Trim());
                sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtTitle.Text.Trim());
                sb.AppendFormat("ISBN: {0}" + Environment.NewLine + "    ", txtISBN.Text.Trim());
                sb.AppendFormat("Reserve Type: {0}" + Environment.NewLine + "    ", ddlReserve.SelectedValue);
                sb.AppendFormat("# of Copies: {0}" + Environment.NewLine + "    ", txtCopies.Text.Trim());
                sb.AppendFormat("Material Type: {0}" + Environment.NewLine + Environment.NewLine + "    ", ddlMaterial.SelectedValue);

                if (txtAuthor2.Text.Length > 0 || txtTitle2.Text.Length > 0 || ddlReserve2.SelectedValue.Length > 0 || txtCopies2.Text.Length > 0 ||  ddlMaterial2.SelectedValue.Length > 0)
                {
                sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor2.Text.Trim());
                sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtTitle2.Text.Trim());
                sb.AppendFormat("ISBN: {0}" + Environment.NewLine + "    ", txtISBN2.Text.Trim());
                sb.AppendFormat("Reserve Type: {0}" + Environment.NewLine + "    ", ddlReserve2.SelectedValue);
                sb.AppendFormat("# of Copies: {0}" + Environment.NewLine + "    ", txtCopies2.Text.Trim());
                sb.AppendFormat("Material Type: {0}" + Environment.NewLine + Environment.NewLine + "    ", ddlMaterial2.SelectedValue);
                }

                if (txtAuthor3.Text.Length > 0 || txtTitle3.Text.Length > 0 || ddlReserve3.SelectedValue.Length > 0 || txtCopies3.Text.Length > 0 || ddlMaterial3.SelectedValue.Length > 0)
                {
                    sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor3.Text.Trim());
                    sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtTitle3.Text.Trim());
                    sb.AppendFormat("ISBN: {0}" + Environment.NewLine + "    ", txtISBN3.Text.Trim());
                    sb.AppendFormat("Reserve Type: {0}" + Environment.NewLine + "    ", ddlReserve3.SelectedValue);
                    sb.AppendFormat("# of Copies: {0}" + Environment.NewLine + "    ", txtCopies3.Text.Trim());
                    sb.AppendFormat("Material Type: {0}" + Environment.NewLine + Environment.NewLine + "    ", ddlMaterial3.SelectedValue);
                }

                if (txtAuthor4.Text.Length > 0 || txtTitle4.Text.Length > 0 || ddlReserve4.SelectedValue.Length > 0 || txtCopies4.Text.Length > 0 || ddlMaterial4.SelectedValue.Length > 0)
                {
                    sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor4.Text.Trim());
                    sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtTitle4.Text.Trim());
                    sb.AppendFormat("ISBN: {0}" + Environment.NewLine + "    ", txtISBN4.Text.Trim());
                    sb.AppendFormat("Reserve Type: {0}" + Environment.NewLine + "    ", ddlReserve4.SelectedValue);
                    sb.AppendFormat("# of Copies: {0}" + Environment.NewLine + "    ", txtCopies4.Text.Trim());
                    sb.AppendFormat("Material Type: {0}" + Environment.NewLine + Environment.NewLine + "    ", ddlMaterial4.SelectedValue);
                }

                if (txtAuthor5.Text.Length > 0 || txtTitle5.Text.Length > 0 || ddlReserve5.SelectedValue.Length > 0 || txtCopies5.Text.Length > 0 || ddlMaterial5.SelectedValue.Length > 0)
                {
                    sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor5.Text.Trim());
                    sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtTitle5.Text.Trim());
                    sb.AppendFormat("ISBN: {0}" + Environment.NewLine + "    ", txtISBN5.Text.Trim());
                    sb.AppendFormat("Reserve Type: {0}" + Environment.NewLine + "    ", ddlReserve5.SelectedValue);
                    sb.AppendFormat("# of Copies: {0}" + Environment.NewLine + "    ", txtCopies5.Text.Trim());
                    sb.AppendFormat("Material Type: {0}" + Environment.NewLine + Environment.NewLine + "    ", ddlMaterial5.SelectedValue);
                }

                 if (txtAuthor6.Text.Length > 0 || txtTitle6.Text.Length > 0 || ddlReserve6.SelectedValue.Length > 0 || txtCopies6.Text.Length > 0 || ddlMaterial6.SelectedValue.Length > 0)
                {
                    sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor6.Text.Trim());
                    sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtTitle6.Text.Trim());
                    sb.AppendFormat("ISBN: {0}" + Environment.NewLine + "    ", txtISBN6.Text.Trim());
                    sb.AppendFormat("Reserve Type: {0}" + Environment.NewLine + "    ", ddlReserve6.SelectedValue);
                    sb.AppendFormat("# of Copies: {0}" + Environment.NewLine + "    ", txtCopies6.Text.Trim());
                    sb.AppendFormat("Material Type: {0}" + Environment.NewLine + Environment.NewLine + "    ", ddlMaterial6.SelectedValue);
                }

                if (txtAuthor7.Text.Length > 0 || txtTitle7.Text.Length > 0 || ddlReserve7.SelectedValue.Length > 0 || txtCopies7.Text.Length > 0 || ddlMaterial7.SelectedValue.Length > 0)
                {
                    sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor7.Text.Trim());
                    sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtTitle7.Text.Trim());
                    sb.AppendFormat("ISBN: {0}" + Environment.NewLine + "    ", txtISBN7.Text.Trim());
                    sb.AppendFormat("Reserve Type: {0}" + Environment.NewLine + "    ", ddlReserve7.SelectedValue);
                    sb.AppendFormat("# of Copies: {0}" + Environment.NewLine + "    ", txtCopies7.Text.Trim());
                    sb.AppendFormat("Material Type: {0}" + Environment.NewLine + Environment.NewLine + "    ", ddlMaterial7.SelectedValue);
                }

                if (txtAuthor8.Text.Length > 0 || txtTitle8.Text.Length > 0 || ddlReserve8.SelectedValue.Length > 0 || txtCopies8.Text.Length > 0 || ddlMaterial8.SelectedValue.Length > 0)
                {
                    sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor8.Text.Trim());
                    sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtTitle8.Text.Trim());
                    sb.AppendFormat("ISBN: {0}" + Environment.NewLine + "    ", txtISBN8.Text.Trim());
                    sb.AppendFormat("Reserve Type: {0}" + Environment.NewLine + "    ", ddlReserve8.SelectedValue);
                    sb.AppendFormat("# of Copies: {0}" + Environment.NewLine + "    ", txtCopies8.Text.Trim());
                    sb.AppendFormat("Material Type: {0}" + Environment.NewLine + Environment.NewLine + "    ", ddlMaterial8.SelectedValue);
                }

                if (txtAuthor9.Text.Length > 0 || txtTitle9.Text.Length > 0 || ddlReserve9.SelectedValue.Length > 0 || txtCopies9.Text.Length > 0 || ddlMaterial9.SelectedValue.Length > 0)
                {
                    sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor9.Text.Trim());
                    sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtTitle9.Text.Trim());
                    sb.AppendFormat("ISBN: {0}" + Environment.NewLine + "    ", txtISBN9.Text.Trim());
                    sb.AppendFormat("Reserve Type: {0}" + Environment.NewLine + "    ", ddlReserve9.SelectedValue);
                    sb.AppendFormat("# of Copies: {0}" + Environment.NewLine + "    ", txtCopies9.Text.Trim());
                    sb.AppendFormat("Material Type: {0}" + Environment.NewLine + Environment.NewLine + "    ", ddlMaterial9.SelectedValue);
                }

                else if (txtAuthor10.Text.Length > 0 || txtTitle10.Text.Length > 0 || ddlReserve10.SelectedValue.Length > 0 || txtCopies10.Text.Length > 0 || ddlMaterial10.SelectedValue.Length > 0)
                {
                    sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor10.Text.Trim());
                    sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtTitle10.Text.Trim());
                    sb.AppendFormat("ISBN: {0}" + Environment.NewLine + "    ", txtISBN10.Text.Trim());
                    sb.AppendFormat("Reserve Type: {0}" + Environment.NewLine + "    ", ddlReserve10.SelectedValue);
                    sb.AppendFormat("# of Copies: {0}" + Environment.NewLine + "    ", txtCopies10.Text.Trim());
                    sb.AppendFormat("Material Type: {0}" + Environment.NewLine + Environment.NewLine + "    ", ddlMaterial10.SelectedValue);
                }

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

                Response.Redirect("CirculatingReservesThankYou.aspx");
            }

            else
            {
                MailMessage mailMessage = new MailMessage();
                SmtpClient smtpClient = new SmtpClient();

                mailMessage.From = new MailAddress(txtEmail.Text);
                mailMessage.To.Add("ha@geneseo.edu");
                // mailMessage.Bcc.Add("ha@geneseo.edu");
                mailMessage.Subject = "Circulating Reserve Request: SPAM" + txtFirstName.Text + " " + txtLastName.Text;

                mailMessage.Priority = MailPriority.Normal;
                mailMessage.IsBodyHtml = false;

                StringBuilder sb = new StringBuilder();

                sb.AppendFormat("Instructor Information" + Environment.NewLine + "    ");
                sb.AppendFormat("Name: {0}" + Environment.NewLine + "    ", txtFirstName.Text.Trim() + " " + txtLastName.Text.Trim());
                sb.AppendFormat("Email: {0}" + Environment.NewLine + "    ", txtEmail.Text.Trim());
                sb.AppendFormat("Department: {0}" + Environment.NewLine + "    ", txtDepartment.Text.Trim());
                sb.AppendFormat("Office Phone Number: {0}" + Environment.NewLine + Environment.NewLine, txtPhone.Text.Trim());

                sb.AppendFormat("Course Information" + Environment.NewLine + "    ");
                sb.AppendFormat("Date Remove: {0}" + Environment.NewLine + "    ", txtDate.Text.Trim());
                sb.AppendFormat("Course Number: {0}" + Environment.NewLine + "    ", txtCourseNumber.Text.Trim());
                sb.AppendFormat("Section Number: {0}" + Environment.NewLine + "    ", txtSection.Text.Trim());
                sb.AppendFormat("Semester: {0}" + Environment.NewLine + Environment.NewLine, ddlSemester.SelectedValue);

                sb.AppendFormat("Additional Remarks: {0}" + Environment.NewLine + Environment.NewLine, txtRemarks.Text.Trim());

                sb.AppendFormat("Material Information" + Environment.NewLine + "    ");
                sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor.Text.Trim());
                sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtTitle.Text.Trim());
                sb.AppendFormat("ISBN: {0}" + Environment.NewLine + "    ", txtISBN.Text.Trim());
                sb.AppendFormat("Reserve Type: {0}" + Environment.NewLine + "    ", ddlReserve.SelectedValue);
                sb.AppendFormat("# of Copies: {0}" + Environment.NewLine + "    ", txtCopies.Text.Trim());
                sb.AppendFormat("Material Type: {0}" + Environment.NewLine + Environment.NewLine, ddlMaterial.SelectedValue);

                sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor2.Text.Trim());
                sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtISBN2.Text.Trim());
                sb.AppendFormat("Reserve Type: {0}" + Environment.NewLine + "    ", ddlReserve2.SelectedValue);
                sb.AppendFormat("# of Copies: {0}" + Environment.NewLine + "    ", txtCopies2.Text.Trim());
                sb.AppendFormat("Material Type: {0}" + Environment.NewLine + Environment.NewLine, ddlMaterial2.SelectedValue);

                sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor3.Text.Trim());
                sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtISBN3.Text.Trim());
                sb.AppendFormat("Reserve Type: {0}" + Environment.NewLine + "    ", ddlReserve3.SelectedValue);
                sb.AppendFormat("# of Copies: {0}" + Environment.NewLine + "    ", txtCopies3.Text.Trim());
                sb.AppendFormat("Material Type: {0}" + Environment.NewLine + Environment.NewLine, ddlMaterial3.SelectedValue);

                mailMessage.Body = sb.ToString();
            }
    }

    protected void CancelButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("CirculatingReserves.aspx");
    }
}