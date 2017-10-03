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

public partial class Requests_Consultation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindDropdownlists();
        }
    }

    public void BindDropdownlists()
    {
        DataTable ds = ReferenceInstructionDropdownClass.getDepartmentActive();
        ddlDepartmentActive.DataSource = ds;
        ddlDepartmentActive.DataTextField = ds.Columns["DepartmentActive"].ToString();
        ddlDepartmentActive.DataValueField = ds.Columns["DepartmentActive"].ToString();
        ddlDepartmentActive.DataBind();
        ddlDepartmentActive.Items.Insert(0, new ListItem("-- Select One --", "None"));

        ds = ReferenceInstructionDropdownClass.getPatronType();
        ddlStatus.DataSource = ds;
        ddlStatus.DataTextField = ds.Columns["PatronTypeClassStand"].ToString();
        ddlStatus.DataValueField = ds.Columns["PatronTypeClassStand"].ToString();
        ddlStatus.DataBind();
        ddlStatus.Items.Insert(0, new ListItem("-- Select One --", "None"));

        ds = ReferenceInstructionDropdownClass.getMajor();
        ddlMajor.DataSource = ds;
        ddlMajor.DataTextField = ds.Columns["Major"].ToString();
        ddlMajor.DataValueField = ds.Columns["Major"].ToString();
        ddlMajor.DataBind();
        ddlMajor.Items.Insert(0, new ListItem("-- Select One --", "None"));
        
        
        //DataTable dt = ReferenceInstructionDropdownClass.getDepartmentActive();
        //ddlTechnologyDepartmentActive.DataSource = dt;
        //ddlTechnologyDepartmentActive.DataTextField = dt.Columns["DepartmentActive"].ToString();
        //ddlTechnologyDepartmentActive.DataValueField = dt.Columns["DepartmentActive"].ToString();
        //ddlTechnologyDepartmentActive.DataBind();
        //ddlTechnologyDepartmentActive.Items.Insert(0, new ListItem("-- Select One --", "None"));

        //DataTable dt = ReferenceInstructionDropdownClass.getPatronType();
        //ddlTechnologyStatus.DataSource = dt;
        //ddlTechnologyStatus.DataTextField = dt.Columns["PatronTypeClassStand"].ToString();
        //ddlTechnologyStatus.DataValueField = dt.Columns["PatronTypeClassStand"].ToString();
        //ddlTechnologyStatus.DataBind();
        //ddlTechnologyStatus.Items.Insert(0, new ListItem("-- Select One --", "None"));

        //dt = ReferenceInstructionDropdownClass.getMajor();
        //ddlTechnologyMajor.DataSource = dt;
        //ddlTechnologyMajor.DataTextField = dt.Columns["Major"].ToString();
        //ddlTechnologyMajor.DataValueField = dt.Columns["Major"].ToString();
        //ddlTechnologyMajor.DataBind();
        //ddlTechnologyMajor.Items.Insert(0, new ListItem("-- Select One --", "None"));
           
    }

    //RESEARCH CONSULTATION FORM     

    protected void btnResearchConsultSubmit_Click(object sender, EventArgs e)
    {
        string CurrDate = System.DateTime.Now.ToShortDateString();
        string CurrTime = DateTime.Now.ToString("hh:mm tt");

        string DateSubmitted, TimeSubmitted;

        DateSubmitted = Convert.ToDateTime(CurrDate).ToString("yyyyMMdd");
        TimeSubmitted = Convert.ToDateTime(CurrTime).ToString("hh:mm tt");

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DataPortalConnectionString"].ConnectionString);

        string query = "INSERT INTO [AllFields] ([Location], [QuestionType], [PatronFirstN], [PatronLastN], [Email], [PatronTypeClassStand], [Major], [WhereHeard], [AssDueDate], [isCollege], [CourseNum], [CourseTitle], [Department], [CourseProfFirstN], [CourseProfLastN], [AssGroupProgram], [ProjDescr], [Date], [Time], [FormType], [Librarian1], [QuestionFormat], [Minutes], [ServiceType]) VALUES (@Location, @QuestionType, @FirstN, @LastN, @Email, @Status, @Major, @Referral, @DueDate, @isCollege, @CourseNum, @CourseTitle, @Department, @ProfFirstN, @ProfLastN, @AssocicatedGroup, @ProjDescr, @Date, @Time, @FormType, @Librarian1, @QuestionFormat, @Minutes, @ServiceType)";
       // string query = "INSERT INTO [AllFields] ([Location], [QuestionType], [PatronFirstN], [PatronLastN], [Email], [PatronTypeClassStand], [Major], [AssDueDate],  [CourseNum], [CourseTitle], [Department], [CourseProfFirstN], [CourseProfLastN],  [ProjDescr], [Date], [Time], [FormType], [Librarian1], [QuestionFormat], [Minutes], [ServiceType]) VALUES (@Location, @QuestionType, @FirstN, @LastN, @Email, @Status, @Major,  @DueDate, @isCollege, @CourseNum, @CourseTitle, @Department, @ProfFirstN, @ProfLastN,  @ProjDescr, @Date, @Time, @FormType, @Librarian1, @QuestionFormat, @Minutes, @ServiceType)";

        SqlCommand cmd = new SqlCommand(query, conn);

		cmd.Parameters.AddWithValue("@Location", "Instruction Office");
        //cmd.Parameters.AddWithValue("@QuestionType", rblType.SelectedValue);
        cmd.Parameters.AddWithValue("@QuestionType", "Research-Reference");
        cmd.Parameters.AddWithValue("@FirstN", txtFirstName.Text);
        cmd.Parameters.AddWithValue("@LastN", txtLastName.Text);
        cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
        cmd.Parameters.AddWithValue("@Status", ddlStatus.SelectedValue);
        cmd.Parameters.AddWithValue("@Major", ddlMajor.SelectedValue);
       // cmd.Parameters.AddWithValue("@Referral", ddlReferral.SelectedValue);
        cmd.Parameters.AddWithValue("@Referral", "None"); 
        cmd.Parameters.AddWithValue("@DueDate", txtDueDate.Text);
       //cmd.Parameters.AddWithValue("@isCollege", rblResearchCollege.SelectedValue);
        cmd.Parameters.AddWithValue("@isCollege", "Yes");
        cmd.Parameters.AddWithValue("@CourseNum", txtCourseNumber.Text);
        cmd.Parameters.AddWithValue("@CourseTitle", txtCourseTitle.Text);
        cmd.Parameters.AddWithValue("@Department", ddlDepartmentActive.SelectedValue);
        cmd.Parameters.AddWithValue("@ProfFirstN", txtProfFirstName.Text);
        cmd.Parameters.AddWithValue("@ProfLastN", txtProfLastName.Text);
      //  cmd.Parameters.AddWithValue("@AssocicatedGroup", txtAssociatedGroup.Text);
        cmd.Parameters.AddWithValue("@AssocicatedGroup", "   ");
        cmd.Parameters.AddWithValue("@ProjDescr", txtDescription.Text);
        cmd.Parameters.AddWithValue("@Date", DateSubmitted);
        cmd.Parameters.AddWithValue("@Time", TimeSubmitted);
        cmd.Parameters.AddWithValue("@FormType", "Consultation");
        cmd.Parameters.AddWithValue("@Librarian1", "None");
        cmd.Parameters.AddWithValue("@QuestionFormat", "Scheduled Appointment");
        cmd.Parameters.AddWithValue("@Minutes", "10");
        cmd.Parameters.AddWithValue("@ServiceType", "LibRef");

        try
        {
            conn.Open();
            cmd.ExecuteNonQuery();
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            lblErrorMessage.Text = "Error. " + ex.Message;
            lblErrorMessage.ForeColor = System.Drawing.Color.Red;
        }

        finally
        {
            conn.Close();
        }

        //############ Mail Settings ############ 

        MailMessage mailMessage = new MailMessage();
        SmtpClient smtpClient = new SmtpClient();

        //Dim SmtpClient As New SmtpClient("137.238.1.161")

        mailMessage.From = new MailAddress("research-help-googlegroup@geneseo.edu");
        mailMessage.To.Add("libinstr@geneseo.edu, research-help-googlegroup@geneseo.edu");
        //mailMessage.To.Add("ha@geneseo.edu");
        mailMessage.Bcc.Add("ha@geneseo.edu,rootl@geneseo.edu");
        mailMessage.Subject = "Research Consultation Request: " + txtFirstName.Text + " " + txtLastName.Text;

        mailMessage.Priority = MailPriority.Normal;
        mailMessage.IsBodyHtml = false;

        StringBuilder sb = new StringBuilder();

        sb.AppendFormat("Personal Information" + Environment.NewLine + "    ");
        sb.AppendFormat("Name: {0}" + Environment.NewLine + "    ", txtFirstName.Text.Trim() + " " + txtLastName.Text.Trim());
        sb.AppendFormat("Email: {0}" + Environment.NewLine + "    ", txtEmail.Text.Trim());
        sb.AppendFormat("Additional Email addresses: {0}" + Environment.NewLine + "    ", txtAdditionalEmails.Text.Trim());
/*         sb.AppendFormat("Phone: {0}" + Environment.NewLine + "    ", txtPhone.Text.Trim()); */
        sb.AppendFormat("Status: {0}" + Environment.NewLine + "    ", ddlStatus.SelectedValue);
        sb.AppendFormat("Major: {0}" + Environment.NewLine + "    ", ddlMajor.SelectedValue);
/*         sb.AppendFormat("Referred By: {0}" + Environment.NewLine + Environment.NewLine, ddlReferral.SelectedValue); */

        sb.AppendFormat("Assignment Information" + Environment.NewLine + "    ");
        sb.AppendFormat("Assignment Due Date: {0}" + Environment.NewLine + "    ", txtDueDate.Text.Trim());

        //if (rblResearchCollege.SelectedValue == "Yes")
        //{
            sb.AppendFormat("Course Number: {0}" + Environment.NewLine + "    ", txtCourseNumber.Text.Trim());
            sb.AppendFormat("Course Title: {0}" + Environment.NewLine + "    ", txtCourseTitle.Text.Trim());
            sb.AppendFormat("Department: {0}" + Environment.NewLine + "    ", ddlDepartmentActive.SelectedValue);
            sb.AppendFormat("Course Prof. First Name: {0}" + Environment.NewLine + "    ", txtProfFirstName.Text.Trim());
            sb.AppendFormat("Course Prof. Last Name: {0}" + Environment.NewLine + "    ", txtProfLastName.Text.Trim());
        //}
        //else if (rblResearchCollege.SelectedValue == "No")
        //{
        //    sb.AppendFormat("Associated Group or Program: {0}" + Environment.NewLine + "    ", txtAssociatedGroup.Text.Trim());
        //}

/*         sb.AppendFormat("Resources Consulted: {0}" + Environment.NewLine + Environment.NewLine, txtResources.Text.Trim()); */
            sb.AppendFormat("Assignment Topic: {0}" + Environment.NewLine + "    ", txtDescription.Text.Trim());
            sb.AppendFormat("Number of Pages: {0}" + Environment.NewLine + "    ", txtNumberPages.Text.Trim());
            sb.AppendFormat("Number of Sources: {0}" + Environment.NewLine + "    ", txtNumberSources.Text.Trim());
            sb.AppendFormat("What Do You Need:" + Environment.NewLine + "    ");
            foreach (ListItem item in CheckboxListDoYouNeed.Items)
            {
                if (item.Selected)
                sb.Append(item.Value + ", ");
            }

            //foreach (ListItem item in CheckboxListDoYouNeed.Items)
            //{
            //    if (item.Selected)
            //    {
            //        sb.Append(item.Value);
            //        sb.Append(" ;");
            //    }
            //}
            //String sFinalEmailListString = string.Empty;
            //if (!String.IsNullOrEmpty(sb.ToString()))
            //    sFinalEmailListString = sb.ToString().TrimEnd(';');

            //CheckboxListDoYouNeed.Text = sFinalEmailListString;
            sb.AppendFormat(Environment.NewLine + "    ");
            sb.AppendFormat("Suggested Days/Times: {0}" + Environment.NewLine + "    ", txtDates.Text.Trim());
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

        Response.Redirect("ConsultationThankYou.aspx");
    }

    protected void ResearchConsultCancelButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("Consultation.aspx");
        ClearFields(Page);
    }

    //TECHNOLOGY CONSULTATION FORM  

