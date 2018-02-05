<%@ Page Title="" Language="C#" MasterPageFile="~/Requests/RequestsMasterPage.master" AutoEventWireup="true" CodeFile="Consultation.aspx.cs" Inherits="Requests_Consultation" validateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src='https://www.google.com/recaptcha/api.js'></script>
<link href="https://eres.geneseo.edu/milne-styles-js/js/jquery-ui-1.10.3.custom-milne.min.css" rel="stylesheet" />
<link href="https://intranetlib.geneseo.edu/Dataportal/Scripts/jquery-ui-milne.css" rel="stylesheet" />
<script src="https://intranetlib.geneseo.edu/Dataportal/Scripts/jquery-ui.js"></script> 
<script type="text/javascript" src="https://intranetlib.geneseo.edu/Dataportal/Scripts/jquery.ui.timepicker.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#<%= txtDueDate.ClientID %>').attr('readonly', 'readonly').datepicker({
            });
           // $('#< %= txtTechnologyDueDate.ClientID %>').attr('readonly', 'readonly').datepicker({
           // });
        });
    </script>
<div id="rightSideContent">
<div class="breadcrumb" style="margin:20px 0px 0px 0px;"><a href="https://www.geneseo.edu/">SUNY Geneseo</a> &raquo; <a href="https://www.geneseo.edu/library">Milne Library</a> &raquo; <a href="https://www.geneseo.edu/library/ask-us">Ask Us</a> &raquo; <a href="http://intranetlib.geneseo.edu/DataPortal/Requests/Consultation.aspx" style="color:#b85533 !important;">Consultations</a></div>
<h1>Consultations</h1>
<ul class="subheading">
    <li>Plan and request your&nbsp;<b><asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" OnClick="ResearchConsultInfoPanelLink_Click">Research Consultations&nbsp;<img alt="Click for more information on Research Consultations" src="img/question-mark-icon-16.png" /></asp:LinkButton>&nbsp;&nbsp;</b>2 or 3 days before you would like to meet with us.</li><br />
    <li>Provide three or more times/dates that work with your schedule. If your project is due before this, go directly to Milne Library's Research Help Desk.</li><br />
    <li>If you need help with Multimedia Presentations, Audio/Video equipment, or Software (ie. PowerPoint, Excel, Adobe Products, Camtasia): 
        <br />
        contact the <a href="https://www.geneseo.edu/library/steve-dresbach">Milne ITS Technology Instructor</a>.</li>
</ul><br />
<asp:Panel ID="ResearchConsultationInfoPanel" runat="server" Visible="False" >  
<fieldset>
<legend>Research Consultation</legend>           
<p>A research consultation is a one-on-one meeting with a reference librarian in which the focus is your research project.</p>
<p>A research consultation can help with:</p>
    <ul><li>Getting started on a research project (e.g., identifying a topic, discovering basic research tools)</li>
        <li>Evaluating the relevance and usefulness of chosen materials</li>
        <li>Locating materials in and outside of the library Using library services and collections (e.g., IDS, TERC, and Special Collections).</li>
    </ul><br />
