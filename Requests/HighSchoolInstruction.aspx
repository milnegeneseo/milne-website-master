<%@ Page Title="" Language="C#" MasterPageFile="~/Requests/RequestsMasterPage.master" AutoEventWireup="true" CodeFile="HighSchoolInstruction.aspx.cs" Inherits="Requests_HighSchoolInstruction" validateRequest="false"  MaintainScrollPositionOnPostback="true"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<link href="../Scripts/jquery-ui-milne.css" rel="stylesheet" />
    <script src="../Scripts/jquery-ui.js"></script> 
        <script src="../Scripts/jquery.ui.timepicker.js"></script>    <script type="text/javascript">
        $(document).ready(function () {
          //  $('#< %= txtDueDate.ClientID %>').attr('readonly', 'readonly').datepicker({ });
         //   $('#< %= txtDueDate1.ClientID %>').datepicker({});
         //   $('#< %= txtDueDate2.ClientID %>').datepicker({});
        //    $('#< %= txtDueDate3.ClientID %>').datepicker({});
         //   $('#< %= txtDueDate4.ClientID %>').datepicker({});
        //    $('#< %= txtDueDate5.ClientID %>').datepicker({});
         //   $('#< %= txtDueDate6.ClientID %>').datepicker({});
        //    $('#< %= txtDueDate7.ClientID %>').datepicker({});
        //    $('#< %= txtDueDate8.ClientID %>').datepicker({});
         $('#<%= txtSchoolDueDate.ClientID %>').attr('readonly', 'readonly').datepicker({});
        $('#<%= txtSchoolDueDate2.ClientID %>').datepicker({});
        // $('#< %= txtSchoolDueDate3.ClientID %>').datepicker({});
           // $('#< %= txtStartTime.ClientID %>').attr('readonly', 'readonly').timepicker({
           //     showPeriod: true,
            //    showLeadingZero: false,
            //    onHourShow: OnHourShowCallback
                //onMinuteShow: OnMinuteShowCallback
           // });
          //  $('#< %= txtEndTime.ClientID %>').attr('readonly', 'readonly').timepicker({
           //     showPeriod: true,
            //    showLeadingZero: false,
             //   onHourShow: OnHourShowCallback
                //onMinuteShow: OnMinuteShowCallback
         //   });
            $('#<%= txtArrivalTime.ClientID %>').attr('readonly', 'readonly').timepicker({
                showPeriod: true,
                showLeadingZero: false,
                onHourShow: OnHourShowCallback
                //onMinuteShow: OnMinuteShowCallback
            });
            $('#<%= txtDepartureTime.ClientID %>').attr('readonly', 'readonly').timepicker({
                showPeriod: true,
                showLeadingZero: false,
                onHourShow: OnHourShowCallback
                //onMinuteShow: OnMinuteShowCallback
            });

            $('#<%= txtSchoolStudentNumber.ClientID %>').change(function () {
                if ($(this).val() >= 41) {
                    alert("Our computer lab can accommodate 40 students. Additional students must bring laptop computers.");
                    //$(this).val('');
                    //$(this).focus();
                }
            });
        });

        function OnHourShowCallback(hour) {
            if ((hour > 6) || (hour < 1)) {
                return true; // not valid
            }
            return false; // valid
        }
    </script>

<div class="breadcrumb" style="margin:20px 0px 0px 0px;"><a href="https://www.geneseo.edu/">SUNY Geneseo</a> &raquo; <a href="https://www.geneseo.edu/library">Milne Library</a> &raquo; <a href="http://intranetlib.geneseo.edu/DataPortal/Requests/HighSchoolInstruction.aspx" style="color:#b85533 !important;">High School Instruction</a></div>
<h1>High School Instruction Request Form</h1> 
    <p></p>
    <p>Requests for high school class visits should be made by either the <strong>high school library media specialist</strong> or the <strong>teacher</strong> of the class visiting the library. </p>
<ul>
    <li><b><asp:LinkButton ID="HSInstruction" runat="server" CausesValidation="False" OnClick="HighSchoolInstructionInfoPanelLink_Click">High School Instruction Policies & Scheduling Information <img alt="Click for more information on High School Instruction" src="img/question-mark-icon-16.png" /></asp:LinkButton></b>
<%--    <li>For College Student Research Instruction, please use the <a href="http://intranetlib.geneseo.edu/DataPortal/Requests/Instruction.aspx">Research Instruction</a> form</li>--%>

</ul>
<%--<div style="float:left; width:55%;">
<p>Milne Library offers the following types of instruction:</p>
<div style="float:left;width:100%;">
<span class="link-button-background style="margin-bottom: 10px;"><b><asp:LinkButton ID="ResearchInstruction" runat="server" CausesValidation="False" OnClick="ResearchInstructionInfoPanelLink_Click">Research Instruction <img alt="Click for more information on Research Instruction" src="img/question-mark-icon-16.png" /></asp:LinkButton></b></span>&nbsp; 
	&nbsp;  <span class="link-button-background style="margin-bottom: 10px;"><b><asp:LinkButton ID="TechnologyInstruction" runat="server" CausesValidation="False" OnClick="TechnologyInstructionInfoPanelLink_Click">Technology Instruction <img alt="Click for more information on Technology Instruction" src="img/question-mark-icon-16.png" /></asp:LinkButton></b></span>&nbsp;
	&nbsp;  <span class="link-button-background style="margin-bottom: 10px;"><b><asp:LinkButton ID="HSInstruction" runat="server" CausesValidation="False" OnClick="HighSchoolInstructionInfoPanelLink_Click">High School Instruction <img alt="Click for more information on High School Instruction" src="img/question-mark-icon-16.png" /></asp:LinkButton></b>
        </span>
</div>
	<div style="clear:both;">
	</div>
	<asp:Panel ID="ResearchInstructionInfoPanel" runat="server" Visible="False" >  
