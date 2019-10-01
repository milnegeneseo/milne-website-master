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
        if (!IsPostBack)
        {
            BindDropdownlists();
        }
    }


    public void BindDropdownlists()
    {

        //DataTable ds = ReferenceInstructionDropdownClass.getDepartmentActive();
        //ddlDepartmentActive.DataSource = ds;
        //ddlDepartmentActive.DataTextField = ds.Columns["DepartmentActive"].ToString();
        //ddlDepartmentActive.DataValueField = ds.Columns["DepartmentActive"].ToString();
        //ddlDepartmentActive.DataBind();
        //ddlDepartmentActive.Items.Insert(0, new ListItem("-- Select One --", "Select One"));

    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //Date and Time to String for use in RequestID field
        string CurrDateTime = DateTime.Now.ToString("yyMMddHHmm");
  

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DataPortalConnectionString"].ConnectionString);

   string query = "INSERT INTO [CourseReserves] ([RequestID],[IsActive],[FirstName],[LastName],[Email],[Department],[Phone],[ReserveDate],[CourseName],[CourseNumber],[SectionNumber],[SubmittedForTerm],[Author],[Title],[ISBN],[ReserveType],[NumberOfCopies],[MaterialType],[PersonalCopy],[Donation]) VALUES (@RequestID, @IsActive,@FirstN, @LastN, @Email,@Department, @Phone, @ReserveDate, @CourseTitle, @CourseNum, @CourseSection,  @Semester, @Author, @Title, @ISBN, @ReserveType, @NumberOfCopies, @MaterialType, @IsPersonalCopy, @IsDonation)";
     //   string query = "INSERT INTO [CourseReserves] ([RequestID],[FirstName],[LastName],[Email],[Department],[Phone],[CourseName],[CourseNumber],[SectionNumber],[SubmittedForTerm],[Author],[Title],[ISBN],[ReserveType],[NumberOfCopies],[MaterialType],[PersonalCopy],[Donation]) VALUES (@RequestID, @FirstN, @LastN, @Email,@Department, @Phone,  @CourseTitle, @CourseNum, @CourseSection,  @Semester, @Author, @Title, @ISBN, @ReserveType, @NumberOfCopies, @MaterialType, @IsPersonalCopy, @IsDonation)";

     if 
         
        (txtAuthor2.Text.Length > 0 || txtTitle2.Text.Length > 0 || ddlReserve2.SelectedValue.Length > 0 || txtCopies2.Text.Length > 0 || ddlMaterial2.SelectedValue.Length > 0)
        {
            query += "INSERT INTO [CourseReserves] ([RequestID],[IsActive],[FirstName],[LastName],[Email],[Department],[Phone],[ReserveDate],[CourseName],[CourseNumber],[SectionNumber],[SubmittedForTerm],[Author],[Title],[ISBN],[ReserveType],[NumberOfCopies],[MaterialType],[PersonalCopy],[Donation])VALUES (@RequestID, @IsActive,@FirstN, @LastN, @Email,@Department, @Phone, @ReserveDate, @CourseTitle, @CourseNum, @CourseSection,  @Semester, @Author2, @Title2, @ISBN2, @ReserveType2, @NumberOfCopies2, @MaterialType2, @IsPersonalCopy2, @IsDonation2)";
         //   query += "INSERT INTO [CourseReserves] ([RequestID],[FirstName],[LastName],[Email],[Department],[Phone],[CourseName],[CourseNumber],[SectionNumber],[SubmittedForTerm],[Author],[Title],[ISBN],[ReserveType],[NumberOfCopies],[MaterialType],[PersonalCopy],[Donation])VALUES (@RequestID, @FirstN, @LastN, @Email,@Department, @Phone,  @CourseTitle, @CourseNum, @CourseSection,  @Semester, @Author2, @Title2, @ISBN2, @ReserveType2, @NumberOfCopies2, @MaterialType2, @IsPersonalCopy2, @IsDonation2)";

     }

     if (txtAuthor3.Text.Length > 0 || txtTitle3.Text.Length > 0 || ddlReserve3.SelectedValue.Length > 0 || txtCopies3.Text.Length > 0 || ddlMaterial3.SelectedValue.Length > 0)
     {
         query += "INSERT INTO [CourseReserves] ([RequestID],[IsActive],[FirstName],[LastName],[Email],[Department],[Phone],[ReserveDate],[CourseName],[CourseNumber],[SectionNumber],[SubmittedForTerm],[Author],[Title],[ISBN],[ReserveType],[NumberOfCopies],[MaterialType],[PersonalCopy],[Donation])VALUES (@RequestID, @IsActive,@FirstN, @LastN, @Email,@Department, @Phone,@ReserveDate, @CourseTitle, @CourseNum, @CourseSection,  @Semester, @Author3, @Title3, @ISBN3, @ReserveType3, @NumberOfCopies3, @MaterialType3, @IsPersonalCopy3, @IsDonation3)";
     }

     if (txtAuthor4.Text.Length > 0 || txtTitle4.Text.Length > 0 || ddlReserve4.SelectedValue.Length > 0 || txtCopies4.Text.Length > 0 || ddlMaterial4.SelectedValue.Length > 0)
     {
         query += "INSERT INTO [CourseReserves] ([RequestID],[IsActive],[FirstName],[LastName],[Email],[Department],[Phone],[ReserveDate],[CourseName],[CourseNumber],[SectionNumber],[SubmittedForTerm],[Author],[Title],[ISBN],[ReserveType],[NumberOfCopies],[MaterialType],[PersonalCopy],[Donation])VALUES (@RequestID, @IsActive,@FirstN, @LastN, @Email,@Department, @Phone,@ReserveDate, @CourseTitle, @CourseNum, @CourseSection,  @Semester, @Author4, @Title4, @ISBN4, @ReserveType4, @NumberOfCopies4, @MaterialType4, @IsPersonalCopy4, @IsDonation4)";
     }

     if (txtAuthor5.Text.Length > 0 || txtTitle5.Text.Length > 0 || ddlReserve5.SelectedValue.Length > 0 || txtCopies5.Text.Length > 0 || ddlMaterial5.SelectedValue.Length > 0)
     {
         query += "INSERT INTO [CourseReserves] ([RequestID],[IsActive],[FirstName],[LastName],[Email],[Department],[Phone],[ReserveDate],[CourseName],[CourseNumber],[SectionNumber],[SubmittedForTerm],[Author],[Title],[ISBN],[ReserveType],[NumberOfCopies],[MaterialType],[PersonalCopy],[Donation])VALUES (@RequestID, @IsActive,@FirstN, @LastN, @Email,@Department, @Phone, @ReserveDate, @CourseTitle, @CourseNum, @CourseSection,  @Semester, @Author5, @Title5, @ISBN5, @ReserveType5, @NumberOfCopies5, @MaterialType5, @IsPersonalCopy5, @IsDonation5)";
     }

     if (txtAuthor6.Text.Length > 0 || txtTitle6.Text.Length > 0 || ddlReserve6.SelectedValue.Length > 0 || txtCopies6.Text.Length > 0 || ddlMaterial6.SelectedValue.Length > 0)
     {
         query += "INSERT INTO [CourseReserves] ([RequestID],[IsActive],[FirstName],[LastName],[Email],[Department],[Phone],[ReserveDate],[CourseName],[CourseNumber],[SectionNumber],[SubmittedForTerm],[Author],[Title],[ISBN],[ReserveType],[NumberOfCopies],[MaterialType],[PersonalCopy],[Donation])VALUES (@RequestID, @IsActive,@FirstN, @LastN, @Email,@Department, @Phone, @ReserveDate, @CourseTitle, @CourseNum, @CourseSection,  @Semester, @Author6, @Title6, @ISBN6, @ReserveType6, @NumberOfCopies6, @MaterialType6, @IsPersonalCopy6, @IsDonation6)";
     }

     if (txtAuthor7.Text.Length > 0 || txtTitle7.Text.Length > 0 || ddlReserve7.SelectedValue.Length > 0 || txtCopies7.Text.Length > 0 || ddlMaterial7.SelectedValue.Length > 0)
     {
         query += "INSERT INTO [CourseReserves] ([RequestID],[IsActive],[FirstName],[LastName],[Email],[Department],[Phone],[ReserveDate],[CourseName],[CourseNumber],[SectionNumber],[SubmittedForTerm],[Author],[Title],[ISBN],[ReserveType],[NumberOfCopies],[MaterialType],[PersonalCopy],[Donation])VALUES (@RequestID, @IsActive,@FirstN, @LastN, @Email,@Department, @Phone, @ReserveDate, @CourseTitle, @CourseNum, @CourseSection,  @Semester, @Author7, @Title7, @ISBN7, @ReserveType7, @NumberOfCopies7, @MaterialType7, @IsPersonalCopy7, @IsDonation7)";
     }
     if (txtAuthor8.Text.Length > 0 || txtTitle8.Text.Length > 0 || ddlReserve8.SelectedValue.Length > 0 || txtCopies8.Text.Length > 0 || ddlMaterial8.SelectedValue.Length > 0)
     {
         query += "INSERT INTO [CourseReserves] ([RequestID],[IsActive],[FirstName],[LastName],[Email],[Department],[Phone],[ReserveDate],[CourseName],[CourseNumber],[SectionNumber],[SubmittedForTerm],[Author],[Title],[ISBN],[ReserveType],[NumberOfCopies],[MaterialType],[PersonalCopy],[Donation])VALUES (@RequestID, @IsActive,@FirstN, @LastN, @Email,@Department, @Phone, @ReserveDate, @CourseTitle, @CourseNum, @CourseSection,  @Semester, @Author8, @Title8, @ISBN8, @ReserveType8, @NumberOfCopies8, @MaterialType8, @IsPersonalCopy8, @IsDonation8)";
     }
     if (txtAuthor9.Text.Length > 0 || txtTitle9.Text.Length > 0 || ddlReserve9.SelectedValue.Length > 0 || txtCopies9.Text.Length > 0 || ddlMaterial9.SelectedValue.Length > 0)
     {
         query += "INSERT INTO [CourseReserves] ([RequestID],[IsActive],[FirstName],[LastName],[Email],[Department],[Phone],[ReserveDate],[CourseName],[CourseNumber],[SectionNumber],[SubmittedForTerm],[Author],[Title],[ISBN],[ReserveType],[NumberOfCopies],[MaterialType],[PersonalCopy],[Donation])VALUES (@RequestID, @IsActive,@FirstN, @LastN, @Email,@Department, @Phone, @ReserveDate, @CourseTitle, @CourseNum, @CourseSection,  @Semester, @Author9, @Title9, @ISBN9, @ReserveType9, @NumberOfCopies9, @MaterialType9, @IsPersonalCopy9, @IsDonation9)";
     }
     if (txtAuthor10.Text.Length > 0 || txtTitle10.Text.Length > 0 || ddlReserve10.SelectedValue.Length > 0 || txtCopies10.Text.Length > 0 || ddlMaterial10.SelectedValue.Length > 0)
     {
         query += "INSERT INTO [CourseReserves] ([RequestID],[IsActive],[FirstName],[LastName],[Email],[Department],[Phone],[ReserveDate],[CourseName],[CourseNumber],[SectionNumber],[SubmittedForTerm],[Author],[Title],[ISBN],[ReserveType],[NumberOfCopies],[MaterialType],[PersonalCopy],[Donation])VALUES (@RequestID, @IsActive,@FirstN, @LastN, @Email,@Department, @Phone, @ReserveDate, @CourseTitle, @CourseNum, @CourseSection,  @Semester, @Author10, @Title10, @ISBN10, @ReserveType10, @NumberOfCopies10, @MaterialType10, @IsPersonalCopy10, @IsDonation10)";
     }  


        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.Parameters.AddWithValue("@IsActive", "Yes");
        cmd.Parameters.AddWithValue("@FirstN", txtFirstName.Text);
        cmd.Parameters.AddWithValue("@LastN", txtLastName.Text);
        cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
        //cmd.Parameters.AddWithValue("@Department", ddlDepartmentActive.SelectedValue);
        cmd.Parameters.AddWithValue("@Department", "None");
        cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
        cmd.Parameters.AddWithValue("@ReserveDate", "      ");
       
        cmd.Parameters.AddWithValue("@CourseNum", txtCourseNumber.Text);
        cmd.Parameters.AddWithValue("@CourseTitle", txtCourseTitle.Text);
        cmd.Parameters.AddWithValue("@CourseSection", txtSection.Text);
     //   cmd.Parameters.AddWithValue("@ReserveDate", txtDate.Text);
        cmd.Parameters.AddWithValue("@Semester", ddlSemester.SelectedValue);
        cmd.Parameters.AddWithValue("@RequestID", CurrDateTime);

        cmd.Parameters.AddWithValue("@Author", txtAuthor.Text);
        cmd.Parameters.AddWithValue("@Author2", txtAuthor2.Text);
        cmd.Parameters.AddWithValue("@Author3", txtAuthor3.Text);
        cmd.Parameters.AddWithValue("@Author4", txtAuthor4.Text);
        cmd.Parameters.AddWithValue("@Author5", txtAuthor5.Text);
        cmd.Parameters.AddWithValue("@Author6", txtAuthor6.Text);
        cmd.Parameters.AddWithValue("@Author7", txtAuthor7.Text);
        cmd.Parameters.AddWithValue("@Author8", txtAuthor8.Text);
        cmd.Parameters.AddWithValue("@Author9", txtAuthor9.Text);
        cmd.Parameters.AddWithValue("@Author10", txtAuthor10.Text);
    //    cmd.Parameters.AddWithValue("@Author11", txtAuthor11.Text);
        cmd.Parameters.AddWithValue("@Title", txtTitle.Text);
        cmd.Parameters.AddWithValue("@Title2", txtTitle2.Text);
        cmd.Parameters.AddWithValue("@Title3", txtTitle3.Text);
        cmd.Parameters.AddWithValue("@Title4", txtTitle4.Text);
        cmd.Parameters.AddWithValue("@Title5", txtTitle5.Text);
        cmd.Parameters.AddWithValue("@Title6", txtTitle6.Text);
        cmd.Parameters.AddWithValue("@Title7", txtTitle7.Text);
        cmd.Parameters.AddWithValue("@Title8", txtTitle8.Text);
        cmd.Parameters.AddWithValue("@Title9", txtTitle9.Text);
        cmd.Parameters.AddWithValue("@Title10", txtTitle10.Text);
  //      cmd.Parameters.AddWithValue("@Title11", txtTitle11.Text);
        cmd.Parameters.AddWithValue("@ISBN", txtISBN.Text);
        cmd.Parameters.AddWithValue("@ISBN2", txtISBN2.Text);
        cmd.Parameters.AddWithValue("@ISBN3", txtISBN3.Text);
        cmd.Parameters.AddWithValue("@ISBN4", txtISBN4.Text);
        cmd.Parameters.AddWithValue("@ISBN5", txtISBN5.Text);
        cmd.Parameters.AddWithValue("@ISBN6", txtISBN6.Text);
        cmd.Parameters.AddWithValue("@ISBN7", txtISBN7.Text);
        cmd.Parameters.AddWithValue("@ISBN8", txtISBN8.Text);
        cmd.Parameters.AddWithValue("@ISBN9", txtISBN9.Text);
        cmd.Parameters.AddWithValue("@ISBN10", txtISBN10.Text);
   //     cmd.Parameters.AddWithValue("@ISBN11", txtISBN10.Text);
        cmd.Parameters.AddWithValue("@ReserveType", ddlReserve.SelectedValue);
        cmd.Parameters.AddWithValue("@ReserveType2", ddlReserve2.SelectedValue);
        cmd.Parameters.AddWithValue("@ReserveType3", ddlReserve3.SelectedValue);
        cmd.Parameters.AddWithValue("@ReserveType4", ddlReserve4.SelectedValue);
        cmd.Parameters.AddWithValue("@ReserveType5", ddlReserve5.SelectedValue);
        cmd.Parameters.AddWithValue("@ReserveType6", ddlReserve6.SelectedValue);
        cmd.Parameters.AddWithValue("@ReserveType7", ddlReserve7.SelectedValue);
        cmd.Parameters.AddWithValue("@ReserveType8", ddlReserve8.SelectedValue);
        cmd.Parameters.AddWithValue("@ReserveType9", ddlReserve9.SelectedValue);
        cmd.Parameters.AddWithValue("@ReserveType10", ddlReserve10.SelectedValue);
      //  cmd.Parameters.AddWithValue("@ReserveType11", ddlReserve11.SelectedValue);
        cmd.Parameters.AddWithValue("@NumberOfCopies", txtCopies.Text);
        cmd.Parameters.AddWithValue("@NumberOfCopies2", txtCopies2.Text);
        cmd.Parameters.AddWithValue("@NumberOfCopies3", txtCopies3.Text);
        cmd.Parameters.AddWithValue("@NumberOfCopies4", txtCopies4.Text);
        cmd.Parameters.AddWithValue("@NumberOfCopies5", txtCopies5.Text);
        cmd.Parameters.AddWithValue("@NumberOfCopies6", txtCopies6.Text);
        cmd.Parameters.AddWithValue("@NumberOfCopies7", txtCopies7.Text);
        cmd.Parameters.AddWithValue("@NumberOfCopies8", txtCopies8.Text);
        cmd.Parameters.AddWithValue("@NumberOfCopies9", txtCopies9.Text);
        cmd.Parameters.AddWithValue("@NumberOfCopies10", txtCopies10.Text);
   //     cmd.Parameters.AddWithValue("@NumberOfCopies11", txtCopies11.Text);
        cmd.Parameters.AddWithValue("@MaterialType", ddlMaterial.SelectedValue);
        cmd.Parameters.AddWithValue("@MaterialType2", ddlMaterial2.SelectedValue);
        cmd.Parameters.AddWithValue("@MaterialType3", ddlMaterial3.SelectedValue);
        cmd.Parameters.AddWithValue("@MaterialType4", ddlMaterial4.SelectedValue);
        cmd.Parameters.AddWithValue("@MaterialType5", ddlMaterial5.SelectedValue);
        cmd.Parameters.AddWithValue("@MaterialType6", ddlMaterial6.SelectedValue);
        cmd.Parameters.AddWithValue("@MaterialType7", ddlMaterial7.SelectedValue);
        cmd.Parameters.AddWithValue("@MaterialType8", ddlMaterial8.SelectedValue);
        cmd.Parameters.AddWithValue("@MaterialType9", ddlMaterial9.SelectedValue);
        cmd.Parameters.AddWithValue("@MaterialType10", ddlMaterial10.SelectedValue);
        cmd.Parameters.AddWithValue("@IsPersonalCopy", rblPersonalCopy.SelectedValue);
        cmd.Parameters.AddWithValue("@IsPersonalCopy2", rblPersonalCopy2.SelectedValue);
        cmd.Parameters.AddWithValue("@IsPersonalCopy3", rblPersonalCopy3.SelectedValue);
        cmd.Parameters.AddWithValue("@IsPersonalCopy4", rblPersonalCopy4.SelectedValue);
        cmd.Parameters.AddWithValue("@IsPersonalCopy5", rblPersonalCopy5.SelectedValue);
        cmd.Parameters.AddWithValue("@IsPersonalCopy6", rblPersonalCopy6.SelectedValue);
        cmd.Parameters.AddWithValue("@IsPersonalCopy7", rblPersonalCopy7.SelectedValue);
        cmd.Parameters.AddWithValue("@IsPersonalCopy8", rblPersonalCopy8.SelectedValue);
        cmd.Parameters.AddWithValue("@IsPersonalCopy9", rblPersonalCopy9.SelectedValue);
        cmd.Parameters.AddWithValue("@IsPersonalCopy10", rblPersonalCopy10.SelectedValue);
     //   cmd.Parameters.AddWithValue("@IsPersonalCopy11", rblPersonalCopy11.SelectedValue);
        cmd.Parameters.AddWithValue("@IsDonation", rblIsDonation.SelectedValue);
        cmd.Parameters.AddWithValue("@IsDonation2", rblIsDonation2.SelectedValue);
        cmd.Parameters.AddWithValue("@IsDonation3", rblIsDonation3.SelectedValue);
        cmd.Parameters.AddWithValue("@IsDonation4", rblIsDonation4.SelectedValue);
        cmd.Parameters.AddWithValue("@IsDonation5", rblIsDonation5.SelectedValue);
        cmd.Parameters.AddWithValue("@IsDonation6", rblIsDonation6.SelectedValue);
        cmd.Parameters.AddWithValue("@IsDonation7", rblIsDonation7.SelectedValue);
        cmd.Parameters.AddWithValue("@IsDonation8", rblIsDonation8.SelectedValue);
        cmd.Parameters.AddWithValue("@IsDonation9", rblIsDonation9.SelectedValue);
        cmd.Parameters.AddWithValue("@IsDonation10", rblIsDonation10.SelectedValue);
      //  cmd.Parameters.AddWithValue("@IsDonation11", rblIsDonation11.SelectedValue);

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




        {
            //if (string.IsNullOrEmpty(txtHF.Text))
            //var chkDate = System.DateTime.Parse(txtDate.Text);

           // if (txtDate.Text != String.Empty)
            if (txtEmail.Text != String.Empty)
            {
                //############ Mail Settings ############ 

                MailMessage mailMessage = new MailMessage();
                SmtpClient smtpClient = new SmtpClient();

                mailMessage.From = new MailAddress(txtEmail.Text);
            //    mailMessage.ReplyToList.Add(txtEmail.Text);
   

            //    mailMessage.Reply = new MailMessage(new MailAddress(txtEmail.Text, "Sender"), mailMessage.From);
            mailMessage.To.Add("rossd@geneseo.edu");
            //   mailMessage.To.Add("salluzzo@geneseo.edu");
               mailMessage.Bcc.Add("finnigan@geneseo.edu,gyamfi@geneseo.edu,rootl@geneseo.edu");
                mailMessage.CC.Add(txtEmail.Text);
               
              //  mailMessage.To.Add("salluzzo@geneseo.edu");
                //mailMessage.To.Add("ha@geneseo.edu"); 
             //   mailMessage.Bcc.Add("finnigan@geneseo.edu,ha@geneseo.edu,rootl@geneseo.edu");



                mailMessage.Subject = "Course Reserve Request: " + txtFirstName.Text + " " + txtLastName.Text;

                mailMessage.Priority = MailPriority.Normal;
                mailMessage.IsBodyHtml = false;

                StringBuilder sb = new StringBuilder();

                sb.AppendFormat("Request ID: {0}" + Environment.NewLine + Environment.NewLine, CurrDateTime);

                sb.AppendFormat("Instructor Information" + Environment.NewLine + "    ");
                sb.AppendFormat("Name: {0}" + Environment.NewLine + "    ", txtFirstName.Text.Trim() + " " + txtLastName.Text.Trim());
                sb.AppendFormat("Email: {0}" + Environment.NewLine + "    ", txtEmail.Text.Trim());
                //sb.AppendFormat("Department: {0}" + Environment.NewLine + "    ", ddlDepartmentActive.SelectedValue);
                sb.AppendFormat("Office Phone Number: {0}" + Environment.NewLine + Environment.NewLine, txtPhone.Text.Trim());

                sb.AppendFormat("Course Information" + Environment.NewLine + "    ");
             //   sb.AppendFormat("Date Remove: {0}" + Environment.NewLine + "    ", txtDate.Text.Trim());
                sb.AppendFormat("CourseTitle: {0}" + Environment.NewLine + "    ", txtCourseTitle.Text.Trim());
                sb.AppendFormat("Course Number: {0}" + Environment.NewLine + "    ", txtCourseNumber.Text.Trim());
                sb.AppendFormat("Section Number: {0}" + Environment.NewLine + "    ", txtSection.Text.Trim());
                sb.AppendFormat("Keep Material on Reserve till: {0}" + Environment.NewLine + Environment.NewLine, ddlSemester.SelectedValue);

                sb.AppendFormat("Additional Remarks: {0}" + Environment.NewLine + Environment.NewLine, txtRemarks.Text.Trim());

                sb.AppendFormat("Material Information" + Environment.NewLine + Environment.NewLine + "    ");
                sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor.Text.Trim());
                sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtTitle.Text.Trim());
                sb.AppendFormat("ISBN: {0}" + Environment.NewLine + "    ", txtISBN.Text.Trim());
                sb.AppendFormat("Reserve Type: {0}" + Environment.NewLine + "    ", ddlReserve.SelectedValue);
                sb.AppendFormat("# of Copies: {0}" + Environment.NewLine + "    ", txtCopies.Text.Trim());
                sb.AppendFormat("Material Type: {0}" + Environment.NewLine + "    ", ddlMaterial.SelectedValue);
                sb.AppendFormat("Are you giving us a personal Copy: {0}"  + Environment.NewLine + "    ", rblPersonalCopy.SelectedValue);
                sb.AppendFormat("If yes, is this a donation: {0}" + Environment.NewLine + Environment.NewLine + "    ", rblIsDonation.SelectedValue);

                if (txtAuthor2.Text.Length > 0 || txtTitle2.Text.Length > 0 || ddlReserve2.SelectedValue.Length > 0 || txtCopies2.Text.Length > 0 || ddlMaterial2.SelectedValue.Length > 0)
                {
                    sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor2.Text.Trim());
                    sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtTitle2.Text.Trim());
                    sb.AppendFormat("ISBN: {0}" + Environment.NewLine + "    ", txtISBN2.Text.Trim());
                    sb.AppendFormat("Reserve Type: {0}" + Environment.NewLine + "    ", ddlReserve2.SelectedValue);
                    sb.AppendFormat("# of Copies: {0}" + Environment.NewLine + "    ", txtCopies2.Text.Trim());
                    sb.AppendFormat("Material Type: {0}" + Environment.NewLine + "    ", ddlMaterial2.SelectedValue);
                    sb.AppendFormat("Are you giving us a personal Copy: {0}"  + Environment.NewLine + "    ", rblPersonalCopy2.SelectedValue);
                    sb.AppendFormat("If yes, is this a donation: {0}" + Environment.NewLine + Environment.NewLine + "    ", rblIsDonation2.SelectedValue);          
                
                }

                if (txtAuthor3.Text.Length > 0 || txtTitle3.Text.Length > 0 || ddlReserve3.SelectedValue.Length > 0 || txtCopies3.Text.Length > 0 || ddlMaterial3.SelectedValue.Length > 0)
                {
                    sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor3.Text.Trim());
                    sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtTitle3.Text.Trim());
                    sb.AppendFormat("ISBN: {0}" + Environment.NewLine + "    ", txtISBN3.Text.Trim());
                    sb.AppendFormat("Reserve Type: {0}" + Environment.NewLine + "    ", ddlReserve3.SelectedValue);
                    sb.AppendFormat("# of Copies: {0}" + Environment.NewLine + "    ", txtCopies3.Text.Trim());
                    sb.AppendFormat("Material Type: {0}" + Environment.NewLine + "    ", ddlMaterial3.SelectedValue);
                    sb.AppendFormat("Are you giving us a personal Copy: {0}" + Environment.NewLine + "    ", rblPersonalCopy3.SelectedValue);
                    sb.AppendFormat("If yes, is this a donation: {0}" + Environment.NewLine + Environment.NewLine + "    ", rblIsDonation3.SelectedValue);  
                }

                if (txtAuthor4.Text.Length > 0 || txtTitle4.Text.Length > 0 || ddlReserve4.SelectedValue.Length > 0 || txtCopies4.Text.Length > 0 || ddlMaterial4.SelectedValue.Length > 0)
                {
                    sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor4.Text.Trim());
                    sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtTitle4.Text.Trim());
                    sb.AppendFormat("ISBN: {0}" + Environment.NewLine + "    ", txtISBN4.Text.Trim());
                    sb.AppendFormat("Reserve Type: {0}" + Environment.NewLine + "    ", ddlReserve4.SelectedValue);
                    sb.AppendFormat("# of Copies: {0}" + Environment.NewLine + "    ", txtCopies4.Text.Trim());
                    sb.AppendFormat("Material Type: {0}" + Environment.NewLine + "    ", ddlMaterial4.SelectedValue);
                    sb.AppendFormat("Are you giving us a personal Copy: {0}" + Environment.NewLine + "    ", rblPersonalCopy4.SelectedValue);
                    sb.AppendFormat("If yes, is this a donation: {0}" + Environment.NewLine + Environment.NewLine + "    ", rblIsDonation4.SelectedValue);  
                }

                if (txtAuthor5.Text.Length > 0 || txtTitle5.Text.Length > 0 || ddlReserve5.SelectedValue.Length > 0 || txtCopies5.Text.Length > 0 || ddlMaterial5.SelectedValue.Length > 0)
                {
                    sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor5.Text.Trim());
                    sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtTitle5.Text.Trim());
                    sb.AppendFormat("ISBN: {0}" + Environment.NewLine + "    ", txtISBN5.Text.Trim());
                    sb.AppendFormat("Reserve Type: {0}" + Environment.NewLine + "    ", ddlReserve5.SelectedValue);
                    sb.AppendFormat("# of Copies: {0}" + Environment.NewLine + "    ", txtCopies5.Text.Trim());
                    sb.AppendFormat("Material Type: {0}" + Environment.NewLine + "    ", ddlMaterial5.SelectedValue);
                    sb.AppendFormat("Are you giving us a personal Copy: {0}" + Environment.NewLine + "    ", rblPersonalCopy5.SelectedValue);
                    sb.AppendFormat("If yes, is this a donation: {0}" + Environment.NewLine + Environment.NewLine + "    ", rblIsDonation5.SelectedValue);
                }

                if (txtAuthor6.Text.Length > 0 || txtTitle6.Text.Length > 0 || ddlReserve6.SelectedValue.Length > 0 || txtCopies6.Text.Length > 0 || ddlMaterial6.SelectedValue.Length > 0)
                {
                    sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor6.Text.Trim());
                    sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtTitle6.Text.Trim());
                    sb.AppendFormat("ISBN: {0}" + Environment.NewLine + "    ", txtISBN6.Text.Trim());
                    sb.AppendFormat("Reserve Type: {0}" + Environment.NewLine + "    ", ddlReserve6.SelectedValue);
                    sb.AppendFormat("# of Copies: {0}" + Environment.NewLine + "    ", txtCopies6.Text.Trim());
                    sb.AppendFormat("Material Type: {0}" + Environment.NewLine + "    ", ddlMaterial6.SelectedValue);
                    sb.AppendFormat("Are you giving us a personal Copy: {0}" + Environment.NewLine + "    ", rblPersonalCopy6.SelectedValue);
                    sb.AppendFormat("If yes, is this a donation: {0}" + Environment.NewLine + Environment.NewLine + "    ", rblIsDonation6.SelectedValue);
                }

                if (txtAuthor7.Text.Length > 0 || txtTitle7.Text.Length > 0 || ddlReserve7.SelectedValue.Length > 0 || txtCopies7.Text.Length > 0 || ddlMaterial7.SelectedValue.Length > 0)
                {
                    sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor7.Text.Trim());
                    sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtTitle7.Text.Trim());
                    sb.AppendFormat("ISBN: {0}" + Environment.NewLine + "    ", txtISBN7.Text.Trim());
                    sb.AppendFormat("Reserve Type: {0}" + Environment.NewLine + "    ", ddlReserve7.SelectedValue);
                    sb.AppendFormat("# of Copies: {0}" + Environment.NewLine + "    ", txtCopies7.Text.Trim());
                    sb.AppendFormat("Material Type: {0}" + Environment.NewLine + "    ", ddlMaterial7.SelectedValue);
                    sb.AppendFormat("Are you giving us a personal Copy: {0}" + Environment.NewLine + "    ", rblPersonalCopy7.SelectedValue);
                    sb.AppendFormat("If yes, is this a donation: {0}" + Environment.NewLine + Environment.NewLine + "    ", rblIsDonation7.SelectedValue);  
                }

                if (txtAuthor8.Text.Length > 0 || txtTitle8.Text.Length > 0 || ddlReserve8.SelectedValue.Length > 0 || txtCopies8.Text.Length > 0 || ddlMaterial8.SelectedValue.Length > 0)
                {
                    sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor8.Text.Trim());
                    sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtTitle8.Text.Trim());
                    sb.AppendFormat("ISBN: {0}" + Environment.NewLine + "    ", txtISBN8.Text.Trim());
                    sb.AppendFormat("Reserve Type: {0}" + Environment.NewLine + "    ", ddlReserve8.SelectedValue);
                    sb.AppendFormat("# of Copies: {0}" + Environment.NewLine + "    ", txtCopies8.Text.Trim());
                    sb.AppendFormat("Material Type: {0}" + Environment.NewLine + "    ", ddlMaterial8.SelectedValue);
                    sb.AppendFormat("Are you giving us a personal Copy: {0}" + Environment.NewLine + "    ", rblPersonalCopy8.SelectedValue);
                    sb.AppendFormat("If yes, is this a donation: {0}" + Environment.NewLine + Environment.NewLine + "    ", rblIsDonation8.SelectedValue);  
                }

                if (txtAuthor9.Text.Length > 0 || txtTitle9.Text.Length > 0 || ddlReserve9.SelectedValue.Length > 0 || txtCopies9.Text.Length > 0 || ddlMaterial9.SelectedValue.Length > 0)
                {
                    sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor9.Text.Trim());
                    sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtTitle9.Text.Trim());
                    sb.AppendFormat("ISBN: {0}" + Environment.NewLine + "    ", txtISBN9.Text.Trim());
                    sb.AppendFormat("Reserve Type: {0}" + Environment.NewLine + "    ", ddlReserve9.SelectedValue);
                    sb.AppendFormat("# of Copies: {0}" + Environment.NewLine + "    ", txtCopies9.Text.Trim());
                    sb.AppendFormat("Material Type: {0}" + Environment.NewLine + "    ", ddlMaterial9.SelectedValue);
                    sb.AppendFormat("Are you giving us a personal Copy: {0}" + Environment.NewLine + "    ", rblPersonalCopy9.SelectedValue);
                    sb.AppendFormat("If yes, is this a donation: {0}" + Environment.NewLine + Environment.NewLine + "    ", rblIsDonation9.SelectedValue);  
                }

                else if (txtAuthor10.Text.Length > 0 || txtTitle10.Text.Length > 0 || ddlReserve10.SelectedValue.Length > 0 || txtCopies10.Text.Length > 0 || ddlMaterial10.SelectedValue.Length > 0)
                {
                    sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor10.Text.Trim());
                    sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtTitle10.Text.Trim());
                    sb.AppendFormat("ISBN: {0}" + Environment.NewLine + "    ", txtISBN10.Text.Trim());
                    sb.AppendFormat("Reserve Type: {0}" + Environment.NewLine + "    ", ddlReserve10.SelectedValue);
                    sb.AppendFormat("# of Copies: {0}" + Environment.NewLine + "    ", txtCopies10.Text.Trim());
                    sb.AppendFormat("Material Type: {0}" + Environment.NewLine + "    ", ddlMaterial10.SelectedValue);
                    sb.AppendFormat("Are you giving us a personal Copy: {0}" + Environment.NewLine + "    ", rblPersonalCopy10.SelectedValue);
                    sb.AppendFormat("If yes, is this a donation: {0}" + Environment.NewLine + Environment.NewLine + "    ", rblIsDonation10.SelectedValue);  
                }

                else if (txtAuthor11.Text.Length > 0 || txtTitle11.Text.Length > 0 || ddlReserve11.SelectedValue.Length > 0 || txtCopies11.Text.Length > 0 || ddlMaterial11.SelectedValue.Length > 0)
                {
                    sb.AppendFormat("Author: {0}" + Environment.NewLine + "    ", txtAuthor11.Text.Trim());
                    sb.AppendFormat("Title: {0}" + Environment.NewLine + "    ", txtTitle11.Text.Trim());
                    sb.AppendFormat("ISBN: {0}" + Environment.NewLine + "    ", txtISBN11.Text.Trim());
                    sb.AppendFormat("Reserve Type: {0}" + Environment.NewLine + "    ", ddlReserve11.SelectedValue);
                    sb.AppendFormat("# of Copies: {0}" + Environment.NewLine + "    ", txtCopies11.Text.Trim());
                    sb.AppendFormat("Material Type: {0}" + Environment.NewLine + "    ", ddlMaterial11.SelectedValue);
                    sb.AppendFormat("Are you giving us a personal Copy: {0}" + Environment.NewLine + "    ", rblPersonalCopy11.SelectedValue);
                    sb.AppendFormat("If yes, is this a donation: {0}" + Environment.NewLine + Environment.NewLine + "    ", rblIsDonation11.SelectedValue);
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


               
                /***************************************************************/

               // Response.Redirect("Test-CirculatingReservesThankYou.aspx");
                Server.Transfer("CirculatingReservesThankYou.aspx");
            }
