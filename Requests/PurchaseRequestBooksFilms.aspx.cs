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
using System.Runtime.Serialization;
using System.Runtime.Serialization.Json;
using System.IO;

public partial class Request_Books_Films : System.Web.UI.Page
{

    //private string GetUserIP()
    //{
    //    string ipList = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

    //    if (!string.IsNullOrEmpty(ipList))
    //    {
    //        return ipList.Split(',')[0];
    //    }

    //    return Request.ServerVariables["REMOTE_ADDR"];
    //}


    public static class IP
    {
        public static string GetIPAddress()
        {
            return GetIPAddress(new HttpRequestWrapper(HttpContext.Current.Request));
        }

        internal static string GetIPAddress(HttpRequestBase request)
        {
            // handle standardized 'Forwarded' header
            string forwarded = request.Headers["Forwarded"];
            if (!String.IsNullOrEmpty(forwarded))
            {
                foreach (string segment in forwarded.Split(',')[0].Split(';'))
                {
                    string[] pair = segment.Trim().Split('=');
                    if (pair.Length == 2 && pair[0].Equals("for", StringComparison.OrdinalIgnoreCase))
                    {
                        string ip = pair[1].Trim('"');

                        // IPv6 addresses are always enclosed in square brackets
                        int left = ip.IndexOf('['), right = ip.IndexOf(']');
                        if (left == 0 && right > 0)
                        {
                            return ip.Substring(1, right - 1);
                        }

                        // strip port of IPv4 addresses
                        int colon = ip.IndexOf(':');
                        if (colon != -1)
                        {
                            return ip.Substring(0, colon);
                        }

                        // this will return IPv4, "unknown", and obfuscated addresses
                        return ip;
                    }
                }
            }

            // handle non-standardized 'X-Forwarded-For' header
            string xForwardedFor = request.Headers["X-Forwarded-For"];
            if (!String.IsNullOrEmpty(xForwardedFor))
            {
                return xForwardedFor.Split(',')[0];
            }

            return request.UserHostAddress;
        }
    }



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
          //  string IPAddresses = Request.ServerVariables.ToString();
       
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
                //mailMessage.To.Add("ha@geneseo.edu");
                mailMessage.CC.Add(txtEmail.Text);
                mailMessage.Bcc.Add("rootl@geneseo.edu,nuth@geneseo.edu");
                mailMessage.Subject = "Books and Films Purchase Request:  " + txtFirstName.Text + " ";
                mailMessage.Priority = MailPriority.Normal;
                mailMessage.IsBodyHtml = false;

                StringBuilder sb = new StringBuilder();

                sb.AppendFormat("Personal Information" + Environment.NewLine + "    " + Environment.NewLine + "    ");
                sb.AppendFormat("Name: {0}" + Environment.NewLine + "    ", txtFirstName.Text.Trim() + Environment.NewLine + "    ");
                sb.AppendFormat("Email: {0}" + Environment.NewLine + "    ", txtEmail.Text.Trim() + Environment.NewLine + "    ");
                sb.AppendFormat("Department or School: {0}" + Environment.NewLine, txtDeptSchool.Text.Trim() + Environment.NewLine);

                sb.AppendFormat("Resource Information" + Environment.NewLine + Environment.NewLine + "    ");
                sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtResourceName.Text.Trim() + Environment.NewLine + "    ");
                sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor.Text.Trim() + Environment.NewLine + "    ");
                sb.AppendFormat("Publisher or Distributor: {0}" + Environment.NewLine + "    ", txtPublisherDistributor.Text.Trim() + Environment.NewLine + "    ");
                sb.AppendFormat("Year of Publication: {0}" + Environment.NewLine + "    ", txtYearPublication.Text.Trim() + Environment.NewLine + "    ");
                sb.AppendFormat("Edition: {0}" + Environment.NewLine + "    ", txtEdition.Text.Trim() + Environment.NewLine + "    ");
                sb.AppendFormat("ISBN: {0}" + Environment.NewLine + "    ", txtISBN.Text.Trim() + Environment.NewLine + "    ");

                if (rblPriority.SelectedValue == "Essential")
                    {
                        sb.AppendFormat("Level of priority for this purchase:  Essential" + Environment.NewLine + "    " + Environment.NewLine + "    ");
                    }
                else if (rblPriority.SelectedValue == "Highly Recommended")
                {
                    sb.AppendFormat("Level of priority for this purchase:  Highly Recommended" + Environment.NewLine + "    " + Environment.NewLine + "    ");
                }
                else if (rblPriority.SelectedValue == "Recommended")
                {
                    sb.AppendFormat("Level of priority for this purchase:  Recommended" + Environment.NewLine + "    " + Environment.NewLine + "    ");
                } 


                sb.AppendFormat("Would you like this item placed on hold for you: {0}" + Environment.NewLine + "    ", rblPlacedOnHold.SelectedValue.Trim() + Environment.NewLine + "    ");
                //sb.AppendFormat("Resource Type(s):" + Environment.NewLine + "    ");


                sb.AppendFormat("Would you like this item placed on hold for you: {0}" + Environment.NewLine, rblPlacedOnHold.SelectedValue.Trim() + Environment.NewLine);

                sb.AppendFormat("Course Reserve Information: " + Environment.NewLine + Environment.NewLine + "    ");

                sb.AppendFormat("Course Name: {0}"  + Environment.NewLine + "    ", txtCourseName.Text.Trim() + Environment.NewLine + "    ");
                sb.AppendFormat("Course Number: {0}" + Environment.NewLine + "    ", txtCourseNumber.Text.Trim() + Environment.NewLine + "    ");
                sb.AppendFormat("Semester: {0}" + Environment.NewLine + "    ", txtSemester.Text.Trim() + Environment.NewLine + Environment.NewLine + "    ");
          
            
                sb.AppendFormat("Additional comments: {0}" + Environment.NewLine + Environment.NewLine, txtRemarks.Text.Trim());
 //             sb.AppendFormat("Sender IP Address(es): {0}" + Environment.NewLine + Environment.NewLine, IPAddresses);
 //             sb.AppendFormat("Sender IP Address(es): {0}" + Environment.NewLine + Environment.NewLine, GetIPAddress.toString());
            

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

                Response.Redirect("PurchaseRequestBooksFilmsThankYou.aspx");
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


    //protected void cbxResourceType_SelectedIndexChanged(object sender, EventArgs e)
    //{

    //}

//protected void rblUsedInClass_SelectedIndexChanged(object sender, EventArgs e)
//   {
//       if (rblUsedInClass.SelectedValue == "Yes")
//       {
//           UsedInClassPanel.Visible = true;
//           txtWhichSemesters.Focus();
//       }
//       else if (rblUsedInClass.SelectedValue == "No")
//       {
//           UsedInClassPanel.Visible = false;
//           rblResearchProject.Focus();
//       }
//}

//protected void rblResearchProject_SelectedIndexChanged(object sender, EventArgs e)
//{
//    if (rblResearchProject.SelectedValue == "Yes")
//    {
//        ResearchProjectPanel.Visible = true;
//        txtStartEndDates.Focus();
//    }
//    else if (rblResearchProject.SelectedValue == "No")
//    {
//        ResearchProjectPanel.Visible = false;
//        txtUnique.Focus();
 //   }
//}

//protected void rblOngoing_SelectedIndexChanged(object sender, EventArgs e)
//{
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
//}

//protected void rblTeachingMultipleMembers_SelectedIndexChanged(object sender, EventArgs e)
//{
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
//}


  protected void CancelButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("PurchaseRequestBooksFilms.aspx");
    }
}