<fieldset>
<legend>Research Instruction</legend>           
       <p>Milne library offers a variety of instructional opportunities, tailoring sessions to fit any level of instructional need or class size. Milne Librarians can provide instruction aligned to a specific assignment requiring the use of library resources.</p>
       <br />
       <p>Milne Librarians can:</p>
       <ul>
           <li>Meet with professors to discuss learning goals and objectives of a chosen course</li>
           <li>Develop assignments that promote greater understanding of course content through improved research practice</li>
           <li>Plan a semester schedule with the teaching faculty to appropriately time assignments for maximum learning potential</li>
           <li>Offer suggestions for collaborative teaching tools and methods to enhance the classroom experience</li>
           <li>Provide evaluative feedback to students</li>
           <li>Assess student research skills through informal and formal means</li>
           <li>Meet with individual students or small groups outside of class</li>
       </ul>
       <p>&nbsp;</p>
     <br />
<p style="text-align:right; margin-right:50px;"><b><asp:LinkButton ID="CloseResearchPanel" runat="server" CausesValidation="False" OnClick="ResearchConsultClosePanel_Click" CssClass="close-window-reset">Close X</asp:LinkButton></b></p>
</fieldset> 
</asp:Panel>
<asp:Panel ID="TechnologyInstructionInfoPanel" runat="server" Visible="False" ><br />  
<fieldset>
<legend>Technology Instruction</legend>            
<p>Schedule a class with a technology specialist to help guide you through software package basics, and learn to harness new technology to boost student engagement, interest, and success.</p>
<p></p>
<p style="text-align:right; margin-right:50px;"><b><asp:LinkButton ID="CloseTechPanel" runat="server" CausesValidation="False" OnClick="TechnologyConsultClosePanel_Click" CssClass="close-window-reset">Close X</asp:LinkButton></b></p>
</fieldset> 
</asp:Panel>--%>
<asp:Panel ID="HighSchoolInstructionInfoPanel" runat="server" Visible="False" ><br />  
<fieldset>
<legend>High School Instruction Policies</legend>           
<h3 style="font-size: 2.2em; font-weight: normal !important;">Requests</h3>
       <p>In order to integrate your students’ needs with those of our college students, it is necessary that we receive your request&nbsp;form <b>3 weeks in advance</b> of the date requested for the visit. Confirmation for library instruction will be made via e-mail within 7 days of receipt of this form.</p> 
       <p>Unfortunately, due to the lack of classroom space, we will not be able to honor requests for visits during times of peak college use. It is preferable to schedule class visits during breaks when SUNY Geneseo is not in session. If this is not possible, please <a href="mailto:libinstr@geneseo.edu"><strong>email us</strong></a> to discuss a mutually available date. If possible, the high school library media specialist should accompany classes on visits.</p>
	   <p>For groups of 15 or more students, please bring at least one additional high school staff member.</p>
       <p>Because our <strong><a href="https://www.geneseo.edu/library/library-computer-labs-technology">computer lab
           <img src="img/question-mark-icon-16.png" />
           </a></strong> has 40 computers, the <strong>maximum number of students per visit is 40</strong>.</p>
       <p>Students will be given a one-day username and password that will provide them use of the Library’s computers and free computer printing for the day of their visit.</p>
	   <p>Please forward a list of student topics to the Library Instruction Coordinator at least 5 days before your visit.</p>
<p>Please direct all questions regarding visits to <a href="mailto:libinstr@geneseo.edu"><strong>libinstr@geneseo.edu</strong></a></strong>.</p>
<h3 style="font-size: 2.2em; font-weight: normal !important;">Borrowing</h1>
       <p>High school class visits are intended to provide students with on-site use of library resources.</p>
       <p>Unfortunately we are unable to lend materials to groups during their visit. Students who are 18 years old may return to the library on their own to obtain a Guest Borrower’s card if they need materials at Geneseo which are not available through the high school’s library media center and interlibrary loan.</p>
       <p>Students younger than 18 will need to bring someone older with them in order to borrow materials.</p>
       <p>All students should be advised of our return policies and overdue fees of 25 cents per day.</p>
<p style="text-align:right; margin-right:50px;"><b><asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClick="HighSchoolConsultClosePanel_Click" CssClass="close-window-reset">Close X</asp:LinkButton></b></p>
</fieldset> 
</asp:Panel>
<%--<asp:Panel ID="TypePanel" runat="server" Visible="False" ><br />
<fieldset>
<legend><span class="required">* </span>Please select the Instruction type:</legend>
<div class="radiobutton2">
    <asp:RadioButtonList ID="rblType" runat="server" RepeatDirection="Horizontal" CssClass="radio" AutoPostBack="True" OnSelectedIndexChanged="rblType_SelectedIndexChanged" CellSpacing="5" style="width:80%;" title="Please Select the Instruction Type" >
        <asp:ListItem Text="Research" Value="Research" title="Research" />
        <asp:ListItem Text="Technology" Value="Technology" title="Technology" />
        <asp:ListItem Text="High School" Value="Other" title="High School" />
    </asp:RadioButtonList>    
</div>
<asp:requiredfieldvalidator id="rfType" runat="server" errormessage="Required" controltovalidate="rblType" SetFocusOnError="True" ForeColor="Red"></asp:requiredfieldvalidator>                
<p style="text-align:right; margin-right:50px;"><b><asp:LinkButton ID="ResetType" runat="server" CausesValidation="False" OnClick="btnReset_Click" CssClass="close-window-reset">Reset</asp:LinkButton></b></p>
<p class="required">* Indicates required field.</p>
</fieldset> 
</asp:Panel><br />
<asp:Panel ID="ResearchTechInstructionPanel" runat="server" Visible="False" >
<%-- Research Title Panel --%>
<%--    <asp:Panel ID="ResearchTitlePanel" runat="server" Visible="False" >   
<h3 style="font-size: 2.2em;">Research Instruction</h3> 
</asp:Panel>--%> <!--Research Instruction Title Panel-->
<%-- Tech  Title Panel--%>
 <%--   <asp:Panel ID="InstructionTitlePanel" runat="server" Visible="False" >