/***************************************************************/
/***************************************************************/

            //if (txtEmail.Text != String.Empty)
            //{
            //    MailMessage mailMessage = new MailMessage();
            //    SmtpClient smtpClient = new SmtpClient();
            //    mailMessage.ReplyToList.Add(txtEmail.Text);
            //    // mailMessage.From = new MailAddress(txtEmail.Text);
            //    mailMessage.To.Add(txtEmail.Text);

            //    //       MailMessage reply = new MailMessage(new MailAddress(txtEmail.Text, "Sender"), mailMessage.From);

            //    //  mailMessage.To.Add("salluzzo@geneseo.edu");
            //    //mailMessage.To.Add("ha@geneseo.edu"); 
            //    //   mailMessage.Bcc.Add("finnigan@geneseo.edu,ha@geneseo.edu,rootl@geneseo.edu");

            //    mailMessage.Subject = " Thank you for your Course Reserve Request: " + txtFirstName.Text + " " + txtLastName.Text;

            //    mailMessage.Priority = MailPriority.Normal;
            //    mailMessage.IsBodyHtml = false;

            //   StringBuilder sb = new StringBuilder();
            //    sb.AppendFormat("Thank you very much for your Request, {0}" + "    ", txtFirstName.Text.Trim() + " " + txtLastName.Text.Trim() + Environment.NewLine + Environment.NewLine);
            //    sb.AppendFormat("Request ID: {0}" + Environment.NewLine + Environment.NewLine, CurrDateTime);


            //    mailMessage.Body = sb.ToString();
            //}

