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

public partial class Requests_RoomRequest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void CheckBoxRequired_ServerValidate(object sender, ServerValidateEventArgs e)
    {
        e.IsValid = (cbxAgree.Checked == true);
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            //if (string.IsNullOrEmpty(txtHF.Text))
            var chkStartTime = System.DateTime.Parse(txtStartTime.Text);
            var chkEndTime = System.DateTime.Parse(txtEndTime.Text);

            if ((chkStartTime.TimeOfDay.TotalSeconds > 0) && (chkEndTime.TimeOfDay.TotalSeconds > 0))
            {
                //############ Mail Settings ############ 

                MailMessage mailMessage = new MailMessage();
                SmtpClient smtpClient = new SmtpClient();

                mailMessage.From = new MailAddress(txtEmail.Text);
                mailMessage.To.Add("libinstr@geneseo.edu");
                //mailMessage.To.Add("ha@geneseo.edu");
                mailMessage.Bcc.Add("ha@geneseo.edu,rootl@geneseo.edu");
                mailMessage.Subject = "Room Request: " + txtFirstName.Text + " " + txtLastName.Text + " (" + ddlRoom.SelectedValue + ")";

                mailMessage.Priority = MailPriority.Normal;
                mailMessage.IsBodyHtml = false;

                StringBuilder sb = new StringBuilder();

                sb.AppendFormat("Personal Information" + Environment.NewLine + "    ");
                sb.AppendFormat("Name: {0}" + Environment.NewLine + "    ", txtFirstName.Text.Trim() + " " + txtLastName.Text.Trim());
                sb.AppendFormat("Email: {0}" + Environment.NewLine + "    ", txtEmail.Text.Trim());
                sb.AppendFormat("Department: {0}" + Environment.NewLine + "    ", txtDepartment.Text.Trim());
                sb.AppendFormat("Office Phone Number: {0}" + Environment.NewLine + "    ", txtPhone.Text.Trim());
                sb.AppendFormat("Status: {0}" + Environment.NewLine + Environment.NewLine, ddlStatus.SelectedValue);

                sb.AppendFormat("Room Information" + Environment.NewLine + "    ");
                sb.AppendFormat("Date Needed: {0}" + Environment.NewLine + "    ", txtDate.Text.Trim());
                sb.AppendFormat("Start Time: {0}" + Environment.NewLine + "    ", txtStartTime.Text.Trim());
                sb.AppendFormat("End Time: {0}" + Environment.NewLine + "    ", txtEndTime.Text.Trim());
                sb.AppendFormat("Number of People: {0}" + Environment.NewLine + "    ", txtStudentNumber.Text.Trim());
                sb.AppendFormat("Room Preference: {0}" + Environment.NewLine + Environment.NewLine, ddlRoom.SelectedValue);

                sb.AppendFormat("Event Information" + Environment.NewLine + "    ");
                sb.AppendFormat("Group or Course Name: {0}" + Environment.NewLine + "    ", txtGroupName.Text.Trim());
                sb.AppendFormat("Course Number: {0}" + Environment.NewLine + "    ", txtCourseNumber.Text.Trim());
                sb.AppendFormat("Section Number: {0}" + Environment.NewLine + "    ", txtSection.Text.Trim());
                sb.AppendFormat("Purpose of Request: {0}" + Environment.NewLine + Environment.NewLine, ddlPurpose.SelectedValue);
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

                Response.Redirect("RoomRequestThankYou.aspx");
            }

            else
            {
                MailMessage mailMessage = new MailMessage();
                SmtpClient smtpClient = new SmtpClient();

                mailMessage.From = new MailAddress(txtEmail.Text);
                //mailMessage.To.Add("libinstr@geneseo.edu");
                mailMessage.To.Add("ha@geneseo.edu");
                // mailMessage.Bcc.Add("ha@geneseo.edu");
                mailMessage.Subject = "Room Request: SPAM" + txtFirstName.Text + " " + txtLastName.Text + " (" + ddlRoom.SelectedValue + ")";

                mailMessage.Priority = MailPriority.Normal;
                mailMessage.IsBodyHtml = false;

                StringBuilder sb = new StringBuilder();

                sb.AppendFormat("Personal Information" + Environment.NewLine + "    ");
                sb.AppendFormat("Name: {0}" + Environment.NewLine + "    ", txtFirstName.Text.Trim() + " " + txtLastName.Text.Trim());
                sb.AppendFormat("Email: {0}" + Environment.NewLine + "    ", txtEmail.Text.Trim());
                sb.AppendFormat("Department: {0}" + Environment.NewLine + "    ", txtDepartment.Text.Trim());
                sb.AppendFormat("Office Phone Number: {0}" + Environment.NewLine + "    ", txtPhone.Text.Trim());
                sb.AppendFormat("Status: {0}" + Environment.NewLine + Environment.NewLine, ddlStatus.SelectedValue);

                sb.AppendFormat("Room Information" + Environment.NewLine + "    ");
                sb.AppendFormat("Date Needed: {0}" + Environment.NewLine + "    ", txtDate.Text.Trim());
                sb.AppendFormat("Start Time: {0}" + Environment.NewLine + "    ", txtStartTime.Text.Trim());
                sb.AppendFormat("End Time: {0}" + Environment.NewLine + "    ", txtEndTime.Text.Trim());
                sb.AppendFormat("Number of People: {0}" + Environment.NewLine + "    ", txtStudentNumber.Text.Trim());
                sb.AppendFormat("Room Preference: {0}" + Environment.NewLine + Environment.NewLine, ddlRoom.SelectedValue);

                sb.AppendFormat("Event Information" + Environment.NewLine + "    ");
                sb.AppendFormat("Group or Course Name: {0}" + Environment.NewLine + "    ", txtGroupName.Text.Trim());
                sb.AppendFormat("Course Number: {0}" + Environment.NewLine + "    ", txtCourseNumber.Text.Trim());
                sb.AppendFormat("Section Number: {0}" + Environment.NewLine + "    ", txtSection.Text.Trim());
                sb.AppendFormat("Purpose of Request: {0}" + Environment.NewLine + Environment.NewLine, ddlPurpose.SelectedValue);
                sb.AppendFormat("Additional Remarks: {0}" + Environment.NewLine + Environment.NewLine, txtRemarks.Text.Trim());

                mailMessage.Body = sb.ToString();
            }

        }
    }

    protected void CancelButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("RoomRequest.aspx");
    }
}