<h3 style="font-size: 2.2em;">Technology Instruction</h3>
</asp:Panel> <!--Tech Instruction Title Panel-->
<fieldset>
<legend>Faculty Information</legend>
    <label><span class="required">*</span> First Name:</label>  <asp:TextBox runat="server" size="25" maxlength="25" ID="txtFirstName" TabIndex="2" title="First Name" />&nbsp;<asp:requiredfieldvalidator id="rfFirstName" runat="server" errormessage="Required" CssClass="required"  controltovalidate="txtFirstName" SetFocusOnError="True"></asp:requiredfieldvalidator>  <br />
    <label><span class="required">*</span> Last Name: </label><asp:TextBox runat="server" size="25" maxlength="50" ID="txtLastName" TabIndex="3" title="Last Name" />&nbsp;<asp:requiredfieldvalidator id="rfLastName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtLastName" SetFocusOnError="True"></asp:requiredfieldvalidator><br />
    <label><span class="required">*</span> Email Address: </label><asp:TextBox runat="server" size="25" maxlength="50" ID="txtEmail" TabIndex="4"  title="Email" />&nbsp;
    <asp:requiredfieldvalidator id="rfEmail" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtEmail" SetFocusOnError="True"></asp:requiredfieldvalidator> 
    <asp:RegularExpressionValidator ID="reEmail1" ErrorMessage="Invalid Email Address" CssClass="required" ControlToValidate="txtEmail" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" /><br />
    <label><span class="required">*</span> Office Phone Number: </label><asp:TextBox ID="txtPhone" runat="server" size="25" maxlength="25" TabIndex="5" title="Office Phone Number" />&nbsp;<asp:requiredfieldvalidator id="rfPhone" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtPhone" SetFocusOnError="True"></asp:requiredfieldvalidator><br /> 
</fieldset><br />
<fieldset>
<legend>Course Information</legend>
<label><span class="required">*</span> Planned Number of Students: </label><asp:TextBox ID="txtStudentNumber" runat="server" size="3"  MaxLength="3" TabIndex="6" title="Planned Number of Students" />&nbsp;<asp:requiredfieldvalidator id="rfStudentNumber" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtStudentNumber" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp; 
<asp:RegularExpressionValidator ID="reStudentNumber" runat="server" CssClass="required" ControlToValidate="txtStudentNumber" ErrorMessage="Numbers only" SetFocusOnError="True" ValidationExpression="((^[0-9]+$))"></asp:RegularExpressionValidator><br />
<label><span class="required">*</span> Is this for a College Course? </label>
<div class="radiobutton">
<asp:RadioButtonList ID="rblCollege" runat="server" RepeatDirection="Horizontal" CssClass="rbl" AutoPostBack="True" OnSelectedIndexChanged="rblCollege_SelectedIndexChanged" TabIndex="7" title="Is This for A College Course?">
        <asp:ListItem Selected="True" Text="Yes" Value="Yes" title="Yes" />
        <asp:ListItem Text="No" Value="No" title="No" /> 
</asp:RadioButtonList>
</div>
<asp:requiredfieldvalidator id="rfCollege" runat="server" errormessage="Required" CssClass="required" controltovalidate="rblCollege" SetFocusOnError="True" > </asp:requiredfieldvalidator> &nbsp;<br />--%>
<%-- College Yes Visibility --%>
<%--<asp:Panel ID="collegeYesPanel" runat="server" Visible="True" >    
<label>Course Number (ABCD 123 Format): </label><asp:TextBox ID="txtCourseNumber" runat="server" size="8" maxlength="8" title="Course Number" />&nbsp;<asp:RegularExpressionValidator ID="reCourseNumber" SetFocusOnError="true" CssClass="required" ValidationExpression="^[zA-Z]{4} [0-9]{3}$" ErrorMessage="Course Number should be in 'ABCD 123' format" ControlToValidate="txtCourseNumber" runat="server" /><br />
<label>Course Title: </label><asp:TextBox ID="txtCourseTitle" runat="server" size="45" maxlength="75" title="Course Title" /><br />
<label>Department:</label>
<asp:DropDownList runat="server" Width="150px" ID="ddlDepartmentActive" title="Select Department" /><br /><br />
</asp:Panel> <!--End of College Yes Panel-->
<label>Regular Semester Classroom Location: </label><asp:TextBox ID="txtLocation" runat="server" size="45" maxlength="75" title="Regular Semester Classroom Location" /><br />--%>
<%-- College No Visibility --%>
<%--<asp:Panel ID="collegeNoPanel" runat="server" Visible="False" >
<label>Enter Associated Group or Program: </label><asp:TextBox ID="txtAssociatedGroup" runat="server" size="45" maxlength="75" title="Enter Associated Group or Program" /><br />
<label>Workshop (non college) Title: </label><asp:TextBox ID="txtWorkshop" runat="server" size="45" maxlength="75" title="Workshop" /><br />
</asp:Panel> <!--End of College No Panel-->
</fieldset><br />
<fieldset>--%><!-- br />INTD 105 instructors should note changes in the course description were approved by faculty senate in 2015.&nbsp;<b><br /><br /><a href="https://wiki.geneseo.edu/display/intd105/Course+Guidelines">See the updated guidelines.</a></b><br /><br / -->
<%--<legend>Goals of Instruction</legend>
<label>
<span class="required">* </span>Skill/Concept #1:
</label>--%>
<%--    <asp:DropDownList ID="ddlSkill1" runat="server" />--%>
<%--<asp:DropDownList Width="320px" ID="ddlSkill1" CssClass="dropdown" runat="server" TabIndex="20" title="Select Goals of Instruction Skills or Concepts">
                        <asp:ListItem Text="--Select One--" Value="None" Selected="True"  />                        
                        <asp:ListItem Text="Accessing materials" Value="Accessing materials" title="Accessing materials" />
                        <asp:ListItem Text="Citation tracking" Value="Citation tracking" title="Citation tracking" />
                        <asp:ListItem Text="Date-sensitive" Value="Date-sensitive" title="Date-sensitive" />
                        <asp:ListItem Text="Evaluating materials" Value="Evaluating materials" title="Evaluating materials" />
                        <asp:ListItem Text="In a foreign language" Value="In a foreign language" title="In a foreign language" />
                        <asp:ListItem Text="INTD 105 introduction" Value="INTD 105 introduction" title="INTD 105 introduction" />
                        <asp:ListItem Text="Keyword vs Subject" Value="Keyword vs Subject"  title="Keyword vs Subject" />
                        <asp:ListItem Text="Navigating the library" Value="Navigating the library" title="Navigating the library" />
                        <asp:ListItem Text="Plagiarism/Citation style" Value="Plagiarism/Citation style" title="Plagiarism/Citation style" />
                        <asp:ListItem Text="Presenting information" Value="Presenting information" title="Presenting information" />
                        <asp:ListItem Text="Primary vs Secondary sources" Value="Primary vs Secondary sources" title="Primary vs Secondary sources" />
                        <asp:ListItem Text="Technology proficiency" Value="Technology proficiency" title="Technology proficiency" />
                        <asp:ListItem Text="Topic formation" Value="Topic formation" title="Topic formation" />
                        <asp:ListItem Text="Using appropriate search tools" Value="Using appropriate search tools" title="Using appropriate search tools" />
                        <asp:ListItem Text="Other" Value="Other" title="Other" />