//    protected void btnTechnologyConsultbtnSubmit_Click(object sender, EventArgs e)
//    {
//        string CurrDate = System.DateTime.Now.ToShortDateString();
//        string CurrTime = DateTime.Now.ToString("hh:mm tt");

//        string DateSubmitted, TimeSubmitted;

//        DateSubmitted = Convert.ToDateTime(CurrDate).ToString("yyyyMMdd");
//        TimeSubmitted = Convert.ToDateTime(CurrTime).ToString("hh:mm tt");

//        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DataPortalConnectionString"].ConnectionString);

//        //string query = "INSERT INTO [AllFields] ([Location],[QuestionType], [PatronFirstN], [PatronLastN], [Email], [PatronTypeClassStand], [Major], [WhereHeard], [AssDueDate], [isCollege], [CourseNum], [CourseTitle], [Department], [CourseProfFirstN], [CourseProfLastN], [AssGroupProgram], [ProjDescr], [Date], [Time], [FormType], [Librarian1], [QuestionFormat], [Minutes], [ServiceType]) VALUES (@Location, @QuestionType, @FirstN, @LastN, @Email, @Status, @Major, @Referral, @DueDate, @isCollege, @CourseNum, @CourseTitle, @Department, @ProfFirstN, @ProfLastN, @AssocicatedGroup, @ProjDescr, @Date, @Time, @FormType, @Librarian1, @QuestionFormat, @Minutes, @ServiceType)";
//        string query = "INSERT INTO [AllFields] ([Location],[QuestionType], [PatronFirstN], [PatronLastN], [Email],  [AssDueDate],  [CourseNum], [CourseTitle],  [CourseProfFirstN], [CourseProfLastN],  [ProjDescr], [Date], [Time], [FormType], [Librarian1], [QuestionFormat], [Minutes], [ServiceType]) VALUES (@Location, @QuestionType, @FirstN, @LastN, @Email, @Status,  @DueDate,  @CourseNum, @CourseTitle,  @ProfFirstN, @ProfLastN,  @ProjDescr, @Date, @Time, @FormType, @Librarian1, @QuestionFormat, @Minutes, @ServiceType)";

