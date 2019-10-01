using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Text;

public partial class Request_Databases_Journals : System.Web.UI.Page
{

    //protected static string ReCaptcha_Key = "6Lc4dDUUAAAAAEu7JWvuQAdsCz3k2D_73M4w68kf";
    //protected static string ReCaptcha_Secret = "6Lc4dDUUAAAAALp9Rnb721-Xia6qi6vRa6Rqm6Ou";

    //[WebMethod]
    //public static string VerifyCaptcha(string response)
    //{
    //    string url = "https: //www.google.com/recaptcha/api/siteverify?secret=" + ReCaptcha_Secret + "&response=" + response;
    //    return (new WebClient()).DownloadString(url);
    //}


    protected void Page_Load(object sender, EventArgs e)
          
    {
       // ddlRoom.Focus();
    }



    //protected void CheckBoxRequired_ServerValidate(object sender, ServerValidateEventArgs e)
    //{
    //   e.IsValid = (cbxAgree.Checked == true);
    //}

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            //if (string.IsNullOrEmpty(txtHF.Text))
            //var chkStartTime = System.DateTime.Parse(txtStartTime.Text);
            //var chkEndTime = System.DateTime.Parse(txtEndTime.Text);

            //if ((chkStartTime.TimeOfDay.TotalSeconds > 0) && (chkEndTime.TimeOfDay.TotalSeconds > 0))
            //{
                //############ Mail Settings ############ 

                MailMessage mailMessage = new MailMessage();
                SmtpClient smtpClient = new SmtpClient();

                mailMessage.From = new MailAddress(txtEmail.Text);
                mailMessage.To.Add("milne@geneseo.edu");
                // mailMessage.To.Add("rootl@geneseo.edu");
                //mailMessage.To.Add("ha@geneseo.edu");
                mailMessage.CC.Add(txtEmail.Text);
                mailMessage.Bcc.Add("rootl@geneseo.edu,nuth@geneseo.edu");
                mailMessage.Subject = "Databases and Journals Purchase Request:  " + txtFirstName.Text + " ";
                mailMessage.Priority = MailPriority.Normal;
                mailMessage.IsBodyHtml = false;

                StringBuilder sb = new StringBuilder();

                sb.AppendFormat("Personal Information" + Environment.NewLine + "    " + Environment.NewLine + "    ");
                sb.AppendFormat("Name: {0}" + Environment.NewLine + "    ", txtFirstName.Text.Trim() + Environment.NewLine + "    ");
                sb.AppendFormat("Email: {0}" + Environment.NewLine + "    ", txtEmail.Text.Trim() + Environment.NewLine + "    ");
                sb.AppendFormat("Department or School: {0}" + Environment.NewLine, txtDeptSchool.Text.Trim() + Environment.NewLine);

                sb.AppendFormat("Resource Information" + Environment.NewLine + Environment.NewLine + "    ");
                sb.AppendFormat("Resource Name: {0}" + Environment.NewLine + "    ", txtResourceName.Text.Trim() + Environment.NewLine + "    ");
                sb.AppendFormat("Resource Type(s):" + Environment.NewLine + "    ");
                foreach (ListItem item in cbxResourceType.Items)
                {
                    if (item.Selected)
                        sb.Append(item.Value + "    ");
                }








                //sb.AppendFormat("Status: {0}" + Environment.NewLine + Environment.NewLine, ddlStatus.SelectedValue);

                sb.AppendFormat("    "+ Environment.NewLine + Environment.NewLine + "    ");
                sb.AppendFormat("Vendor or Content Provider:  {0}" + Environment.NewLine + "    " + Environment.NewLine + "    ", txtVendorContentProvider.Text.Trim());

                  if (rblUsedInClass.SelectedValue == "Yes")
                  {
                      sb.AppendFormat("Resource will be used in Class:  Yes" + Environment.NewLine + "    " + Environment.NewLine + "    ");
                      sb.AppendFormat("Which semesters or ongoing semesters: {0}" + Environment.NewLine + "    ", txtWhichSemesters.Text.Trim() + Environment.NewLine + "    ");

                      //sb.AppendFormat("Department: {0}" + Environment.NewLine + "    ", ddlDepartmentActive.SelectedValue);
                      //sb.AppendFormat("Regular Semester Classroom Location: {0}" + Environment.NewLine + Environment.NewLine, txtLocation.Text.Trim());
                  }