<p style="text-align:right; margin-right:50px;"><b><asp:LinkButton ID="CloseResearchPanel" runat="server" CausesValidation="False" OnClick="ResearchConsultClosePanel_Click"  CssClass="close-window-reset">Close X</asp:LinkButton></b></p><br />
</fieldset> 
</asp:Panel> 
<%--<asp:Panel ID="TechnologyConsultationInfoPanel" runat="server" Visible="False" >
<fieldset>
<legend>Software & Technology Consultation</legend>           
<p>Get personalized assistance on assigned technology projects (e.g., brochure design, multimedia presentation, e-portfolios, resume formatting, spreadsheets & charting).</p>
<p>Schedule a one-on-one or group meeting with a technology specialist to help guide you through software package basics, as well as adding special touches for a more professional product.</p>
<p style="text-align:right; margin-right:50px;"><b><asp:LinkButton ID="CloseTechPanel" runat="server" CausesValidation="False" OnClick="TechnologyConsultClosePanel_Click" CssClass="close-window-reset">Close X</asp:LinkButton></b></p>
</fieldset> 
</asp:Panel>  --%>
<%--<asp:Panel ID="TypePanel" runat="server" Visible="True" ><br />
<fieldset>
<legend><span class="required">* </span>Please select the Consultation type:</legend>
<div class="radiobutton">
<asp:RadioButtonList ID="rblType" runat="server" RepeatDirection="Horizontal" CssClass="radio" AutoPostBack="True" OnSelectedIndexChanged="rblType_SelectedIndexChanged" CellSpacing="5" Width="358px" title="Select Research Consultation or Technology Consultation">
<asp:ListItem Text="Research" Value="Research-Reference" />
<asp:ListItem Text="Software & Technology" Value="Technology" />
</asp:RadioButtonList>    
</div>
<asp:requiredfieldvalidator id="rfType" runat="server" errormessage="Required" controltovalidate="rblType" SetFocusOnError="True" ForeColor="Red"></asp:requiredfieldvalidator>                
<p style="text-align:right; margin-right:50px;"><b><asp:LinkButton ID="ResetType" runat="server" CausesValidation="False" OnClick="btnReset_Click" CssClass="close-window-reset">Reset</asp:LinkButton></b></p>
<p class="required">* Indicates required field.</p>
</fieldset> 
</asp:Panel>--%>
<asp:Panel ID="ResearchConsultationPanel" runat="server" Visible="True" >
<%--<h3 style="font-size: 2.2em;">Research Consultation</h3> --%>
<fieldset>
<legend>Personal Information</legend>
<label><span class="required">*</span> First Name: </label> <asp:TextBox runat="server" size="15" maxlength="20" ID="txtFirstName" title="First Name" />&nbsp;<asp:requiredfieldvalidator id="rfFirstName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtFirstName" SetFocusOnError="True"></asp:requiredfieldvalidator>  <br />
<label><span class="required">*</span> Last Name: </label><asp:TextBox runat="server" size="15" maxlength="20" ID="txtLastName" title="Last Name" />&nbsp;<asp:requiredfieldvalidator id="rfLastName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtLastName" SetFocusOnError="True"></asp:requiredfieldvalidator>  <br />
<label><span class="required">*</span> Email Address: </label><asp:TextBox runat="server" size="12" maxlength="25" ID="txtEmail" title="Email" />&nbsp;<asp:RegularExpressionValidator ID="reEmail" ErrorMessage="*Must be a Geneseo edu address" CssClass="required" ControlToValidate="txtEmail" runat="server" ValidationExpression="[\w0-9\.-]*@geneseo\.edu" />
<asp:requiredfieldvalidator id="rfEmail" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtEmail" SetFocusOnError="True"></asp:requiredfieldvalidator>
<%--<asp:RegularExpressionValidator ID="reEmail" ErrorMessage="*Invalid Email Address" CssClass="required" ControlToValidate="txtEmail" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />--%>
<label>&nbsp;<strong>If you are part of a group of students seeking a Group Consultation Session: </strong><br />Please list additional email addresses of all students in your group, separated by commas:<br /> 

    </label>    <asp:TextBox ID="txtGroupEmails" runat="server" Height="75" TextMode="MultiLine" title="Additional Email Addresses, separated by commas" />
    <br />
    <br />    
<!-- label><span class="required">&nbsp;</span>Phone Number: </label><asp:TextBox ID="txtPhone" runat="server" size="25" maxlength="25" title="Phone Number" /> <br / --> 
<%--<label><span class="required">*</span> Status/Class Standing: </label>
<asp:DropDownList ID="ddlStatus" runat="server" AppendDataBoundItems="True" title="Select Class Standing" />&nbsp; <asp:requiredfieldvalidator id="rfStatus" runat="server" errormessage="Required" CssClass="required" controltovalidate="ddlStatus" SetFocusOnError="True" ></asp:requiredfieldvalidator><br />--%>
<label><span class="required">*</span> Major: </label>
<asp:DropDownList ID="ddlMajor" runat="server" AppendDataBoundItems="True" title="Select Major" /> &nbsp;<asp:requiredfieldvalidator id="rfMajor" runat="server" errormessage="Required" CssClass="required" controltovalidate="ddlMajor" SetFocusOnError="True" ></asp:requiredfieldvalidator> <br />