//        SqlCommand cmd = new SqlCommand(query, conn);

//        cmd.Parameters.AddWithValue("@Location", "ITS Office");
//        //cmd.Parameters.AddWithValue("@QuestionType", rblType.SelectedValue);
//        cmd.Parameters.AddWithValue("@QuestionType", "Technology");
//        cmd.Parameters.AddWithValue("@FirstN", txtTechnologyFirstName.Text);
//        cmd.Parameters.AddWithValue("@LastN", txtTechnologyLastName.Text);
//        cmd.Parameters.AddWithValue("@Email", txtTechnologyEmail.Text);
//        //cmd.Parameters.AddWithValue("@Status", ddlTechnologyStatus.SelectedValue);
//        //cmd.Parameters.AddWithValue("@Major", ddlTechnologyMajor.SelectedValue);
///*         cmd.Parameters.AddWithValue("@Referral", ddlTechnologyReferral.SelectedValue); */
//        cmd.Parameters.AddWithValue("@DueDate", txtTechnologyDueDate.Text);
//        //cmd.Parameters.AddWithValue("@isCollege", rblTechnologyCollege.SelectedValue);
//        cmd.Parameters.AddWithValue("@CourseNum", txtTechnologyCourseNumber.Text);
//        cmd.Parameters.AddWithValue("@CourseTitle", txtTechnologyCourseTitle.Text);
//        //cmd.Parameters.AddWithValue("@Department", ddlTechnologyDepartmentActive.SelectedValue);
//        cmd.Parameters.AddWithValue("@ProfFirstN", txtTechnologyProfFirstName.Text);
//        cmd.Parameters.AddWithValue("@ProfLastN", txtTechnologyProfLastName.Text);
//        //cmd.Parameters.AddWithValue("@AssocicatedGroup", txtTechnologyAssociatedGroup.Text);
//        cmd.Parameters.AddWithValue("@ProjDescr", txtTechnologyDescription.Text);
//        cmd.Parameters.AddWithValue("@Date", DateSubmitted);
//        cmd.Parameters.AddWithValue("@Time", TimeSubmitted);
//        cmd.Parameters.AddWithValue("@FormType", "Consultation");
//        cmd.Parameters.AddWithValue("@Librarian1", "None");
//        cmd.Parameters.AddWithValue("@QuestionFormat", "Scheduled Appointment");
//        cmd.Parameters.AddWithValue("@Minutes", "30");
//        cmd.Parameters.AddWithValue("@ServiceType", "LibRef");

