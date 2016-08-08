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

public partial class Requests_Instruction : System.Web.UI.Page
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

        //DataTable da = ReferenceInstructionDropdownClass.getLibAssessStrategy();
        //ddlAssessment1.DataSource = da;
        //ddlAssessment1.DataTextField = da.Columns["LibAssessStrat"].ToString();
        //ddlAssessment1.DataValueField = da.Columns["LibAssessStrat"].ToString();
        //ddlAssessment1.DataBind();
        //ddlAssessment1.Items.Insert(0, new ListItem("-- Select One --", "None"));

        //ddlAssessment2.DataSource = da;
        //ddlAssessment2.DataTextField = da.Columns["LibAssessStrat"].ToString();
        //ddlAssessment2.DataValueField = da.Columns["LibAssessStrat"].ToString();
        //ddlAssessment2.DataBind();
        //ddlAssessment2.Items.Insert(0, new ListItem("-- Select One --", "None"));

        //DataTable dc = ReferenceInstructionDropdownClass.getLibSkillConcept();
        //ddlSkill1.DataSource = dc;
        //ddlSkill1.DataTextField = dc.Columns["LibSkillConcept"].ToString();
        //ddlSkill1.DataValueField = dc.Columns["LibSkillConcept"].ToString();
        //ddlSkill1.DataBind();
        //ddlSkill1.Items.Insert(0, new ListItem("-- Select One --", "None"));

        //ddlSkill2.DataSource = dc;
        //ddlSkill2.DataTextField = dc.Columns["LibSkillConcept"].ToString();
        //ddlSkill2.DataValueField = dc.Columns["LibSkillConcept"].ToString();
        //ddlSkill2.DataBind();
        //ddlSkill2.Items.Insert(0, new ListItem("-- Select One --", "None"));

        //ddlSkill3.DataSource = dc;
        //ddlSkill3.DataTextField = dc.Columns["LibSkillConcept"].ToString();
        //ddlSkill3.DataValueField = dc.Columns["LibSkillConcept"].ToString();
        //ddlSkill3.DataBind();
        //ddlSkill3.Items.Insert(0, new ListItem("-- Select One --", "None"));

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DataPortalConnectionString"].ConnectionString);

        string query = "INSERT INTO [AllFields] ([InstructionType], [CourseProfFirstN], [CourseProfLastN], [Email], [Phone], [PlannedNumStudents], [isCollege], [CourseNum], [CourseTitle], [Department], [AssGroupProgram], [NonCollWorkTitle], [LibSkillConcept1], [LibSkillConcept2], [LibSkillConcept3], [LibGoalsDetails], [Date], [Time], [LibHSEndTime], [LibGearTowards], [LibHaveTopics], [LibAssessDetails], [LibAssessStrat1], [LibAssessStrat2], [Comments], [FormType], [Librarian1], [Librarian2], [QuestionFormat], [Minutes], [Librarian1PrepTime], [Librarian2PrepTime], [StudFeedMinutes], [ServiceType]) VALUES (@InstructionType, @FirstN, @LastN, @Email, @Phone, @StudentNumber, @isCollege, @CourseNum, @CourseTitle, @Department, @AssocicatedGroup, @WorkshopTitle, @SkillConcept1, @SkillConcept2, @SkillConcept3, @GoalsDetails, @Date, @StartTime, @EndTime, @GearTowards, @HaveTopics, @AssessDetails, @Strategy1, @Strategy2, @Comments, @FormType, @Librarian1, @Librarian2, @QuestionFormat, @Minutes, @PrepTime1, @PrepTime2, @FeedMinutes, @ServiceType)";

        if (!string.IsNullOrEmpty(txtDueDate2.Text))
        {
            query += "INSERT INTO [AllFields] ([InstructionType], [CourseProfFirstN], [CourseProfLastN], [Email], [Phone], [PlannedNumStudents], [isCollege], [CourseNum], [CourseTitle], [Department], [AssGroupProgram], [NonCollWorkTitle], [LibSkillConcept1], [LibSkillConcept2], [LibSkillConcept3], [LibGoalsDetails], [Date], [Time], [LibHSEndTime], [LibGearTowards], [LibHaveTopics], [LibAssessDetails], [LibAssessStrat1], [LibAssessStrat2], [Comments], [FormType], [Librarian1], [Librarian2], [QuestionFormat], [Minutes], [Librarian1PrepTime], [Librarian2PrepTime], [StudFeedMinutes], [ServiceType]) VALUES (@InstructionType, @FirstN, @LastN, @Email, @Phone, @StudentNumber, @isCollege, @CourseNum, @CourseTitle, @Department, @AssocicatedGroup, @WorkshopTitle, @SkillConcept1, @SkillConcept2, @SkillConcept3, @GoalsDetails, @Date2, @StartTime, @EndTime, @GearTowards, @HaveTopics, @AssessDetails, @Strategy1, @Strategy2, @Comments, @FormType, @Librarian1, @Librarian2, @QuestionFormat, @Minutes, @PrepTime1, @PrepTime2, @FeedMinutes, @ServiceType)";
        }

        if (!string.IsNullOrEmpty(txtDueDate3.Text))
        {
            query += "INSERT INTO [AllFields] ([InstructionType], [CourseProfFirstN], [CourseProfLastN], [Email], [Phone], [PlannedNumStudents], [isCollege], [CourseNum], [CourseTitle], [Department], [AssGroupProgram], [NonCollWorkTitle], [LibSkillConcept1], [LibSkillConcept2], [LibSkillConcept3], [LibGoalsDetails], [Date], [Time], [LibHSEndTime], [LibGearTowards], [LibHaveTopics], [LibAssessDetails], [LibAssessStrat1], [LibAssessStrat2], [Comments], [FormType], [Librarian1], [Librarian2], [QuestionFormat], [Minutes], [Librarian1PrepTime], [Librarian2PrepTime], [StudFeedMinutes], [ServiceType]) VALUES (@InstructionType, @FirstN, @LastN, @Email, @Phone, @StudentNumber, @isCollege, @CourseNum, @CourseTitle, @Department, @AssocicatedGroup, @WorkshopTitle, @SkillConcept1, @SkillConcept2, @SkillConcept3, @GoalsDetails, @Date3, @StartTime, @EndTime, @GearTowards, @HaveTopics, @AssessDetails, @Strategy1, @Strategy2, @Comments, @FormType, @Librarian1, @Librarian2, @QuestionFormat, @Minutes, @PrepTime1, @PrepTime2, @FeedMinutes, @ServiceType)";
        }

        if (!string.IsNullOrEmpty(txtDueDate4.Text))
        {
            query += "INSERT INTO [AllFields] ([InstructionType], [CourseProfFirstN], [CourseProfLastN], [Email], [Phone], [PlannedNumStudents], [isCollege], [CourseNum], [CourseTitle], [Department], [AssGroupProgram], [NonCollWorkTitle], [LibSkillConcept1], [LibSkillConcept2], [LibSkillConcept3], [LibGoalsDetails], [Date], [Time], [LibHSEndTime], [LibGearTowards], [LibHaveTopics], [LibAssessDetails], [LibAssessStrat1], [LibAssessStrat2], [Comments], [FormType], [Librarian1], [Librarian2], [QuestionFormat], [Minutes], [Librarian1PrepTime], [Librarian2PrepTime], [StudFeedMinutes], [ServiceType]) VALUES (@InstructionType, @FirstN, @LastN, @Email, @Phone, @StudentNumber, @isCollege, @CourseNum, @CourseTitle, @Department, @AssocicatedGroup, @WorkshopTitle, @SkillConcept1, @SkillConcept2, @SkillConcept3, @GoalsDetails, @Date4, @StartTime, @EndTime, @GearTowards, @HaveTopics, @AssessDetails, @Strategy1, @Strategy2, @Comments, @FormType, @Librarian1, @Librarian2, @QuestionFormat, @Minutes, @PrepTime1, @PrepTime2, @FeedMinutes, @ServiceType)";
        }

        if (!string.IsNullOrEmpty(txtDueDate5.Text))
        {
            query += "INSERT INTO [AllFields] ([InstructionType], [CourseProfFirstN], [CourseProfLastN], [Email], [Phone], [PlannedNumStudents], [isCollege], [CourseNum], [CourseTitle], [Department], [AssGroupProgram], [NonCollWorkTitle], [LibSkillConcept1], [LibSkillConcept2], [LibSkillConcept3], [LibGoalsDetails], [Date], [Time], [LibHSEndTime], [LibGearTowards], [LibHaveTopics], [LibAssessDetails], [LibAssessStrat1], [LibAssessStrat2], [Comments], [FormType], [Librarian1], [Librarian2], [QuestionFormat], [Minutes], [Librarian1PrepTime], [Librarian2PrepTime], [StudFeedMinutes], [ServiceType]) VALUES (@InstructionType, @FirstN, @LastN, @Email, @Phone, @StudentNumber, @isCollege, @CourseNum, @CourseTitle, @Department, @AssocicatedGroup, @WorkshopTitle, @SkillConcept1, @SkillConcept2, @SkillConcept3, @GoalsDetails, @Date5, @StartTime, @EndTime, @GearTowards, @HaveTopics, @AssessDetails, @Strategy1, @Strategy2, @Comments, @FormType, @Librarian1, @Librarian2, @QuestionFormat, @Minutes, @PrepTime1, @PrepTime2, @FeedMinutes, @ServiceType)";
        }

        if (!string.IsNullOrEmpty(txtDueDate6.Text))
        {
            query += "INSERT INTO [AllFields] ([InstructionType], [CourseProfFirstN], [CourseProfLastN], [Email], [Phone], [PlannedNumStudents], [isCollege], [CourseNum], [CourseTitle], [Department], [AssGroupProgram], [NonCollWorkTitle], [LibSkillConcept1], [LibSkillConcept2], [LibSkillConcept3], [LibGoalsDetails], [Date], [Time], [LibHSEndTime], [LibGearTowards], [LibHaveTopics], [LibAssessDetails], [LibAssessStrat1], [LibAssessStrat2], [Comments], [FormType], [Librarian1], [Librarian2], [QuestionFormat], [Minutes], [Librarian1PrepTime], [Librarian2PrepTime], [StudFeedMinutes], [ServiceType]) VALUES (@InstructionType, @FirstN, @LastN, @Email, @Phone, @StudentNumber, @isCollege, @CourseNum, @CourseTitle, @Department, @AssocicatedGroup, @WorkshopTitle, @SkillConcept1, @SkillConcept2, @SkillConcept3, @GoalsDetails, @Date6, @StartTime, @EndTime, @GearTowards, @HaveTopics, @AssessDetails, @Strategy1, @Strategy2, @Comments, @FormType, @Librarian1, @Librarian2, @QuestionFormat, @Minutes, @PrepTime1, @PrepTime2, @FeedMinutes, @ServiceType)";
        }

        if (!string.IsNullOrEmpty(txtDueDate7.Text))
        {
            query += "INSERT INTO [AllFields] ([InstructionType], [CourseProfFirstN], [CourseProfLastN], [Email], [Phone], [PlannedNumStudents], [isCollege], [CourseNum], [CourseTitle], [Department], [AssGroupProgram], [NonCollWorkTitle], [LibSkillConcept1], [LibSkillConcept2], [LibSkillConcept3], [LibGoalsDetails], [Date], [Time], [LibHSEndTime], [LibGearTowards], [LibHaveTopics], [LibAssessDetails], [LibAssessStrat1], [LibAssessStrat2], [Comments], [FormType], [Librarian1], [Librarian2], [QuestionFormat], [Minutes], [Librarian1PrepTime], [Librarian2PrepTime], [StudFeedMinutes], [ServiceType]) VALUES (@InstructionType, @FirstN, @LastN, @Email, @Phone, @StudentNumber, @isCollege, @CourseNum, @CourseTitle, @Department, @AssocicatedGroup, @WorkshopTitle, @SkillConcept1, @SkillConcept2, @SkillConcept3, @GoalsDetails, @Date7, @StartTime, @EndTime, @GearTowards, @HaveTopics, @AssessDetails, @Strategy1, @Strategy2, @Comments, @FormType, @Librarian1, @Librarian2, @QuestionFormat, @Minutes, @PrepTime1, @PrepTime2, @FeedMinutes, @ServiceType)";
        }

        if (!string.IsNullOrEmpty(txtDueDate8.Text))
        {
            query += "INSERT INTO [AllFields] ([InstructionType], [CourseProfFirstN], [CourseProfLastN], [Email], [Phone], [PlannedNumStudents], [isCollege], [CourseNum], [CourseTitle], [Department], [AssGroupProgram], [NonCollWorkTitle], [LibSkillConcept1], [LibSkillConcept2], [LibSkillConcept3], [LibGoalsDetails], [Date], [Time], [LibHSEndTime], [LibGearTowards], [LibHaveTopics], [LibAssessDetails], [LibAssessStrat1], [LibAssessStrat2], [Comments], [FormType], [Librarian1], [Librarian2], [QuestionFormat], [Minutes], [Librarian1PrepTime], [Librarian2PrepTime], [StudFeedMinutes], [ServiceType]) VALUES (@InstructionType, @FirstN, @LastN, @Email, @Phone, @StudentNumber, @isCollege, @CourseNum, @CourseTitle, @Department, @AssocicatedGroup, @WorkshopTitle, @SkillConcept1, @SkillConcept2, @SkillConcept3, @GoalsDetails, @Date8, @StartTime, @EndTime, @GearTowards, @HaveTopics, @AssessDetails, @Strategy1, @Strategy2, @Comments, @FormType, @Librarian1, @Librarian2, @QuestionFormat, @Minutes, @PrepTime1, @PrepTime2, @FeedMinutes, @ServiceType)";
        }

        SqlCommand cmd = new SqlCommand(query, conn);

        cmd.Parameters.AddWithValue("@InstructionType", rblType.SelectedValue);
        cmd.Parameters.AddWithValue("@FirstN", txtFirstName.Text);
        cmd.Parameters.AddWithValue("@LastN", txtLastName.Text);
        cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
        cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
        cmd.Parameters.AddWithValue("@StudentNumber", txtStudentNumber.Text);
        cmd.Parameters.AddWithValue("@isCollege", rblCollege.SelectedValue);
        cmd.Parameters.AddWithValue("@CourseNum", txtCourseNumber.Text);
        cmd.Parameters.AddWithValue("@CourseTitle", txtCourseTitle.Text);
        cmd.Parameters.AddWithValue("@Department", ddlDepartmentActive.SelectedValue);
        cmd.Parameters.AddWithValue("@AssocicatedGroup", txtAssociatedGroup.Text);
        cmd.Parameters.AddWithValue("@WorkshopTitle", txtWorkshop.Text);
        cmd.Parameters.AddWithValue("@SkillConcept1", ddlSkill1.SelectedValue);
        cmd.Parameters.AddWithValue("@SkillConcept2", ddlSkill2.SelectedValue);
        cmd.Parameters.AddWithValue("@SkillConcept3", ddlSkill3.SelectedValue);
        cmd.Parameters.AddWithValue("@GoalsDetails", txtGoalsDetails.Text);
        cmd.Parameters.AddWithValue("@Date", txtDueDate.Text);
        cmd.Parameters.AddWithValue("@Date2", txtDueDate2.Text);
        cmd.Parameters.AddWithValue("@Date3", txtDueDate3.Text);
        cmd.Parameters.AddWithValue("@Date4", txtDueDate4.Text);
        cmd.Parameters.AddWithValue("@Date5", txtDueDate5.Text);
        cmd.Parameters.AddWithValue("@Date6", txtDueDate6.Text);
        cmd.Parameters.AddWithValue("@Date7", txtDueDate7.Text);
        cmd.Parameters.AddWithValue("@Date8", txtDueDate8.Text);
        cmd.Parameters.AddWithValue("@StartTime", txtStartTime.Text);
        cmd.Parameters.AddWithValue("@EndTime", txtEndTime.Text);
        cmd.Parameters.AddWithValue("@GearTowards", rblAssignment.SelectedValue);
        cmd.Parameters.AddWithValue("@HaveTopics", rblTopics.SelectedValue);
        cmd.Parameters.AddWithValue("@AssessDetails", txtAssignmentDetails.Text);
        cmd.Parameters.AddWithValue("@Strategy1", ddlAssessment1.SelectedValue);
        cmd.Parameters.AddWithValue("@Strategy2", ddlAssessment2.SelectedValue);
        cmd.Parameters.AddWithValue("@Comments", txtComments.Text);
        cmd.Parameters.AddWithValue("@FormType", "LibInstruct");
        cmd.Parameters.AddWithValue("@Librarian1", "None");
        cmd.Parameters.AddWithValue("@Librarian2", "None");
        cmd.Parameters.AddWithValue("@QuestionFormat", "Other Web");
        cmd.Parameters.AddWithValue("@Minutes", "0");
        cmd.Parameters.AddWithValue("@PrepTime1", "0");
        cmd.Parameters.AddWithValue("@PrepTime2", "0");
        cmd.Parameters.AddWithValue("@FeedMinutes", "0");
        cmd.Parameters.AddWithValue("@ServiceType", "LibInstruct");

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

            mailMessage.From = new MailAddress(txtEmail.Text);
            mailMessage.To.Add("libinstr@geneseo.edu");
            //mailMessage.To.Add("ha@geneseo.edu");
            mailMessage.Bcc.Add("ha@geneseo.edu");

            if (rblType.SelectedValue == "Research")
            {
                mailMessage.Subject = "Library Research Instruction Request: " + txtFirstName.Text + " " + txtLastName.Text;
            }

            else if (rblType.SelectedValue == "Technology")
            {
                mailMessage.Subject = "Library Technology Instruction Request: " + txtFirstName.Text + " " + txtLastName.Text;
            }

        mailMessage.Priority = MailPriority.Normal;
        mailMessage.IsBodyHtml = false;

        StringBuilder sb = new StringBuilder();

        sb.AppendFormat("Faculty Information" + Environment.NewLine + "    ");
        sb.AppendFormat("Name: {0}" + Environment.NewLine + "    ", txtFirstName.Text.Trim() + " " + txtLastName.Text.Trim());
        sb.AppendFormat("Email: {0}" + Environment.NewLine + "    ", txtEmail.Text.Trim());
        sb.AppendFormat("Office Phone: {0}" + Environment.NewLine + Environment.NewLine, txtPhone.Text.Trim()); 

        sb.AppendFormat("Course Information" + Environment.NewLine + "    ");
        sb.AppendFormat("Planned Number of Students: {0}" + Environment.NewLine + "    ", txtStudentNumber.Text.Trim());

        if (rblCollege.SelectedValue == "Yes")
        {
            sb.AppendFormat("Course Number: {0}" + Environment.NewLine + "    ", txtCourseNumber.Text.Trim());
            sb.AppendFormat("Course Title: {0}" + Environment.NewLine + "    ", txtCourseTitle.Text.Trim());
            sb.AppendFormat("Department: {0}" + Environment.NewLine + "    ", ddlDepartmentActive.SelectedValue);
            sb.AppendFormat("Regular Semester Classroom Location: {0}" + Environment.NewLine + Environment.NewLine, txtLocation.Text.Trim());
        }

        else if (rblCollege.SelectedValue == "No")
        {
            sb.AppendFormat("Associated Group or Program: {0}" + Environment.NewLine + "    ", txtAssociatedGroup.Text.Trim());
            sb.AppendFormat("Workshop (Non College) Title: {0}" + Environment.NewLine + Environment.NewLine, txtWorkshop.Text.Trim());
        }

        sb.AppendFormat("Goals of Instruction" + Environment.NewLine + "    ");
        sb.AppendFormat("Skill/Concept #1: {0}" + Environment.NewLine +  "    ", ddlSkill1.SelectedValue);
        sb.AppendFormat("Skill/Concept #2: {0}" + Environment.NewLine +  "    ", ddlSkill2.SelectedValue);
        sb.AppendFormat("Skill/Concept #3: {0}" + Environment.NewLine +  "    ", ddlSkill3.SelectedValue);
        sb.AppendFormat("Further Goal Details: {0}" + Environment.NewLine + Environment.NewLine, txtGoalsDetails.Text.Trim());

        sb.AppendFormat("Date of Instruction" + Environment.NewLine + "    ");
        sb.AppendFormat("1st Choice Date: {0}" + Environment.NewLine + "    ", txtDueDate.Text.Trim());
        sb.AppendFormat("2nd Choice Date: {0}" + Environment.NewLine + "    ", txtDueDate1.Text.Trim());
        sb.AppendFormat("Additional/Alternative Date: {0}" + Environment.NewLine + "    ", txtDueDate2.Text.Trim());
        sb.AppendFormat("Additional/Alternative Date: {0}" + Environment.NewLine + "    ", txtDueDate3.Text.Trim());
        sb.AppendFormat("Additional/Alternative Date: {0}" + Environment.NewLine + "    ", txtDueDate4.Text.Trim());
        sb.AppendFormat("Additional/Alternative Date: {0}" + Environment.NewLine + "    ", txtDueDate5.Text.Trim());
        sb.AppendFormat("Additional/Alternative Date: {0}" + Environment.NewLine + "    ", txtDueDate6.Text.Trim());
        sb.AppendFormat("Additional/Alternative Date: {0}" + Environment.NewLine + "    ", txtDueDate7.Text.Trim());
        sb.AppendFormat("Additional/Alternative Date: {0}" + Environment.NewLine + "    ", txtDueDate8.Text.Trim());

        sb.AppendFormat("Class Start Time: {0}" + Environment.NewLine + "    ", txtStartTime.Text.Trim());
        sb.AppendFormat("Class End Time: {0}" + Environment.NewLine + Environment.NewLine, txtEndTime.Text.Trim());

        sb.AppendFormat("Preparing for & Assessing Student Learning" + Environment.NewLine + "    ");
        sb.AppendFormat("Geared Towards Specific Assignment? {0}" + Environment.NewLine + "    ", rblAssignment.SelectedValue);
        sb.AppendFormat("Already Have Topics? {0}" + Environment.NewLine + "    ", rblTopics.SelectedValue);
        sb.AppendFormat("Further Assignment Details: {0}" + Environment.NewLine + "    ", txtAssignmentDetails.Text.Trim());
        sb.AppendFormat("Formal Assessment Strategy #1: {0}" + Environment.NewLine + "    ", ddlAssessment1.SelectedValue);
        sb.AppendFormat("Formal Assessment Strategy #2: {0}" + Environment.NewLine + Environment.NewLine, ddlAssessment2.SelectedValue);

        sb.AppendFormat("Additional Remarks: {0}" + Environment.NewLine + Environment.NewLine, txtComments.Text.Trim());

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

        Response.Redirect("InstructionThankYou.aspx");
    }


    protected void HSbtnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DataPortalConnectionString"].ConnectionString);

        string query = "INSERT INTO [AllFields] ([InstructionType], [HSName], [HSMediaSpecFirstN], [HSMediaSpecLastN], [Email], [CourseTitle], [HSTeacherFirstN], [HSTeacherLastN], [PlannedNumStudents], [Date], [Time], [LibHSEndTime], [FormType], [Librarian1], [Librarian2], [QuestionFormat], [Minutes], [Librarian1PrepTime], [Librarian2PrepTime], [StudFeedMinutes]) VALUES (@InstructionType, @HSName, @FirstN, @LastN, @Email, @CourseTitle, @HSTeacherFirstN, @HSTeacherLastN, @StudentNumber, @HSDate, @HSStartTime, @HSEndTime, @FormType, @Librarian1, @Librarian2, @QuestionFormat, @Minutes, @PrepTime1, @PrepTime2, @FeedMinutes)";

        SqlCommand cmd = new SqlCommand(query, conn);

        cmd.Parameters.AddWithValue("@InstructionType", rblType.SelectedValue);
        cmd.Parameters.AddWithValue("@HSName", txtSchoolName.Text); 
        cmd.Parameters.AddWithValue("@FirstN", txtMediaFirstName.Text);
        cmd.Parameters.AddWithValue("@LastN", txtMediaLastName.Text);
        cmd.Parameters.AddWithValue("@Email", txtMediaEmail.Text);
        cmd.Parameters.AddWithValue("@CourseTitle", txtSchoolCourse.Text);
        cmd.Parameters.AddWithValue("@HSTeacherFirstN", txtTeacherFirstName.Text);
        cmd.Parameters.AddWithValue("@HSTeacherLastN", txtTeacherLastName.Text);
        cmd.Parameters.AddWithValue("@StudentNumber", txtSchoolStudentNumber.Text);
        cmd.Parameters.AddWithValue("@HSDate", txtSchoolDueDate.Text);
        cmd.Parameters.AddWithValue("@HSStartTime", txtArrivalTime.Text);
        cmd.Parameters.AddWithValue("@HSEndTime", txtDepartureTime.Text);
        cmd.Parameters.AddWithValue("@FormType", "HSInstruct");
        cmd.Parameters.AddWithValue("@Librarian1", "None");
        cmd.Parameters.AddWithValue("@Librarian2", "None");
        cmd.Parameters.AddWithValue("@QuestionFormat", "Other Web");
        cmd.Parameters.AddWithValue("@Minutes", "0");
        cmd.Parameters.AddWithValue("@PrepTime1", "0");
        cmd.Parameters.AddWithValue("@PrepTime2", "0");
        cmd.Parameters.AddWithValue("@FeedMinutes", "0");

        try
        {
            conn.Open();
            cmd.ExecuteNonQuery();
        }

        catch (System.Data.SqlClient.SqlException ex)
        {
            HSlblErrorMessage.Text = "Error. " + ex.Message;
            HSlblErrorMessage.ForeColor = System.Drawing.Color.Red;
        }

        finally
        {
            conn.Close();
        }

        //############ Mail Settings ############ 

        MailMessage mailMessage = new MailMessage();
        SmtpClient smtpClient = new SmtpClient();

        //Dim SmtpClient As New SmtpClient("137.238.1.161")

        mailMessage.From = new MailAddress(txtMediaEmail.Text);
        mailMessage.To.Add("libinstr@geneseo.edu");
        //mailMessage.To.Add("ha@geneseo.edu");
        mailMessage.Bcc.Add("ha@geneseo.edu");
        mailMessage.Subject = "High School Instruction Request: " + txtSchoolName.Text;

        mailMessage.Priority = MailPriority.Normal;
        mailMessage.IsBodyHtml = false;

        StringBuilder sb = new StringBuilder();

        sb.AppendFormat("School Information" + Environment.NewLine + "    ");
        sb.AppendFormat("School Name: {0}" + Environment.NewLine + "    ", txtSchoolName.Text.Trim());
        sb.AppendFormat("School Phone: {0}" + Environment.NewLine + "    ", txtSchoolPhone.Text.Trim());
        sb.AppendFormat("Media Specialist's Name: {0}" + Environment.NewLine + "    ", txtMediaFirstName.Text.Trim() + " " + txtMediaLastName.Text.Trim());
        sb.AppendFormat("Email: {0}" + Environment.NewLine + Environment.NewLine, txtMediaEmail.Text.Trim());

        sb.AppendFormat("Course Information" + Environment.NewLine + "    ");
        sb.AppendFormat("Topic: {0}" + Environment.NewLine + "    ", txtSchoolTopic.Text.Trim());
        sb.AppendFormat("Course: {0}" + Environment.NewLine + "    ", txtSchoolCourse.Text.Trim());
        sb.AppendFormat("Teacher's Name: {0}" + Environment.NewLine + "    ", txtTeacherFirstName.Text.Trim() + " " + txtTeacherLastName.Text.Trim());
        sb.AppendFormat("Planned Number of Students: {0}" + Environment.NewLine + "    ", txtSchoolStudentNumber.Text.Trim());
        sb.AppendFormat("Number of Accompanying Adults: {0}" + Environment.NewLine + "    ", txtAdultsNumber.Text.Trim());
        sb.AppendFormat("Assignment Description: {0}" + Environment.NewLine + Environment.NewLine, txtSchoolAssignment.Text.Trim());   

        sb.AppendFormat("Visit Date and Time Preferences" + Environment.NewLine + "    ");
        sb.AppendFormat("1st Choice Date: {0}" + Environment.NewLine + "    ", txtSchoolDueDate.Text.Trim());
        sb.AppendFormat("2nd Choice Date: {0}" + Environment.NewLine + "    ", txtSchoolDueDate2.Text.Trim());
        sb.AppendFormat("Additional or Alternative Date: {0}" + Environment.NewLine + "    ", txtSchoolDueDate3.Text.Trim());
        sb.AppendFormat("Arrival Time: {0}" + Environment.NewLine + "    ", txtArrivalTime.Text.Trim());
        sb.AppendFormat("Departure Time: {0}" + Environment.NewLine + Environment.NewLine, txtDepartureTime.Text.Trim());

        sb.AppendFormat("Previous Library Instruction: {0}" + Environment.NewLine + Environment.NewLine, txtPreviousInstruction.Text.Trim());

        sb.AppendFormat("Instruction Needs: {0}" + Environment.NewLine + Environment.NewLine, txtInstructionNeeds.Text.Trim());

        mailMessage.Body = sb.ToString();

        try
        {
            smtpClient.Send(mailMessage);
        }

        catch (System.Net.Mail.SmtpException ex)
        {
            HSlblErrorMessage.Text = "Error. " + ex.Message;
            HSlblErrorMessage.ForeColor = System.Drawing.Color.Red;
        }

        Response.Redirect("InstructionThankYou.aspx");
    }

    protected void CancelButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("Instruction.aspx");
        ClearFields(Page);
   
    }

    //protected void rblType_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    if (rblType.SelectedValue == "Research" || rblType.SelectedValue == "Technology")
    //    {
    //        ResearchTechInstructionPanel.Visible = true;
           
    //        HSInstructionPanel.Visible = false;
    //    }

    //    else if (rblType.SelectedValue == "Other")
    //    {
    //        ResearchTechInstructionPanel.Visible = false; 
    //        HSInstructionPanel.Visible = true;
    //    }
    //}

    protected void rblType_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblType.SelectedValue == "Research")
        {
            ResearchTechInstructionPanel.Visible = true;
            ResearchInstructionInfoPanel.Visible = true;
            TechnologyInstructionInfoPanel.Visible = false;    
            ResearchTitlePanel.Visible = true;
            InstructionTitlePanel.Visible = false;
            HighSchoolInstructionInfoPanel.Visible = false;
            HSInstructionPanel.Visible = false;
        }

        else if (rblType.SelectedValue == "Technology")
        {
            ResearchTechInstructionPanel.Visible = true;
            ResearchInstructionInfoPanel.Visible = false;
            TechnologyInstructionInfoPanel.Visible = true;
            ResearchTitlePanel.Visible = false;
            InstructionTitlePanel.Visible = true;
            HighSchoolInstructionInfoPanel.Visible = false;
            HSInstructionPanel.Visible = false;
        }


        else if (rblType.SelectedValue == "Other")
        {
            ResearchTechInstructionPanel.Visible = false;
            ResearchInstructionInfoPanel.Visible = false;
            TechnologyInstructionInfoPanel.Visible = false;
            ResearchTitlePanel.Visible = false;
            InstructionTitlePanel.Visible = false;
            HighSchoolInstructionInfoPanel.Visible = true;
            HSInstructionPanel.Visible = true;
        }
    }





    protected void rblCollege_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblCollege.SelectedValue == "Yes")
        {
            collegeYesPanel.Visible = true;
            collegeNoPanel.Visible = false;
        }
        else if (rblCollege.SelectedValue == "No") 
        {
            collegeNoPanel.Visible = true;
            collegeYesPanel.Visible = false;
        }
    }

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

        ResearchTechInstructionPanel.Visible = false;
        ResearchTitlePanel.Visible = false;
        InstructionTitlePanel.Visible = false;
        HSInstructionPanel.Visible = false;
        rblType.SelectedIndex = -1;

    }


    protected void ResearchInstructionInfoPanelLink_Click(object sender, EventArgs e)
    {
        ResearchInstructionInfoPanel.Visible = true;
        TechnologyInstructionInfoPanel.Visible = false;
        HighSchoolInstructionInfoPanel.Visible = false;
        ResearchTechInstructionPanel.Visible = false;
    //    ResearchInstructionPanel.Visible = false;
    //    TechnologyInstructionPanel.Visible = false;
        HSInstructionPanel.Visible = false;
        rblType.SelectedIndex = -1;

    }

    protected void TechnologyInstructionInfoPanelLink_Click(object sender, EventArgs e)
    {
        ResearchInstructionInfoPanel.Visible = false;
        TechnologyInstructionInfoPanel.Visible = true;
        HighSchoolInstructionInfoPanel.Visible = false;
        ResearchTechInstructionPanel.Visible = false;
      //  ResearchInstructionPanel.Visible = false;
       // TechnologyInstructionPanel.Visible = false;
        HSInstructionPanel.Visible = false;
        rblType.SelectedIndex = -1;
    }


    protected void HighSchoolInstructionInfoPanelLink_Click(object sender, EventArgs e)
    {
        ResearchInstructionInfoPanel.Visible = false;
        TechnologyInstructionInfoPanel.Visible = false;
        HighSchoolInstructionInfoPanel.Visible = true;
        ResearchTechInstructionPanel.Visible = false;
        //  ResearchInstructionPanel.Visible = false;
        // TechnologyInstructionPanel.Visible = false;
        HSInstructionPanel.Visible = false;
        rblType.SelectedIndex = -1;
    }







    protected void ResearchConsultClosePanel_Click(object sender, EventArgs e)
    {
        ResearchInstructionInfoPanel.Visible = false;
        TechnologyInstructionInfoPanel.Visible = false;
        HighSchoolInstructionInfoPanel.Visible = false;
      //  ResearchTechInstructionPanel.Visible = false;
       // HSInstructionPanel.Visible = false;
        // ResearchConsultationPanel.Visible = false;        
        //  TechnologyConsultationPanel.Visible = false;
        //rblType.SelectedIndex = -1;
        //ClearFields(Page);

    }

    protected void TechnologyConsultClosePanel_Click(object sender, EventArgs e)
    {
        ResearchInstructionInfoPanel.Visible = false;
        TechnologyInstructionInfoPanel.Visible = false;
        HighSchoolInstructionInfoPanel.Visible = false;
    //    ResearchTechInstructionPanel.Visible = false;
     //   HSInstructionPanel.Visible = false;
        // ResearchConsultationPanel.Visible = false;        
        // TechnologyConsultationPanel.Visible = false;
        // rblType.SelectedIndex = -1;
        //ClearFields(Page);
    }

    protected void HighSchoolConsultClosePanel_Click(object sender, EventArgs e)
    {
        ResearchInstructionInfoPanel.Visible = false;
        TechnologyInstructionInfoPanel.Visible = false;
        HighSchoolInstructionInfoPanel.Visible = false;
      //  ResearchTechInstructionPanel.Visible = false;
    //    HSInstructionPanel.Visible = false;
        // ResearchConsultationPanel.Visible = false;        
        // TechnologyConsultationPanel.Visible = false;
        // rblType.SelectedIndex = -1;
        //ClearFields(Page);
    }






    protected void btnReset_Click(object sender, EventArgs e)
    {
        ClearFields(Page);
        rblType.SelectedIndex = -1;
        ResearchInstructionInfoPanel.Visible = false;
        TechnologyInstructionInfoPanel.Visible = false;
        HighSchoolInstructionInfoPanel.Visible = false;

    }




   // protected void txtDueDate_TextChanged(object sender, EventArgs e)
   // {
   //     if (txtDueDate.Text.Length > 4)
   //     {

   //         plhDueDate1.Visible = true;
   //         txtDueDate1.Focus();

   //     }

   // }

   // protected void txtDueDate1_TextChanged(object sender, EventArgs e)
   // {

   //    if (txtDueDate1.Text.Length > 4)
   //     {
   //     plhDueDate1.Visible = true;
   //     plhDueDate2.Visible = true;
   //     txtDueDate2.Focus();
   //    }
   //}


    protected void txtDueDate2_TextChanged(object sender, EventArgs e)
    {
        if (txtDueDate2.Text.Length > 4)
        {
            //plhDueDate1.Visible = true;
            //plhDueDate2.Visible = true;
            plhDueDate3.Visible = true;
            txtDueDate3.Focus();
        }
    }

    protected void txtDueDate3_TextChanged(object sender, EventArgs e)
    {
        if (txtDueDate3.Text.Length > 4)
        {
            //plhDueDate1.Visible = true;
            //plhDueDate2.Visible = true;
            plhDueDate3.Visible = true;
            plhDueDate4.Visible = true;
            txtDueDate4.Focus();
        }
    }





}