</fieldset><br />
<fieldset>
<legend>Assignment Information</legend>
<label><span class="required">*</span> Assignment Due Date (mm/dd/yyyy): </label>
<asp:TextBox CssClass="date" ID="txtDueDate" runat="server" size="11" maxlength="25" style="width:40% !important;" title="Select Assignment Due Date" />&nbsp;<asp:requiredfieldvalidator id="rfDueDate" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtDueDate" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp; 
<asp:RegularExpressionValidator ID="reDate" runat="server" ControlToValidate="txtDueDate" ErrorMessage="* Not a valid date (mm/dd/yyyy)" SetFocusOnError="True" ValidationExpression="((^(10|12|0?[13578])([/])(3[01]|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(11|0?[469])([/])(30|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(2[0-8]|1[0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(29)([/])([2468][048]00)$)|(^(0?2)([/])(29)([/])([3579][26]00)$)|(^(0?2)([/])(29)([/])([1][89][0][48])$)|(^(0?2)([/])(29)([/])([2-9][0-9][0][48])$)|(^(0?2)([/])(29)([/])([1][89][2468][048])$)|(^(0?2)([/])(29)([/])([2-9][0-9][2468][048])$)|(^(0?2)([/])(29)([/])([1][89][13579][26])$)|(^(0?2)([/])(29)([/])([2-9][0-9][13579][26])$))"></asp:RegularExpressionValidator> <br />
<%--<label><span class="required">*</span> Is this for a College Course? </label>--%>
<%--<div class="radiobutton">
<asp:RadioButtonList ID="rblResearchCollege" runat="server" RepeatDirection="Horizontal" cssClass="radiobutton" AutoPostBack="True" OnSelectedIndexChanged="rblResearchCollege_SelectedIndexChanged" title="Choose if this is for a college course">
<asp:ListItem Text="Yes" Value="Yes" />
<asp:ListItem Text="No" Value="No" /> 
</asp:RadioButtonList>
</div> &nbsp;<asp:requiredfieldvalidator id="rfResearchCollege" runat="server" errormessage="Required" CssClass="required" controltovalidate="rblResearchCollege" SetFocusOnError="True" > </asp:requiredfieldvalidator> <br />--%>
<%-- College Yes Visibility --%>
<%--<asp:Panel ID="collegeResearchYesPanel" runat="server" Visible="False" >--%>
<label>Course or Workshop Title: </label><asp:TextBox ID="txtCourseTitle" runat="server" size="15" maxlength="60" title="Enter Course Title" /><br />
<label>Course Number (ABCD 123 Format): </label><asp:TextBox ID="txtCourseNumber" runat="server" size="8" maxlength="8" title="Enter Course number" />&nbsp;<asp:RegularExpressionValidator ID="reCourseNumber" SetFocusOnError="true" CssClass="required" ValidationExpression="^[A-Z]{4} [0-9]{3}$" ErrorMessage="Course Number should be in 'ABCD 123' format, Uppercase letters" ControlToValidate="txtCourseNumber" runat="server" /><br />
<label>Department:</label>
<asp:DropDownList runat="server" ID="ddlDepartmentActive" title="Select Department" /><br />
<label>Course Professor First Name: </label><asp:TextBox ID="txtProfFirstName" runat="server" size="15" maxlength="20" title="Professor First Name" /><br />
<label>Course Professor Last Name: </label><asp:TextBox ID="txtProfLastName" runat="server" size="15" maxlength="20"  title="Professor Last Name" /><br />

    <label>
    <span class="required">*</span> Topic of your assignment:
    </label>
    <asp:TextBox ID="txtDescription" runat="server"  size="15" maxlength="80"  title="Topic of your paper" />&nbsp;<asp:RequiredFieldValidator ID="rfDescription" runat="server" controltovalidate="txtDescription" CssClass="required" errormessage="Required" SetFocusOnError="True"></asp:RequiredFieldValidator>

    <br />
    <label>
    Number of pages for your assignment: </label><asp:TextBox ID="txtNumberPages" runat="server" maxlength="3" size="15" title="Number of pages foryour assignment" Width="50px" />&nbsp;<asp:RegularExpressionValidator ID="reNumberPages" SetFocusOnError="true" CssClass="required" ValidationExpression="^[0-9]+$" ErrorMessage="Numbers Only" ControlToValidate="txtNumberPages" runat="server" />
        <br />

    <label>
    Number of sources you need:    </label><asp:TextBox ID="txtNumberSources" runat="server" maxlength="3" size="15" title="Number of Sources you need" Width="50px" />&nbsp;<asp:RegularExpressionValidator ID="reNumberSources" SetFocusOnError="true" CssClass="required" ValidationExpression="^[0-9]+$" ErrorMessage="Numbers Only" ControlToValidate="txtNumberSources" runat="server" />