</asp:DropDownList>
    &nbsp;<asp:requiredfieldvalidator id="rfSkill1" runat="server" errormessage="Required" CssClass="required" controltovalidate="ddlSkill1" SetFocusOnError="True" ></asp:requiredfieldvalidator>
    <br />
<label><span class="required">&nbsp; </span>Skill/Concept #2: </label>--%>
<%--    <asp:DropDownList ID="ddlSkill2" runat="server" />--%>
<%--<asp:DropDownList Width="320px" ID="ddlSkill2" CssClass="dropdown" runat="server" TabIndex="22" title="Select Secondary Goals of Instruction Skills or Concepts">
                        <asp:ListItem Text="--Select One--" Value="None" Selected="True"  />                        
                        <asp:ListItem Text="Accessing materials" Value="Accessing materials" title="Accessing materials" />
                        <asp:ListItem Text="Citation tracking" Value="Citation tracking" title="Citation tracking" />
                        <asp:ListItem Text="Date-sensitive" Value="Date-sensitive" title="Date-sensitive" />
                        <asp:ListItem Text="Evaluating materials" Value="Evaluating materials" title="Evaluating materials" />
                        <asp:ListItem Text="In a foreign language" Value="In a foreign language" title="In a foreign language" />
                        <asp:ListItem Text="INTD 105 introduction" Value="INTD 105 introduction" title="INTD 105 introduction" />
                        <asp:ListItem Text="Keyword vs Subject" Value="Keyword vs Subject"  title="Keyword vs Subject" />
                        <asp:ListItem Text="Navigating the library" Value="Navigating the library" title="Navigating the library" />
                        <asp:ListItem Text="Plagiarism/Citation style" Value="Plagiarism/Citation style" title="Plagiarism/Citation style" />
                        <asp:ListItem Text="Presenting information" Value="Presenting information" title="Presenting information" />
                        <asp:ListItem Text="Primary vs Secondary sources" Value="Primary vs Secondary sources" title="Primary vs Secondary sources" />
                        <asp:ListItem Text="Technology proficiency" Value="Technology proficiency" title="Technology proficiency" />
                        <asp:ListItem Text="Topic formation" Value="Topic formation" title="Topic formation" />
                        <asp:ListItem Text="Using appropriate search tools" Value="Using appropriate search tools" title="Using appropriate search tools" />
                        <asp:ListItem Text="Other" Value="Other" title="Other" />
</asp:DropDownList><br />
<label><span class="required">&nbsp; </span>Skill/Concept #3: </label>--%>
<%--    <asp:DropDownList ID="ddlSkill3" runat="server" />--%>
<%--                 <asp:DropDownList Width="320px" ID="ddlSkill3" CssClass="dropdown" runat="server" TabIndex="23" title="Select Third Goals of Instruction Skills or Concepts">
                        <asp:ListItem Text="--Select One--" Value="None" Selected="True"  />                        
                        <asp:ListItem Text="Accessing materials" Value="Accessing materials" title="Accessing materials" />
                        <asp:ListItem Text="Citation tracking" Value="Citation tracking" title="Citation tracking" />
                        <asp:ListItem Text="Date-sensitive" Value="Date-sensitive" title="Date-sensitive" />
                        <asp:ListItem Text="Evaluating materials" Value="Evaluating materials" title="Evaluating materials" />
                        <asp:ListItem Text="In a foreign language" Value="In a foreign language" title="In a foreign language" />
                        <asp:ListItem Text="INTD 105 introduction" Value="INTD 105 introduction" title="INTD 105 introduction" />
                        <asp:ListItem Text="Keyword vs Subject" Value="Keyword vs Subject"  title="Keyword vs Subject" />
                        <asp:ListItem Text="Navigating the library" Value="Navigating the library" title="Navigating the library" />
                        <asp:ListItem Text="Plagiarism/Citation style" Value="Plagiarism/Citation style" title="Plagiarism/Citation style" />
                        <asp:ListItem Text="Presenting information" Value="Presenting information" title="Presenting information" />
                        <asp:ListItem Text="Primary vs Secondary sources" Value="Primary vs Secondary sources" title="Primary vs Secondary sources" />
                        <asp:ListItem Text="Technology proficiency" Value="Technology proficiency" title="Technology proficiency" />
                        <asp:ListItem Text="Topic formation" Value="Topic formation" title="Topic formation" />
                        <asp:ListItem Text="Using appropriate search tools" Value="Using appropriate search tools" title="Using appropriate search tools" />
                        <asp:ListItem Text="Other" Value="Other" title="Other" />
        </asp:DropDownList><br />--%>
<!--b>What additional skills or concepts would you like included in this instruction session?</b -->
<%--<asp:TextBox ID="txtGoalsDetails" runat="server" Height="75"  TextMode="MultiLine" TabIndex="24" title="Additional Skills, Goals, concepts" />--%>
<%--</fieldset><br />--%>
<%--<fieldset>
<legend>Date of Instruction</legend>
<label><span class="required">*</span> 1st Choice Date (mm/dd/yyyy): </label>
        <asp:TextBox CssClass="date" ID="txtDueDate" runat="server" size="11" maxlength="11"  TabIndex="25" />&nbsp;
        <asp:RegularExpressionValidator ID="reDueDate" runat="server" CssClass="required" ControlToValidate="txtDueDate" ErrorMessage="Not a valid date (mm/dd/yyyy)" SetFocusOnError="True" ValidationExpression="((^(10|12|0?[13578])([/])(3[01]|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(11|0?[469])([/])(30|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(2[0-8]|1[0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(29)([/])([2468][048]00)$)|(^(0?2)([/])(29)([/])([3579][26]00)$)|(^(0?2)([/])(29)([/])([1][89][0][48])$)|(^(0?2)([/])(29)([/])([2-9][0-9][0][48])$)|(^(0?2)([/])(29)([/])([1][89][2468][048])$)|(^(0?2)([/])(29)([/])([2-9][0-9][2468][048])$)|(^(0?2)([/])(29)([/])([1][89][13579][26])$)|(^(0?2)([/])(29)([/])([2-9][0-9][13579][26])$))"></asp:RegularExpressionValidator> 
    &nbsp; <asp:requiredfieldvalidator id="rfDueDate" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtDueDate" SetFocusOnError="True" ></asp:requiredfieldvalidator><br />