//        try
//        {
//            conn.Open();
//            cmd.ExecuteNonQuery();
//        }
//        catch (System.Data.SqlClient.SqlException ex)
//        {
//            lblErrorMessage.Text = "Error. " + ex.Message;
//            lblErrorMessage.ForeColor = System.Drawing.Color.Red;
//        }

//        finally
//        {
//            conn.Close();
//        }

//        //############ Mail Settings ############ 

//        MailMessage mailMessage = new MailMessage();
//        SmtpClient smtpClient = new SmtpClient();

//        //Dim SmtpClient As New SmtpClient("137.238.1.161")

//        mailMessage.From = new MailAddress(txtTechnologyEmail.Text);
//        mailMessage.To.Add("libinstr@geneseo.edu, dresbach@geneseo.edu, browna@geneseo.edu");
//        //mailMessage.To.Add("ha@geneseo.edu");
//        mailMessage.Bcc.Add("ha@geneseo.edu,rootl@geneseo.edu");
//        mailMessage.Subject = "Technology Consultation Request: " + txtTechnologyFirstName.Text + " " + txtTechnologyLastName.Text;

//        mailMessage.Priority = MailPriority.Normal;
//        mailMessage.IsBodyHtml = false;

//        StringBuilder sb = new StringBuilder();

//        sb.AppendFormat("Personal Information" + Environment.NewLine + "    ");
//        sb.AppendFormat("Name: {0}" + Environment.NewLine + "    ", txtTechnologyFirstName.Text.Trim() + " " + txtTechnologyLastName.Text.Trim());
//        sb.AppendFormat("Email: {0}" + Environment.NewLine + "    ", txtTechnologyEmail.Text.Trim());
//        sb.AppendFormat("Additional Email addresses: {0}" + Environment.NewLine + "    ", txtAdditionalEmails.Text.Trim());
//    /*     sb.AppendFormat("Phone: {0}" + Environment.NewLine + "    ", txtTechnologyPhone.Text.Trim()); */
//        //sb.AppendFormat("Status: {0}" + Environment.NewLine + "    ", ddlTechnologyStatus.SelectedValue);
//        //sb.AppendFormat("Major: {0}" + Environment.NewLine + "    ", ddlTechnologyMajor.SelectedValue);
///*         sb.AppendFormat("Referred By: {0}" + Environment.NewLine + Environment.NewLine, ddlTechnologyReferral.SelectedValue); */