<br />
     <label><strong>Do you need:</strong></label><br /><br />
<%--    <input name="cboxDoYouNeed" id="cboxDoYouNeed1" type="checkbox" value="Primary Sources" />
    <input name="cboxDoYouNeed" id="cboxDoYouNeed2" type="checkbox" value="Journal Articles" />
    <input name="cboxDoYouNeed" id="cboxDoYouNeed3" type="checkbox" value="News Articles" />
    <input name="cboxDoYouNeed" id="cboxDoYouNeed4" type="checkbox" value="Citation Formatting" />--%>
<asp:CheckBoxList ID="CheckboxListDoYouNeed" Title="What sources do you need? Please check all that apply." runat="server" OnSelectedIndexChanged="CheckboxList1_SelectedIndexChanged" RepeatDirection="Horizontal" CellPadding="0" CellSpacing="0" Width="80%" TextAlign="Right">
        <asp:ListItem>Books</asp:ListItem>
        <asp:ListItem>Primary Sources</asp:ListItem>
        <asp:ListItem>Journal Articles</asp:ListItem>
        <asp:ListItem>News Articles</asp:ListItem>
        <asp:ListItem>Citation Formatting</asp:ListItem>
    </asp:CheckBoxList>
   
    <br />
    <span class="required">*</span> <b>Please suggest 2 or 3 days and times for us to schedule a meeting with you. </b>
    <br />
    (for example: Monday, 2/21/14 at 10:30 pm or Friday, 2/25/14 after 10:00 am).&nbsp;&nbsp;<asp:RequiredFieldValidator ID="rfDates" runat="server" controltovalidate="txtDates" CssClass="required" errormessage="Required" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <br />
    <asp:TextBox ID="txtDates" runat="server" Height="75" TextMode="MultiLine" title="List 2 or 3 days and times to schedule a meeting" />
    <br />
    <br />
    <div class="g-recaptcha" data-sitekey="6Lc4dDUUAAAAAEu7JWvuQAdsCz3k2D_73M4w68kf"></div>
    <br />
    <asp:Button ID="btnSubmit" runat="server" class="" OnClick="btnResearchConsultSubmit_Click" Text="Submit" />