<label>2nd Choice Date (mm/dd/yyyy): </label>
        <asp:TextBox CssClass="date" ID="txtDueDate1" runat="server" size="11" maxlength="11"   TabIndex="26"/>&nbsp;
        <asp:RegularExpressionValidator ID="reDueDate1" runat="server" CssClass="required" ControlToValidate="txtDueDate1" ErrorMessage="Not a valid date (mm/dd/yyyy)" SetFocusOnError="True" ValidationExpression="((^(10|12|0?[13578])([/])(3[01]|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(11|0?[469])([/])(30|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(2[0-8]|1[0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(29)([/])([2468][048]00)$)|(^(0?2)([/])(29)([/])([3579][26]00)$)|(^(0?2)([/])(29)([/])([1][89][0][48])$)|(^(0?2)([/])(29)([/])([2-9][0-9][0][48])$)|(^(0?2)([/])(29)([/])([1][89][2468][048])$)|(^(0?2)([/])(29)([/])([2-9][0-9][2468][048])$)|(^(0?2)([/])(29)([/])([1][89][13579][26])$)|(^(0?2)([/])(29)([/])([2-9][0-9][13579][26])$))"></asp:RegularExpressionValidator> <br />   
<label>Additional or Alternative Date if needed (mm/dd/yyyy): </label>
        <asp:TextBox CssClass="date" ID="txtDueDate2" runat="server" size="11" maxlength="11"  TabIndex="27" OnTextChanged="txtDueDate2_TextChanged" AutoPostBack="True"/>&nbsp;
        <asp:RegularExpressionValidator ID="reDueDate2" runat="server" CssClass="required" ControlToValidate="txtDueDate2" ErrorMessage="Not a valid date (mm/dd/yyyy)" SetFocusOnError="True" ValidationExpression="((^(10|12|0?[13578])([/])(3[01]|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(11|0?[469])([/])(30|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(2[0-8]|1[0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(29)([/])([2468][048]00)$)|(^(0?2)([/])(29)([/])([3579][26]00)$)|(^(0?2)([/])(29)([/])([1][89][0][48])$)|(^(0?2)([/])(29)([/])([2-9][0-9][0][48])$)|(^(0?2)([/])(29)([/])([1][89][2468][048])$)|(^(0?2)([/])(29)([/])([2-9][0-9][2468][048])$)|(^(0?2)([/])(29)([/])([1][89][13579][26])$)|(^(0?2)([/])(29)([/])([2-9][0-9][13579][26])$))"></asp:RegularExpressionValidator> <br />
<asp:Panel runat="server" ID="plhDueDate3" Visible="false">      
    <label>Additional or Alternative Date if needed (mm/dd/yyyy): </label>
        <asp:TextBox CssClass="date" ID="txtDueDate3" runat="server" size="11" maxlength="11" OnTextChanged="txtDueDate3_TextChanged" AutoPostBack="True" />&nbsp;
        <asp:RegularExpressionValidator ID="reDueDate3" runat="server" CssClass="required" ControlToValidate="txtDueDate3" ErrorMessage="Not a valid date (mm/dd/yyyy)" SetFocusOnError="True" ValidationExpression="((^(10|12|0?[13578])([/])(3[01]|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(11|0?[469])([/])(30|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(2[0-8]|1[0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(29)([/])([2468][048]00)$)|(^(0?2)([/])(29)([/])([3579][26]00)$)|(^(0?2)([/])(29)([/])([1][89][0][48])$)|(^(0?2)([/])(29)([/])([2-9][0-9][0][48])$)|(^(0?2)([/])(29)([/])([1][89][2468][048])$)|(^(0?2)([/])(29)([/])([2-9][0-9][2468][048])$)|(^(0?2)([/])(29)([/])([1][89][13579][26])$)|(^(0?2)([/])(29)([/])([2-9][0-9][13579][26])$))"></asp:RegularExpressionValidator> <br />
</asp:Panel>
<asp:Panel runat="server" ID="plhDueDate4" Visible="false">         
<label>Additional or Alternative Date if needed (mm/dd/yyyy): </label>
        <asp:TextBox CssClass="date" ID="txtDueDate4" runat="server" size="11" maxlength="11" AutoPostBack="True" />&nbsp;
        <asp:RegularExpressionValidator ID="reDueDate4" runat="server" CssClass="required" ControlToValidate="txtDueDate4" ErrorMessage="Not a valid date (mm/dd/yyyy)" SetFocusOnError="True" ValidationExpression="((^(10|12|0?[13578])([/])(3[01]|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(11|0?[469])([/])(30|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(2[0-8]|1[0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(29)([/])([2468][048]00)$)|(^(0?2)([/])(29)([/])([3579][26]00)$)|(^(0?2)([/])(29)([/])([1][89][0][48])$)|(^(0?2)([/])(29)([/])([2-9][0-9][0][48])$)|(^(0?2)([/])(29)([/])([1][89][2468][048])$)|(^(0?2)([/])(29)([/])([2-9][0-9][2468][048])$)|(^(0?2)([/])(29)([/])([1][89][13579][26])$)|(^(0?2)([/])(29)([/])([2-9][0-9][13579][26])$))"></asp:RegularExpressionValidator> <br />   