//        sb.AppendFormat("Assignment Information" + Environment.NewLine + "    ");
//        sb.AppendFormat("Assignment Due Date: {0}" + Environment.NewLine + "    ", txtTechnologyDueDate.Text.Trim());

//        //if (rblTechnologyCollege.SelectedValue == "Yes")
//        //{
//            sb.AppendFormat("Course Number: {0}" + Environment.NewLine + "    ", txtTechnologyCourseNumber.Text.Trim());
//            sb.AppendFormat("Course Title: {0}" + Environment.NewLine + "    ", txtTechnologyCourseTitle.Text.Trim());
//            //sb.AppendFormat("Department: {0}" + Environment.NewLine + "    ", ddlTechnologyDepartmentActive.SelectedValue);
//            sb.AppendFormat("Course Prof. First Name: {0}" + Environment.NewLine + "    ", txtTechnologyProfFirstName.Text.Trim());
//            sb.AppendFormat("Course Prof. Last Name: {0}" + Environment.NewLine + "    ", txtTechnologyProfLastName.Text.Trim());
//        //}
//        //else if (rblTechnologyCollege.SelectedValue == "No")
//        //{
//        //    sb.AppendFormat("Associated Group or Program: {0}" + Environment.NewLine + "    ", txtTechnologyAssociatedGroup.Text.Trim());
//        //}

//        sb.AppendFormat("Project Description: {0}" + Environment.NewLine + Environment.NewLine, txtTechnologyDescription.Text.Trim());
//        sb.AppendFormat("Suggested Days/Times: {0}" + Environment.NewLine + Environment.NewLine, txtTechnologyDates.Text.Trim());

//        mailMessage.Body = sb.ToString();

//        try
//        {
//            smtpClient.Send(mailMessage);
//        }
//        catch (System.Net.Mail.SmtpException ex)
//        {
//            lblErrorMessage.Text = "Error. " + ex.Message;
//            lblErrorMessage.ForeColor = System.Drawing.Color.Red;
//        }

//        Response.Redirect("ConsultationThankYou.aspx");
//    }