/*************************************************************/



/***************************************************************/





            else
            {
                MailMessage mailMessage = new MailMessage();
                SmtpClient smtpClient = new SmtpClient();

                mailMessage.From = new MailAddress(txtEmail.Text);
                mailMessage.To.Add("salluzzo@geneseo.edu");
                mailMessage.Bcc.Add("finnigan@geneseo.edu,rossd@geneseo.edu,rootl@geneseo.edu");
                mailMessage.Subject = "Circulating Reserve Request: SPAM" + txtFirstName.Text + " " + txtLastName.Text;

                mailMessage.Priority = MailPriority.Normal;
                mailMessage.IsBodyHtml = false;

                StringBuilder sb = new StringBuilder();

                sb.AppendFormat("Instructor Information" + Environment.NewLine + "    ");
                sb.AppendFormat("Name: {0}" + Environment.NewLine + "    ", txtFirstName.Text.Trim() + " " + txtLastName.Text.Trim());
                //sb.AppendFormat("Email: {0}" + Environment.NewLine + "    ", txtEmail.Text.Trim());
                //sb.AppendFormat("Department: {0}" + Environment.NewLine + "    ", ddlDepartmentActive.SelectedValue);
                sb.AppendFormat("Office Phone Number: {0}" + Environment.NewLine + Environment.NewLine, txtPhone.Text.Trim());

                sb.AppendFormat("Course Information" + Environment.NewLine + "    ");
               // sb.AppendFormat("Date Remove: {0}" + Environment.NewLine + "    ", txtDate.Text.Trim());
                sb.AppendFormat("CourseTitle: {0}" + Environment.NewLine + "    ", txtCourseTitle.Text.Trim());
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



    }

    protected void CancelButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("CirculatingReserves.aspx");
    }



}