</asp:Panel>
<asp:Panel runat="server" ID="plhDueDate5" Visible="false">
<label>Additional or Alternative Date if needed (mm/dd/yyyy): </label>
        <asp:TextBox CssClass="date" ID="txtDueDate5" runat="server" size="11" maxlength="11" AutoPostBack="True"  />&nbsp;
        <asp:RegularExpressionValidator ID="reDueDate5" runat="server" CssClass="required" ControlToValidate="txtDueDate5" ErrorMessage="Not a valid date (mm/dd/yyyy)" SetFocusOnError="True" ValidationExpression="((^(10|12|0?[13578])([/])(3[01]|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(11|0?[469])([/])(30|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(2[0-8]|1[0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(29)([/])([2468][048]00)$)|(^(0?2)([/])(29)([/])([3579][26]00)$)|(^(0?2)([/])(29)([/])([1][89][0][48])$)|(^(0?2)([/])(29)([/])([2-9][0-9][0][48])$)|(^(0?2)([/])(29)([/])([1][89][2468][048])$)|(^(0?2)([/])(29)([/])([2-9][0-9][2468][048])$)|(^(0?2)([/])(29)([/])([1][89][13579][26])$)|(^(0?2)([/])(29)([/])([2-9][0-9][13579][26])$))"></asp:RegularExpressionValidator> <br /> 
</asp:Panel>
<asp:Panel runat="server" ID="plhDueDate6" Visible="false">
<label>Additional or Alternative Date if needed (mm/dd/yyyy): </label>
        <asp:TextBox CssClass="date" ID="txtDueDate6" runat="server" size="11" maxlength="11" AutoPostBack="True" />&nbsp;
        <asp:RegularExpressionValidator ID="reDueDate6" runat="server" CssClass="required" ControlToValidate="txtDueDate6" ErrorMessage="Not a valid date (mm/dd/yyyy)" SetFocusOnError="True" ValidationExpression="((^(10|12|0?[13578])([/])(3[01]|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(11|0?[469])([/])(30|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(2[0-8]|1[0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(29)([/])([2468][048]00)$)|(^(0?2)([/])(29)([/])([3579][26]00)$)|(^(0?2)([/])(29)([/])([1][89][0][48])$)|(^(0?2)([/])(29)([/])([2-9][0-9][0][48])$)|(^(0?2)([/])(29)([/])([1][89][2468][048])$)|(^(0?2)([/])(29)([/])([2-9][0-9][2468][048])$)|(^(0?2)([/])(29)([/])([1][89][13579][26])$)|(^(0?2)([/])(29)([/])([2-9][0-9][13579][26])$))"></asp:RegularExpressionValidator> <br />
</asp:Panel>
<asp:Panel runat="server" ID="plhDueDate7" Visible="false">
<label>Additional or Alternative Date if needed (mm/dd/yyyy): </label>
        <asp:TextBox CssClass="date" ID="txtDueDate7" runat="server" size="11" maxlength="11" AutoPostBack="True"  />&nbsp;
        <asp:RegularExpressionValidator ID="reDueDate7" runat="server" CssClass="required" ControlToValidate="txtDueDate7" ErrorMessage="Not a valid date (mm/dd/yyyy)" SetFocusOnError="True" ValidationExpression="((^(10|12|0?[13578])([/])(3[01]|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(11|0?[469])([/])(30|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(2[0-8]|1[0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(29)([/])([2468][048]00)$)|(^(0?2)([/])(29)([/])([3579][26]00)$)|(^(0?2)([/])(29)([/])([1][89][0][48])$)|(^(0?2)([/])(29)([/])([2-9][0-9][0][48])$)|(^(0?2)([/])(29)([/])([1][89][2468][048])$)|(^(0?2)([/])(29)([/])([2-9][0-9][2468][048])$)|(^(0?2)([/])(29)([/])([1][89][13579][26])$)|(^(0?2)([/])(29)([/])([2-9][0-9][13579][26])$))"></asp:RegularExpressionValidator> <br />
</asp:Panel>
<asp:Panel runat="server" ID="plhDueDate8" Visible="false">
<label>Additional or Alternative Date if needed (mm/dd/yyyy): </label>
        <asp:TextBox CssClass="date" ID="txtDueDate8" runat="server" size="11" maxlength="11" AutoPostBack="True" />&nbsp;
        <asp:RegularExpressionValidator ID="reDueDate8" runat="server" CssClass="required" ControlToValidate="txtDueDate8" ErrorMessage="Not a valid date (mm/dd/yyyy)" SetFocusOnError="True" ValidationExpression="((^(10|12|0?[13578])([/])(3[01]|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(11|0?[469])([/])(30|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(2[0-8]|1[0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(29)([/])([2468][048]00)$)|(^(0?2)([/])(29)([/])([3579][26]00)$)|(^(0?2)([/])(29)([/])([1][89][0][48])$)|(^(0?2)([/])(29)([/])([2-9][0-9][0][48])$)|(^(0?2)([/])(29)([/])([1][89][2468][048])$)|(^(0?2)([/])(29)([/])([2-9][0-9][2468][048])$)|(^(0?2)([/])(29)([/])([1][89][13579][26])$)|(^(0?2)([/])(29)([/])([2-9][0-9][13579][26])$))"></asp:RegularExpressionValidator> <br /><br />
</asp:Panel>
<label><span class="required">*</span> Class Start Time: </label> <asp:TextBox CssClass="time" ID="txtStartTime" runat="server" size="11" maxlength="11" TabIndex="30" />
    &nbsp;<asp:requiredfieldvalidator id="rfStartTime" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtStartTime" SetFocusOnError="True" ></asp:requiredfieldvalidator><br />
<label><span class="required">*</span> Class End Time: </label> <asp:TextBox CssClass="time" ID="txtEndTime" runat="server" size="11" maxlength="11" TabIndex="31" />
    &nbsp;<asp:requiredfieldvalidator id="rfEndTime" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtEndTime" SetFocusOnError="True" ></asp:requiredfieldvalidator> 