&nbsp;<asp:Button Text="Clear Form" ID="CancelButton" runat="server" CausesValidation="False" CommandName="Reset" OnClick="ResearchConsultCancelButton_Click" />
</fieldset>
<asp:Label ID="lblErrorMessage" runat="server" />
</asp:Panel>
<!--End Research Consultation Panel -->  
<!--Begin Technology Consultation Panel -->
<%--<asp:Panel ID="TechnologyConsultationPanel" runat="server" Visible="False" >
<h3 style="font-size: 2.2em;">Software & Technology Consultation</h3> 
<fieldset>
<legend>Personal Information</legend>
<label><span class="required">*</span> First Name: </label> <asp:TextBox runat="server" size="25" maxlength="25" ID="txtTechnologyFirstName" title="First Name" />&nbsp;<asp:requiredfieldvalidator id="rfTechnologyFirstName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtTechnologyFirstName" SetFocusOnError="True"></asp:requiredfieldvalidator>  <br />
<label><span class="required">*</span> Last Name: </label><asp:TextBox runat="server" size="25" maxlength="25" ID="txtTechnologyLastName" title="Last Name" />&nbsp;<asp:requiredfieldvalidator id="rfTechnologyLastName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtTechnologyLastName" SetFocusOnError="True"></asp:requiredfieldvalidator>  <br />
<label><span class="required">*</span> Email Address: </label><asp:TextBox runat="server" size="25" maxlength="25" ID="txtTechnologyEmail" title="Email" />&nbsp;<asp:requiredfieldvalidator id="rfTechnologyEmail" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtEmail" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; 
<asp:RegularExpressionValidator ID="reTechnologyEmail" ErrorMessage="*Invalid Email Address" CssClass="required" ControlToValidate="txtTechnologyEmail" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" /><br />
<%--<label><span class="required">&nbsp;</span>Phone Number: </label><asp:TextBox ID="txtTechnologyPhone" runat="server" size="25" maxlength="25" title="Phone Number" /> <br /> --%>
<%--<label><span class="required">*</span> Status/Class Standing: </label>--%>
<%--<asp:DropDownList ID="ddlTechnologyStatus" runat="server" AppendDataBoundItems="True" title="Select Status or Class standing" />&nbsp; <asp:requiredfieldvalidator id="rfTechnologyStatus" runat="server" errormessage="Required" CssClass="required" controltovalidate="ddlTechnologyStatus" SetFocusOnError="True" ></asp:requiredfieldvalidator><br />--%>
<%--<label><span class="required">*</span> Major: </label>--%>
<%--<asp:DropDownList ID="ddlTechnologyMajor" runat="server" AppendDataBoundItems="True" title="Select Major" />&nbsp;<asp:requiredfieldvalidator id="rfTechnologyMajor" runat="server" errormessage="Required" CssClass="required" controltovalidate="ddlTechnologyMajor" SetFocusOnError="True" ></asp:requiredfieldvalidator> <br />--%>
<!-- label>Where did you hear about the consultation service? </label -->