//    protected void TechnologyConsultCancelButton_Click(object sender, EventArgs e)
//    {
//        Server.Transfer("Consultation.aspx");
//        ClearFields(Page);
//    }

    //IMPORTANT - this is what determines which form to use

    //protected void rblType_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    if (rblType.SelectedValue == "Research-Reference")
    //    {
    //        ResearchConsultationPanel.Visible = true;
    //        TechnologyConsultationPanel.Visible = false;
    //        ResearchConsultationInfoPanel.Visible = true;
    //        TechnologyConsultationInfoPanel.Visible = false;
    //        txtFirstName.Focus();
    //    }
    //    else if (rblType.SelectedValue == "Technology")
    //    {
    //        ResearchConsultationPanel.Visible = false;
    //        TechnologyConsultationPanel.Visible = true;
    //        ResearchConsultationInfoPanel.Visible = false;
    //        TechnologyConsultationInfoPanel.Visible = true;
    //        txtTechnologyFirstName.Focus();
    //    }
    //}

    //protected void rblResearchCollege_SelectedIndexChanged(object sender, EventArgs e)
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

    //protected void rblTechnologyCollege_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    if (rblTechnologyCollege.SelectedValue == "Yes")
    //    {
    //        collegeTechnologyYesPanel.Visible = true;
    //        collegeTechnologyNoPanel.Visible = false;
    //        txtTechnologyCourseNumber.Focus();
    //    }
    //    else if (rblTechnologyCollege.SelectedValue == "No")
    //    {
    //        collegeTechnologyNoPanel.Visible = true;
    //        collegeTechnologyYesPanel.Visible = false;
    //        txtTechnologyAssociatedGroup.Focus();
    //    }
    //}

    protected void ClearFields(Control p1)
    {
        foreach (Control ctrl in p1.Controls)
        {
            if (ctrl is TextBox)
            {
                TextBox t = ctrl as TextBox;

                if (t != null)
                {
                    t.Text = String.Empty;
                }
            }
            else if (ctrl is DropDownList)
            {
                DropDownList t = ctrl as DropDownList;

                if (t != null)
                {
                    t.SelectedIndex = -1;
                }
            }
            else
            {
                if (ctrl.Controls.Count > 0)
                {
                    ClearFields(ctrl);
                }
            }
        }
        //rblType.SelectedIndex = -1;
        ResearchConsultationPanel.Visible = false;
        //TechnologyConsultationPanel.Visible = false;
        ResearchConsultationInfoPanel.Visible = false;
        //TechnologyConsultationInfoPanel.Visible = false;
    }

    protected void ResearchConsultInfoPanelLink_Click(object sender, EventArgs e)
    {
        ResearchConsultationInfoPanel.Visible = true;
        //TechnologyConsultationInfoPanel.Visible = false;
        ResearchConsultationPanel.Visible = false ;
        //TechnologyConsultationPanel.Visible = false;
        //rblType.SelectedIndex = -1;
    
    }

    protected void TechnologyConsultInfoPanelLink_Click(object sender, EventArgs e)
    {
        ResearchConsultationInfoPanel.Visible = false;
        //TechnologyConsultationInfoPanel.Visible = true;
        ResearchConsultationPanel.Visible = false;
        //TechnologyConsultationPanel.Visible = false;
        //rblType.SelectedIndex = -1;
    }

    protected void ResearchConsultClosePanel_Click(object sender, EventArgs e)
    {
        ResearchConsultationInfoPanel.Visible = false;
        //TechnologyConsultationInfoPanel.Visible = false;
      // ResearchConsultationPanel.Visible = false;        
      //  TechnologyConsultationPanel.Visible = false;
        //rblType.SelectedIndex = -1;
        //ClearFields(Page);

    }

    protected void TechnologyConsultClosePanel_Click(object sender, EventArgs e)
    {
        ResearchConsultationInfoPanel.Visible = false;
        //TechnologyConsultationInfoPanel.Visible = false;
       // ResearchConsultationPanel.Visible = false;        
       // TechnologyConsultationPanel.Visible = false;
       // rblType.SelectedIndex = -1;
        //ClearFields(Page);
    }  
    
    

    protected void btnReset_Click(object sender, EventArgs e)
    {
        ClearFields(Page);
        //rblType.SelectedIndex = -1;

    }



    //protected void ResetType(object sender, EventArgs e)
    //{
    //    ClearFields(Page);
    //}


    protected void CheckboxList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}