</fieldset><br />
<fieldset>
<legend>Instruction Request Details</legend>
<label><span class="required">*</span> Instruction geared towards specific assignment?  </label>
<asp:RadioButtonList ID="rblAssignment" runat="server" RepeatDirection="Horizontal" CssClass="rbl" TabIndex="32">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" /> 
</asp:RadioButtonList>&nbsp;<asp:requiredfieldvalidator id="rfAssignment" runat="server" errormessage="Required" CssClass="required" controltovalidate="rblAssignment" SetFocusOnError="True" ></asp:requiredfieldvalidator> <br />
<label><span class="required">*</span> Will students already have topics?</label>
<asp:RadioButtonList ID="rblTopics" runat="server" RepeatDirection="Horizontal" CssClass="rbl" TabIndex="34">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" /> 
</asp:RadioButtonList>&nbsp;<asp:requiredfieldvalidator id="rfTopics" runat="server" errormessage="Required" CssClass="required" controltovalidate="rblTopics" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp;<br />
Further details on the assignment:<br />
<asp:TextBox ID="txtAssignmentDetails" runat="server" Height="75" TextMode="MultiLine" TabIndex="36" /><br /><br />
</fieldset><br />
<fieldset>
<legend>Additional information/comments/remarks</legend>
<asp:TextBox ID="txtComments" runat="server" Height="75"  TextMode="MultiLine" TabIndex="43"/><br /><br />
<asp:Button Text="Submit" ID="btnSubmit" OnClick="btnSubmit_Click" runat="server" class="" TabIndex="45"/>&nbsp;
<asp:Button Text="Clear Form" ID="CancelButton" runat="server" CausesValidation="False" CommandName="Reset" OnClick="CancelButton_Click" />
</fieldset>	
<asp:Label ID="lblErrorMessage" runat="server" />
</asp:Panel> --%><!--End of Research Tech Instruction Panel-->
<!--Begin HSInstruction Panel -->
<asp:Panel ID="HSInstructionPanel" runat="server" Visible="True" >
<%--<h3 style="font-size: 2.2em;">High School Instruction</h3> --%>
<fieldset>
<legend>School Information</legend>
<label><span class="required">*</span> School Name: </label><asp:TextBox ID="txtSchoolName" runat="server" size="25" maxlength="75" title="High School Name" />&nbsp;<asp:requiredfieldvalidator id="rfSchoolName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtSchoolName" SetFocusOnError="True"></asp:requiredfieldvalidator> <br /> 
<label><span class="required">*</span> School Phone: </label><asp:TextBox ID="txtSchoolPhone" runat="server" size="25" maxlength="25" title="High School Phone" />&nbsp;<asp:requiredfieldvalidator id="rfSchoolPhone" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtSchoolPhone" SetFocusOnError="True"></asp:requiredfieldvalidator><br /> 
<label><span class="required">*</span> Media Specialist or HS Teacher&#39;s First Name: </label> <asp:TextBox runat="server" size="25" maxlength="25" ID="txtMediaFirstName" title="Media Specialist First Name" />&nbsp;<asp:requiredfieldvalidator id="rfMediaFirstName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtMediaFirstName" SetFocusOnError="True"></asp:requiredfieldvalidator><br />
<label><span class="required">*</span> Media Specialist or HS Teacher&#39;s Last Name: </label><asp:TextBox runat="server" size="25" maxlength="50" ID="txtMediaLastName" title="Media Specialist Last Name" />&nbsp;<asp:requiredfieldvalidator id="rfMediaLastName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtMediaLastName" SetFocusOnError="True"></asp:requiredfieldvalidator> <br />
<label><span class="required">*</span> Email Address: </label><asp:TextBox runat="server" size="25" maxlength="50" ID="txtMediaEmail" title="Media Specialist Email" />&nbsp;<asp:requiredfieldvalidator id="rfMediaEmail" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtMediaEmail" SetFocusOnError="True"></asp:requiredfieldvalidator>
<asp:RegularExpressionValidator ID="reMediaEmail" ErrorMessage="Invalid Email Address" CssClass="required" ControlToValidate="txtMediaEmail" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" /><br />
</fieldset><br />
<fieldset>
<legend>Class Information</legend>
<%--<label><span class="required">&nbsp;</span> Topic: </label><asp:TextBox ID="txtSchoolTopic" runat="server" size="25" maxlength="75"  /> <br />--%>
<label><span class="required">&nbsp;</span> Class: </label><asp:TextBox ID="txtSchoolCourse" runat="server" size="25" maxlength="75" title="Class" /><br />
<label><span class="required">*</span> Teacher's First Name: </label> <asp:TextBox runat="server" size="25" maxlength="25" ID="txtTeacherFirstName" title="Teacher First Name" />&nbsp; <asp:requiredfieldvalidator id="rfTeacherFirstName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtTeacherFirstName" SetFocusOnError="True"></asp:requiredfieldvalidator><br />
<label><span class="required">*</span> Teacher's Last Name: </label><asp:TextBox runat="server" size="25" maxlength="50" ID="txtTeacherLastName" title="Teacher Last Name" />&nbsp; <asp:requiredfieldvalidator id="rfTeacherLastName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtTeacherLastName" SetFocusOnError="True"></asp:requiredfieldvalidator><br />
<label><span class="required">*</span> Planned Number of Students: </label><asp:TextBox ID="txtSchoolStudentNumber" runat="server" size="3"  MaxLength="3"  title="Planned Number of Students" />
<asp:RegularExpressionValidator ID="reSchoolStudentNumber" runat="server" CssClass="required" ControlToValidate="txtSchoolStudentNumber" ErrorMessage="Numbers only" SetFocusOnError="True" ValidationExpression="((^[0-9]+$))"></asp:RegularExpressionValidator>
<asp:requiredfieldvalidator id="rfSchoolStudentNumber" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtSchoolStudentNumber" SetFocusOnError="True" ></asp:requiredfieldvalidator><br />
<label><span class="required">&nbsp;</span> Number of Accompanying Adults: </label><asp:TextBox ID="txtAdultsNumber" runat="server" size="3"  MaxLength="3" title="Number of Accompanying Adults" />&nbsp;
<asp:RegularExpressionValidator ID="reAdultsNumber" runat="server" CssClass="required" ControlToValidate="txtAdultsNumber" ErrorMessage="Numbers only" SetFocusOnError="True" ValidationExpression="((^[0-9]+$))"></asp:RegularExpressionValidator><br /> <br />
<b><span class="required">*</span> Please describe the assignment requiring research instruction.</b>&nbsp;<asp:requiredfieldvalidator id="rfSchoolAssignment" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtSchoolAssignment" SetFocusOnError="True" ></asp:requiredfieldvalidator><br /> <asp:TextBox ID="txtSchoolAssignment" runat="server"  TextMode="MultiLine" Height="75" title="Assignment Description" /><br />
</fieldset><br />
<fieldset>
<legend>Visit Date and Time Preference</legend>
<label><span class="required">*</span> 1st Choice Date (mm/dd/yyyy): </label>
<asp:TextBox CssClass="date" ID="txtSchoolDueDate" runat="server" size="11" maxlength="11" title="First Choice Date" />&nbsp;
<asp:requiredfieldvalidator id="rfSchoolDate1" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtSchoolDueDate" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp; 
<asp:RegularExpressionValidator ID="reSchoolDueDate" runat="server" CssClass="required" ControlToValidate="txtSchoolDueDate" ErrorMessage="Not a valid date (mm/dd/yyyy)" SetFocusOnError="True" ValidationExpression="((^(10|12|0?[13578])([/])(3[01]|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(11|0?[469])([/])(30|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(2[0-8]|1[0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(29)([/])([2468][048]00)$)|(^(0?2)([/])(29)([/])([3579][26]00)$)|(^(0?2)([/])(29)([/])([1][89][0][48])$)|(^(0?2)([/])(29)([/])([2-9][0-9][0][48])$)|(^(0?2)([/])(29)([/])([1][89][2468][048])$)|(^(0?2)([/])(29)([/])([2-9][0-9][2468][048])$)|(^(0?2)([/])(29)([/])([1][89][13579][26])$)|(^(0?2)([/])(29)([/])([2-9][0-9][13579][26])$))"></asp:RegularExpressionValidator> <br />
<label><span class="required">&nbsp;</span> 2nd Choice Date (mm/dd/yyyy): </label>
        <asp:TextBox CssClass="date" ID="txtSchoolDueDate2" runat="server" size="11" maxlength="11" title="Second Choice Date" />&nbsp;
        <asp:RegularExpressionValidator ID="reSchoolDueDate2" runat="server" CssClass="required" ControlToValidate="txtSchoolDueDate2" ErrorMessage="Not a valid date (mm/dd/yyyy)" SetFocusOnError="True" ValidationExpression="((^(10|12|0?[13578])([/])(3[01]|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(11|0?[469])([/])(30|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(2[0-8]|1[0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(29)([/])([2468][048]00)$)|(^(0?2)([/])(29)([/])([3579][26]00)$)|(^(0?2)([/])(29)([/])([1][89][0][48])$)|(^(0?2)([/])(29)([/])([2-9][0-9][0][48])$)|(^(0?2)([/])(29)([/])([1][89][2468][048])$)|(^(0?2)([/])(29)([/])([2-9][0-9][2468][048])$)|(^(0?2)([/])(29)([/])([1][89][13579][26])$)|(^(0?2)([/])(29)([/])([2-9][0-9][13579][26])$))"></asp:RegularExpressionValidator> <br /><br />   