                  else if (rblUsedInClass.SelectedValue == "No")
                  {
                      sb.AppendFormat("Resource will be used in Class:  No" + Environment.NewLine + "    " + Environment.NewLine + "    ");
                  }

                  if (rblResearchProject.SelectedValue == "Yes")
                  {
                      sb.AppendFormat("Resource will be used for a student research assignment or project:  Yes" + Environment.NewLine + "    " + Environment.NewLine + "    ");
                      sb.AppendFormat("When is the anticipated start and end date: {0}" + Environment.NewLine + "    ", txtStartEndDates.Text.Trim() + Environment.NewLine + "    ");
                      sb.AppendFormat("Is the assignment or project ongoing?: {0}" + Environment.NewLine + "    ", rblOngoing.SelectedValue + Environment.NewLine + "    ");
                      //sb.AppendFormat("Department: {0}" + Environment.NewLine + "    ", ddlDepartmentActive.SelectedValue);
                      //sb.AppendFormat("Regular Semester Classroom Location: {0}" + Environment.NewLine + Environment.NewLine, txtLocation.Text.Trim());
                  }

                  else if (rblResearchProject.SelectedValue == "No")
                  {
                      sb.AppendFormat("Resource will be used for a student research assignment or project:  No" + Environment.NewLine + "    " + Environment.NewLine + "    ");
                  }

                  sb.AppendFormat("What unique content or features does this resource provide?: {0}" + Environment.NewLine + "    ", txtUnique.Text.Trim() + Environment.NewLine + "    ");


                  if (rblTeachingMultipleMembers.SelectedValue == "Yes")
                  {
                      sb.AppendFormat("Does this resource have potential to support the teaching and research activities of multiple members of the faculty or multiple academic departments:  Yes" + Environment.NewLine + "    " + Environment.NewLine + "    ");
                  }

                  else if (rblTeachingMultipleMembers.SelectedValue == "No")
                  {
                      sb.AppendFormat("Does this resource have potential to support the teaching and research activities of multiple members of the faculty or multiple academic departments:  No" + Environment.NewLine + "    " + Environment.NewLine + "    ");
                  }


                  sb.AppendFormat("How important is this resource to have in the collection? (Scale of 1 to 5 with 1 being Minimally Important, 5 being Essential): {0}" + Environment.NewLine + "    ", rblHowImportant.SelectedValue + Environment.NewLine + "    ");      

                   sb.AppendFormat("Additional comments: {0}" + Environment.NewLine + Environment.NewLine, txtRemarks.Text.Trim());

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