<%--</fieldset><br />
<fieldset>
<legend>Assignment Information</legend>
<label><span class="required">*</span> Assignment Due Date (mm/dd/yyyy): </label>
<asp:TextBox CssClass="date" ID="txtTechnologyDueDate" runat="server" size="11" maxlength="11" style="width:40% !important;" title="Choose Assignment Due Date"/>&nbsp;<asp:requiredfieldvalidator id="rfTechnologyDueDate" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtTechnologyDueDate" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp; 
<asp:RegularExpressionValidator ID="reTechnologyDate" runat="server" ControlToValidate="txtTechnologyDueDate" ErrorMessage="* Not a valid date (mm/dd/yyyy)" SetFocusOnError="True" ValidationExpression="((^(10|12|0?[13578])([/])(3[01]|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(11|0?[469])([/])(30|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(2[0-8]|1[0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(29)([/])([2468][048]00)$)|(^(0?2)([/])(29)([/])([3579][26]00)$)|(^(0?2)([/])(29)([/])([1][89][0][48])$)|(^(0?2)([/])(29)([/])([2-9][0-9][0][48])$)|(^(0?2)([/])(29)([/])([1][89][2468][048])$)|(^(0?2)([/])(29)([/])([2-9][0-9][2468][048])$)|(^(0?2)([/])(29)([/])([1][89][13579][26])$)|(^(0?2)([/])(29)([/])([2-9][0-9][13579][26])$))"></asp:RegularExpressionValidator> <br /><br />--%>
<%--<label><span class="required">*</span> Is this for a College Course? </label>
<asp:RadioButtonList ID="rblTechnologyCollege" runat="server" RepeatDirection="Horizontal" cssClass="radiobutton" AutoPostBack="True" OnSelectedIndexChanged="rblTechnologyCollege_SelectedIndexChanged" title="Choose if this is for a College course">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" /> 
</asp:RadioButtonList>
&nbsp;<asp:requiredfieldvalidator id="rfTechnologyCollege" runat="server" errormessage="Required" CssClass="required" controltovalidate="rblTechnologyCollege" SetFocusOnError="True" > </asp:requiredfieldvalidator> <br />--%>
<%-- College Yes Visibility --%>
<%--<asp:Panel ID="collegeTechnologyYesPanel" runat="server" Visible="False" >
<label>Course or Workshop Title: </label><asp:TextBox ID="txtTechnologyCourseTitle" runat="server" size="45" maxlength="75" title="Course Title of the class" /><br />
<label>Course Number (ABCD 123 Format): </label><asp:TextBox ID="txtTechnologyCourseNumber" runat="server" size="8" maxlength="8" title="Course Number of the class" />&nbsp;<asp:RegularExpressionValidator ID="reTechnologyCourseNumber" SetFocusOnError="true" CssClass="required" ValidationExpression="^[A-Z]{4} [0-9]{3}$" ErrorMessage="Course Number should be in 'ABCD 123' format, uppercase letters" ControlToValidate="txtTechnologyCourseNumber" runat="server" /><br />--%>
<%--<label>Department:</label>--%>
<%--<asp:DropDownList runat="server" ID="ddlTechnologyDepartmentActive" /><br />--%>
<%--<label>Course Professor First Name: </label><asp:TextBox ID="txtTechnologyProfFirstName" runat="server" size="25" maxlength="25" title="Class professor First Name" /><br />
<label>Course Professor Last Name: </label><asp:TextBox ID="txtTechnologyProfLastName" runat="server" size="25" maxlength="25" title="Class professor Last Name" /><br />--%>
<%--</asp:Panel>--%>
<%-- College No Visibility --%>
<%--<asp:Panel ID="collegeTechnologyNoPanel" runat="server" Visible="False" >
<label>Enter Associated Group or Program: </label><asp:TextBox ID="txtTechnologyAssociatedGroup" runat="server" size="45" maxlength="75" title="Enter  Group or Program Associated with the workshop" /><br />
</asp:Panel><br /><br />
<span class="required">*</span> Describe your project in as much detail as possible. <strong><br />
Include any software you may need assistance with.</strong> &nbsp;&nbsp;<asp:RequiredFieldValidator ID="rfTechnologyDescription" runat="server" controltovalidate="txtTechnologyDescription" CssClass="required" errormessage="Required" SetFocusOnError="True"></asp:RequiredFieldValidator><br />
<asp:TextBox ID="txtTechnologyDescription" runat="server" Height="75" TextMode="MultiLine" title="Describe your project or paper in detail, including any software you need assistance with" /><br /><br />
<b><span class="required">*</span> Please suggest 2 or 3 days and times for us to schedule a meeting with you. </b><br />(for example: Monday, 2/21/14 at 10:30 pm or Friday, 2/25/14 after 10:00 am).&nbsp;&nbsp;<asp:RequiredFieldValidator ID="rfTechnologyDates" runat="server" controltovalidate="txtTechnologyDates" CssClass="required" errormessage="Required" SetFocusOnError="True"></asp:RequiredFieldValidator><br />
<asp:TextBox ID="txtTechnologyDates" runat="server" Height="75" TextMode="MultiLine"  title="List 2 or 3 yates and times you are available for a Technology Consultation" /><br /><br />
<asp:Button ID="btnTechnologySubmit" runat="server" class="" OnClick="btnTechnologyConsultbtnSubmit_Click" Text="Submit" />&nbsp;
<asp:Button Text="Clear Form" ID="TechnologyConsultCancelButton" runat="server" CausesValidation="False" CommandName="Reset" OnClick="TechnologyConsultCancelButton_Click" />
</fieldset>
<asp:Label ID="lblTechnologyConsultErrorMessage" runat="server" />
</asp:Panel>--%> <!--End of Technology Consultation Panel-->
</div>
</asp:Content>