<%--<label>Additional or Alternative Date if needed (mm/dd/yyyy): </label>
        <asp:TextBox CssClass="date" ID="txtSchoolDueDate3" runat="server" size="11" maxlength="11"  />&nbsp;
        <asp:RegularExpressionValidator ID="reSchoolDueDate3" runat="server" CssClass="required" ControlToValidate="txtSchoolDueDate3" ErrorMessage="Not a valid date (mm/dd/yyyy)" SetFocusOnError="True" ValidationExpression="((^(10|12|0?[13578])([/])(3[01]|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(11|0?[469])([/])(30|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(2[0-8]|1[0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(29)([/])([2468][048]00)$)|(^(0?2)([/])(29)([/])([3579][26]00)$)|(^(0?2)([/])(29)([/])([1][89][0][48])$)|(^(0?2)([/])(29)([/])([2-9][0-9][0][48])$)|(^(0?2)([/])(29)([/])([1][89][2468][048])$)|(^(0?2)([/])(29)([/])([2-9][0-9][2468][048])$)|(^(0?2)([/])(29)([/])([1][89][13579][26])$)|(^(0?2)([/])(29)([/])([2-9][0-9][13579][26])$))"></asp:RegularExpressionValidator> <br />--%>
<label><span class="required">*</span> Arrival Time: </label> <asp:TextBox CssClass="time" ID="txtArrivalTime" runat="server" size="11" maxlength="11" title="Arrival Time" /> &nbsp; <asp:requiredfieldvalidator id="rfArrivalTime" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtArrivalTime" SetFocusOnError="True" ></asp:requiredfieldvalidator><br />
<label><span class="required">*</span> Departure Time: </label> <asp:TextBox CssClass="time" ID="txtDepartureTime" runat="server" size="11" maxlength="11" title="Departure Time" /> &nbsp; <asp:requiredfieldvalidator id="rfDepartureTime" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtDepartureTime" SetFocusOnError="True" ></asp:requiredfieldvalidator><br />
</fieldset><br />


<fieldset>
<legend>Instruction Needs</legend>
Which resources (databases, subject specific resources, collections, etc.) would you like your students to be introduced to at Milne Library?&nbsp;<br />
    <asp:TextBox ID="txtInstructionNeeds" runat="server" Height="75" TextMode="MultiLine"  title="Instruction Needs" /><br /><br />

</fieldset>


<fieldset>
<legend>Additional Information</legend>
    Please provide any additional information you feel necessary here. <br />
<asp:TextBox ID="txtPreviousInstruction" runat="server" Height="75"  TextMode="MultiLine" title="Additional Information" /> <br /> <br />
<asp:Button ID="HSbtnSubmit" runat="server" class="" OnClick="HSbtnSubmit_Click" Text="Submit" />&nbsp;
<asp:Button Text="Clear Form" ID="HSCancelButton" runat="server" CausesValidation="False" CommandName="Reset" OnClick="CancelButton_Click" />

</fieldset><br />

<asp:Label ID="HSlblErrorMessage" runat="server" />
</asp:Panel> <!--End of HSInstruction Panel-->
</div>	
</div><!--ALL PANELS FLOAT LEFT -->
</asp:Content>