                Response.Redirect("PurchaseRequestDatabasesJournalsThankYou.aspx");
            }

            //else
            //{
            //    MailMessage mailMessage = new MailMessage();
            //    SmtpClient smtpClient = new SmtpClient();

            //    mailMessage.From = new MailAddress(txtEmail.Text);
            //    //mailMessage.To.Add("libinstr@geneseo.edu");
            //    mailMessage.To.Add("ha@geneseo.edu");
            //    // mailMessage.Bcc.Add("ha@geneseo.edu");
            //    //mailMessage.Subject = "Room Request: SPAM" + txtFirstName.Text + " " + txtLastName.Text + " (" + ddlRoom.SelectedValue + ")";

            //    mailMessage.Priority = MailPriority.Normal;
            //    mailMessage.IsBodyHtml = false;

            //    StringBuilder sb = new StringBuilder();

            //    sb.AppendFormat("Personal Information" + Environment.NewLine + "    ");
            //    //sb.AppendFormat("Name: {0}" + Environment.NewLine + "    ", txtFirstName.Text.Trim() + " " + txtLastName.Text.Trim());
            //    //sb.AppendFormat("Email: {0}" + Environment.NewLine + "    ", txtEmail.Text.Trim());
            //    //sb.AppendFormat("Department: {0}" + Environment.NewLine + "    ", txtDepartment.Text.Trim());
            //    //sb.AppendFormat("Office Phone Number: {0}" + Environment.NewLine + "    ", txtPhone.Text.Trim());
            //    //sb.AppendFormat("Status: {0}" + Environment.NewLine + Environment.NewLine, ddlStatus.SelectedValue);

            //    //sb.AppendFormat("Room Information" + Environment.NewLine + "    ");
            //    //sb.AppendFormat("Date Needed: {0}" + Environment.NewLine + "    ", txtDate.Text.Trim());
            //    //sb.AppendFormat("Start Time: {0}" + Environment.NewLine + "    ", txtStartTime.Text.Trim());
            //    //sb.AppendFormat("End Time: {0}" + Environment.NewLine + "    ", txtEndTime.Text.Trim());
            //    //sb.AppendFormat("Number of People: {0}" + Environment.NewLine + "    ", txtStudentNumber.Text.Trim());
            //    //sb.AppendFormat("Room Preference: {0}" + Environment.NewLine + Environment.NewLine, ddlRoom.SelectedValue);

            //    //sb.AppendFormat("Event Information" + Environment.NewLine + "    ");
            //    //sb.AppendFormat("Group or Course Name: {0}" + Environment.NewLine + "    ", txtGroupName.Text.Trim());
            //    //sb.AppendFormat("Course Number: {0}" + Environment.NewLine + "    ", txtCourseNumber.Text.Trim());
            //    //sb.AppendFormat("Section Number: {0}" + Environment.NewLine + "    ", txtSection.Text.Trim());
            //    //sb.AppendFormat("Purpose of Request: {0}" + Environment.NewLine + Environment.NewLine, ddlPurpose.SelectedValue);
            //    //sb.AppendFormat("Additional Remarks: {0}" + Environment.NewLine + Environment.NewLine, txtRemarks.Text.Trim());

            //    mailMessage.Body = sb.ToString();
            //}

        // }
    }


    protected void cbxResourceType_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

protected void rblUsedInClass_SelectedIndexChanged(object sender, EventArgs e)
   {
       if (rblUsedInClass.SelectedValue == "Yes")
       {
           UsedInClassPanel.Visible = true;
           txtWhichSemesters.Focus();
       }
       else if (rblUsedInClass.SelectedValue == "No")
       {
           UsedInClassPanel.Visible = false;
           rblResearchProject.Focus();
       }
}

protected void rblResearchProject_SelectedIndexChanged(object sender, EventArgs e)
{
    if (rblResearchProject.SelectedValue == "Yes")
    {
        ResearchProjectPanel.Visible = true;
        txtStartEndDates.Focus();
    }
    else if (rblResearchProject.SelectedValue == "No")
    {
        ResearchProjectPanel.Visible = false;
        txtUnique.Focus();
    }
}

protected void rblOngoing_SelectedIndexChanged(object sender, EventArgs e)
{
    //    if (rblResearchCollege.SelectedValue == "Yes")
    //    {
    //        collegeResearchYesPanel.Visible = true;
    //        collegeResearchNoPanel.Visible = false;
    //        txtCourseNumber.Focus();
    //    }
    //    else if (rblResearchCollege.SelectedValue == "No")
    //    {
    //        collegeResearchNoPanel.Visible = true;
    //        collegeResearchYesPanel.Visible = false;
    //        txtAssociatedGroup.Focus();
    //    }
}

protected void rblTeachingMultipleMembers_SelectedIndexChanged(object sender, EventArgs e)
{
    //    if rblTeachingMultipleMembers.SelectedValue == "Yes")
    //    {
    //        collegeResearchYesPanel.Visible = true;
    //        collegeResearchNoPanel.Visible = false;
    //        txtCourseNumber.Focus();
    //    }
    //    else if (rblTeachingMultipleMembers.SelectedValue == "No")
    //    {
    //        collegeResearchNoPanel.Visible = true;
    //        collegeResearchYesPanel.Visible = false;
    //        txtAssociatedGroup.Focus();
    //    }
}


  protected void CancelButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("PurchaseRequestDatabasesJournals.aspx");
    }
}