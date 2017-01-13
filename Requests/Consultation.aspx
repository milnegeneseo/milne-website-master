<%@ Page Title="" Language="C#" MasterPageFile="~/Requests/RequestsMasterPage.master" AutoEventWireup="true" CodeFile="Consultation.aspx.cs" Inherits="Requests_Consultation" validateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<link href="https://eres.geneseo.edu/milne-styles-js/jquery-ui-datepicker-milne.min.css" rel="stylesheet" />
<link href="https://eres.geneseo.edu/milne-styles-js/js/jquery-ui-1.10.3.custom.min.css" rel="stylesheet" />
<script src="https://eres.geneseo.edu/milne-styles-js/js/jquery-ui-datepicker-milne.min.js"></script> 
<script type="text/javascript" src="https://eres.geneseo.edu/milne-styles-js/js/jquery.ui.timepicker.min.js"></script>
<script type="text/javascript" src="https://eres.geneseo.edu/milne-styles-js/js/jquery-ui-1.10.3.custom.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#<%= txtDueDate.ClientID %>').attr('readonly', 'readonly').datepicker({
            });
            $('#<%= txtTechnologyDueDate.ClientID %>').attr('readonly', 'readonly').datepicker({
            });
        });
    </script>
<div id="rightSideContent">
<div style="margin:20px 0px 0px 0px;"><a href="https://www.geneseo.edu/">SUNY Geneseo</a> &raquo; <a href="https://www.geneseo.edu/library">Milne Library</a> &raquo; <a href="https://www.geneseo.edu/library/research-help">Research Help</a> &raquo; <a href="http://intranetlib.geneseo.edu/DataPortal/Requests/Consultation.aspx" style="color:#b85533 !important;">Research &amp; Technology Consultations</a></div>
<h1>Research & Technology Consultations</h1>
<p>Appointments are arranged for most weekday hours when the appropriate specialist is on duty. Please:</p>
<ul>
    <li>Plan and request your&nbsp;<b><asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" OnClick="ResearchConsultInfoPanelLink_Click">Research Consultations&nbsp;<img src="img/question-mark-icon-16.png" /></asp:LinkButton>&nbsp;</b>and &nbsp;<b><asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" OnClick="TechnologyConsultInfoPanelLink_Click">Technology Consultations&nbsp;<img src="img/question-mark-icon-16.png" /></asp:LinkButton>&nbsp;</b>2 or 3 days before you would like to meet with us.</li>
    <br />
    <li>Provide three or more times/dates that work with your schedule. If your project is due before this, go directly to Milne Library's Service Desk or the Research Help Desk in the CAE for immediate help.</li> 
</ul><br />
<p>Need help with an audio or video project? <a href="http://www.geneseo.edu/cit/dml/dml-consultation-form"><strong>Request a DM consultation.</strong></a></p>
<asp:Panel ID="ResearchConsultationInfoPanel" runat="server" Visible="False" >  
<fieldset>
<legend>Research Consultation</legend>           
<p>A research consultation is a one-on-one meeting with a reference librarian in which the focus is your research project.</p>
<p>A research consultation can help with:</p>
    <ul><li>Getting started on a research project (e.g., identifying a topic, discovering basic research tools)</li>
        <li>Evaluating the relevance and usefulness of chosen materials</li>
        <li>Locating materials in and outside of the library Using library services and collections (e.g., IDS, TERC, and government documents).</li>
    </ul><br />
<p style="text-align:right; margin-right:50px;"><b><asp:LinkButton ID="CloseResearchPanel" runat="server" CausesValidation="False" OnClick="ResearchConsultClosePanel_Click"  CssClass="close-window-reset">Close X</asp:LinkButton></b></p><br />
</fieldset> 
</asp:Panel> 
<asp:Panel ID="TechnologyConsultationInfoPanel" runat="server" Visible="False" >
<fieldset>
<legend>Technology Consultation</legend>           
<p>Get personalized assistance on assigned technology projects (e.g., brochure design, multimedia presentation, e-portfolios, resume formatting, spreadsheets & charting).</p>
<p>Schedule a one-on-one or group meeting with a technology specialist to help guide you through software package basics, as well as adding special touches for a more professional product.</p>
<p>Need help with an audio or video project? <a href="http://www.geneseo.edu/cit/dml/dml-consultation-form"><strong>Request a DM consultation.</strong></a></p>
<p style="text-align:right; margin-right:50px;"><b><asp:LinkButton ID="CloseTechPanel" runat="server" CausesValidation="False" OnClick="TechnologyConsultClosePanel_Click" CssClass="close-window-reset">Close X</asp:LinkButton></b></p>
</fieldset> 
</asp:Panel>  
<asp:Panel ID="TypePanel" runat="server" Visible="True" ><br />
<fieldset>
<legend><span class="required">* </span>Please select the Consultation type:</legend>
<div class="radiobutton">
<asp:RadioButtonList ID="rblType" runat="server" RepeatDirection="Horizontal" CssClass="radio" AutoPostBack="True" OnSelectedIndexChanged="rblType_SelectedIndexChanged" CellSpacing="5" Width="358px" >
<asp:ListItem Text="Research" Value="Research" />
<asp:ListItem Text="Technology" Value="Technology" />
</asp:RadioButtonList>    
</div>
<asp:requiredfieldvalidator id="rfType" runat="server" errormessage="Required" controltovalidate="rblType" SetFocusOnError="True" ForeColor="Red"></asp:requiredfieldvalidator>                
<p style="text-align:right; margin-right:50px;"><b><asp:LinkButton ID="ResetType" runat="server" CausesValidation="False" OnClick="btnReset_Click" CssClass="close-window-reset">Reset</asp:LinkButton></b></p>
<p class="required">* Indicates required field.</p>
</fieldset> 
</asp:Panel>
<asp:Panel ID="ResearchConsultationPanel" runat="server" Visible="False" >
<h3>Research Consultation</h3> 
<fieldset>
<legend>Personal Information</legend>
<label><span class="required">*</span> First Name: </label> <asp:TextBox runat="server" size="25" maxlength="25" ID="txtFirstName" />&nbsp;<asp:requiredfieldvalidator id="rfFirstName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtFirstName" SetFocusOnError="True"></asp:requiredfieldvalidator>  <br />
<label><span class="required">*</span> Last Name: </label><asp:TextBox runat="server" size="25" maxlength="25" ID="txtLastName" />&nbsp;<asp:requiredfieldvalidator id="rfLastName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtLastName" SetFocusOnError="True"></asp:requiredfieldvalidator>  <br />
<label><span class="required">*</span> Email Address: </label><asp:TextBox runat="server" size="25" maxlength="25" ID="txtEmail"  />&nbsp;<asp:requiredfieldvalidator id="rfEmail" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtEmail" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; 
<asp:RegularExpressionValidator ID="reEmail" ErrorMessage="*Invalid Email Address" CssClass="required" ControlToValidate="txtEmail" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" /><br />
<label><span class="required">&nbsp;</span>Phone Number: </label><asp:TextBox ID="txtPhone" runat="server" size="25" maxlength="25" /> <br /> 
<label><span class="required">*</span> Status/Class Standing: </label>
<asp:DropDownList ID="ddlStatus" runat="server" AppendDataBoundItems="True" />&nbsp; <asp:requiredfieldvalidator id="rfStatus" runat="server" errormessage="Required" CssClass="required" controltovalidate="ddlStatus" SetFocusOnError="True" ></asp:requiredfieldvalidator><br />
<label><span class="required">*</span> Major: </label>
<asp:DropDownList ID="ddlMajor" runat="server" AppendDataBoundItems="True" /> &nbsp;<asp:requiredfieldvalidator id="rfMajor" runat="server" errormessage="Required" CssClass="required" controltovalidate="ddlMajor" SetFocusOnError="True" ></asp:requiredfieldvalidator> <br />
<label>Where did you hear about the consultation service? </label>
<asp:DropDownList ID="ddlReferral" runat="server" >
            <asp:ListItem Text=" --Select One—" Value="None" />
            <asp:ListItem Text="From a librarian in class" Value="From a librarian in class" />
            <asp:ListItem Text="From a library staff member in the library" Value="From a library staff member in the library" />
            <asp:ListItem Text="From a friend" Value="From a friend" />
            <asp:ListItem Text="From a professor" Value="From a professor" />
            <asp:ListItem Text="From the library website" Value="From the library website" />
            <asp:ListItem Text="Other" Value="Other" />
</asp:DropDownList>
</fieldset><br />
<fieldset>
<legend>Assignment Information</legend>
<label><span class="required">*</span> Assignment Due Date (mm/dd/yyyy): </label>
<asp:TextBox CssClass="date" ID="txtDueDate" runat="server" size="11" maxlength="11" />&nbsp;<asp:requiredfieldvalidator id="rfDueDate" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtDueDate" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp; 
<asp:RegularExpressionValidator ID="reDate" runat="server" ControlToValidate="txtDueDate" ErrorMessage="* Not a valid date (mm/dd/yyyy)" SetFocusOnError="True" ValidationExpression="((^(10|12|0?[13578])([/])(3[01]|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(11|0?[469])([/])(30|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(2[0-8]|1[0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(29)([/])([2468][048]00)$)|(^(0?2)([/])(29)([/])([3579][26]00)$)|(^(0?2)([/])(29)([/])([1][89][0][48])$)|(^(0?2)([/])(29)([/])([2-9][0-9][0][48])$)|(^(0?2)([/])(29)([/])([1][89][2468][048])$)|(^(0?2)([/])(29)([/])([2-9][0-9][2468][048])$)|(^(0?2)([/])(29)([/])([1][89][13579][26])$)|(^(0?2)([/])(29)([/])([2-9][0-9][13579][26])$))"></asp:RegularExpressionValidator> <br /><br />
<label><span class="required">*</span> Is this for a College Course? </label>
<div class="radiobutton">
<asp:RadioButtonList ID="rblResearchCollege" runat="server" RepeatDirection="Horizontal" cssClass="radiobutton" AutoPostBack="True" OnSelectedIndexChanged="rblResearchCollege_SelectedIndexChanged">
<asp:ListItem Text="Yes" Value="Yes" />
<asp:ListItem Text="No" Value="No" /> 
</asp:RadioButtonList>
</div> &nbsp;<asp:requiredfieldvalidator id="rfResearchCollege" runat="server" errormessage="Required" CssClass="required" controltovalidate="rblResearchCollege" SetFocusOnError="True" > </asp:requiredfieldvalidator> <br />
<%-- College Yes Visibility --%>
<asp:Panel ID="collegeResearchYesPanel" runat="server" Visible="False" >
<label>Course Number (ABCD 123 Format): </label><asp:TextBox ID="txtCourseNumber" runat="server" size="8" maxlength="8"  />&nbsp;<asp:RegularExpressionValidator ID="reCourseNumber" SetFocusOnError="true" CssClass="required" ValidationExpression="^[A-Z]{4} [0-9]{3}$" ErrorMessage="Course Number should be in 'ABCD 123' format, Uppercase letters" ControlToValidate="txtCourseNumber" runat="server" /><br />
<label>Course Title: </label><asp:TextBox ID="txtCourseTitle" runat="server" size="45" maxlength="75" /><br />
<label>Department:</label>
<asp:DropDownList runat="server" ID="ddlDepartmentActive" /><br />
<label>Course Professor First Name: </label><asp:TextBox ID="txtProfFirstName" runat="server" size="25" maxlength="25"  /><br />
<label>Course Professor Last Name: </label><asp:TextBox ID="txtProfLastName" runat="server" size="25" maxlength="25"  /><br />
</asp:Panel>
<%-- College No Visibility --%>
<asp:Panel ID="collegeResearchNoPanel" runat="server" Visible="False" >
<label>Enter Associated Group or Program: </label><asp:TextBox ID="txtAssociatedGroup" runat="server" size="45" maxlength="75"  /><br />
</asp:Panel><br />
What resources have you already consulted in your research on this topic? <br /><b>Please be as specific as possible.</b><br />
<asp:TextBox ID="txtResources" runat="server"  TextMode="MultiLine" Height="75" Width="600" /><br /><br />
<span class="required">*</span> <strong>Describe your project/paper in as much detail as possible. </strong><br />
Please include the number of pages required, and type of material you must use <br />(such as scholarly journals, web sites, newspapers, etc.). 
<br />&nbsp;&nbsp;<asp:RequiredFieldValidator ID="rfDescription" runat="server" controltovalidate="txtDescription" CssClass="required" errormessage="Required" SetFocusOnError="True"></asp:RequiredFieldValidator><br />
<asp:TextBox ID="txtDescription" runat="server" Height="75" TextMode="MultiLine" Width="600" /><br /><br />
<b><span class="required">*</span> Please suggest 2 or 3 days and times for us to schedule a meeting with you. </b><br />(for example: Monday, 2/21/14 at 10:30 pm or Friday, 2/25/14 after 10:00 am).&nbsp;&nbsp;<asp:RequiredFieldValidator ID="rfDates" runat="server" controltovalidate="txtDates" CssClass="required" errormessage="Required" SetFocusOnError="True"></asp:RequiredFieldValidator><br />
<asp:TextBox ID="txtDates" runat="server" Height="75" TextMode="MultiLine" Width="600" /><br /><br />
<asp:Button ID="btnSubmit" runat="server" class="" OnClick="btnResearchConsultSubmit_Click" Text="Submit" /> &nbsp;<asp:Button Text="Clear Form" ID="CancelButton" runat="server" CausesValidation="False" CommandName="Reset" OnClick="ResearchConsultCancelButton_Click" />
</fieldset>
<asp:Label ID="lblErrorMessage" runat="server" />
</asp:Panel>
<!--End Research Consultation Panel -->  
<!--Begin Technology Consultation Panel -->
<asp:Panel ID="TechnologyConsultationPanel" runat="server" Visible="False" >
<h3>Technology Consultation</h3> 
<fieldset>
<legend>Personal Information</legend>
<label><span class="required">*</span> First Name: </label> <asp:TextBox runat="server" size="25" maxlength="25" ID="txtTechnologyFirstName" />&nbsp;<asp:requiredfieldvalidator id="rfTechnologyFirstName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtTechnologyFirstName" SetFocusOnError="True"></asp:requiredfieldvalidator>  <br />
<label><span class="required">*</span> Last Name: </label><asp:TextBox runat="server" size="25" maxlength="25" ID="txtTechnologyLastName" />&nbsp;<asp:requiredfieldvalidator id="rfTechnologyLastName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtTechnologyLastName" SetFocusOnError="True"></asp:requiredfieldvalidator>  <br />
<label><span class="required">*</span> Email Address: </label><asp:TextBox runat="server" size="25" maxlength="25" ID="txtTechnologyEmail"  />&nbsp;<asp:requiredfieldvalidator id="rfTechnologyEmail" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtEmail" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; 
<asp:RegularExpressionValidator ID="reTechnologyEmail" ErrorMessage="*Invalid Email Address" CssClass="required" ControlToValidate="txtTechnologyEmail" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" /><br />
<label><span class="required">&nbsp;</span>Phone Number: </label><asp:TextBox ID="txtTechnologyPhone" runat="server" size="25" maxlength="25" /> <br /> 
<label><span class="required">*</span> Status/Class Standing: </label>
<asp:DropDownList ID="ddlTechnologyStatus" runat="server" AppendDataBoundItems="True" />&nbsp; <asp:requiredfieldvalidator id="rfTechnologyStatus" runat="server" errormessage="Required" CssClass="required" controltovalidate="ddlTechnologyStatus" SetFocusOnError="True" ></asp:requiredfieldvalidator><br />
<label><span class="required">*</span> Major: </label>
<asp:DropDownList ID="ddlTechnologyMajor" runat="server" AppendDataBoundItems="True" />          &nbsp;<asp:requiredfieldvalidator id="rfTechnologyMajor" runat="server" errormessage="Required" CssClass="required" controltovalidate="ddlTechnologyMajor" SetFocusOnError="True" ></asp:requiredfieldvalidator> <br />
<label>Where did you hear about the consultation service? </label>
<asp:DropDownList ID="ddlTechnologyReferral" runat="server" >
            <asp:ListItem Text=" --Select One—" Value="None" />
            <asp:ListItem Text="From a librarian in class" Value="From a librarian in class" />
            <asp:ListItem Text="From a library staff member in the library" Value="From a library staff member in the library" />
            <asp:ListItem Text="From a friend" Value="From a friend" />
            <asp:ListItem Text="From a professor" Value="From a professor" />
            <asp:ListItem Text="From the library website" Value="From the library website" />
            <asp:ListItem Text="Other" Value="Other" />
</asp:DropDownList>
</fieldset><br />
<fieldset>
<legend>Assignment Information</legend>
<label><span class="required">*</span> Assignment Due Date (mm/dd/yyyy): </label>
<asp:TextBox CssClass="date" ID="txtTechnologyDueDate" runat="server" size="11" maxlength="11" />&nbsp;<asp:requiredfieldvalidator id="rfTechnologyDueDate" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtTechnologyDueDate" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp; 
<asp:RegularExpressionValidator ID="reTechnologyDate" runat="server" ControlToValidate="txtTechnologyDueDate" ErrorMessage="* Not a valid date (mm/dd/yyyy)" SetFocusOnError="True" ValidationExpression="((^(10|12|0?[13578])([/])(3[01]|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(11|0?[469])([/])(30|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(2[0-8]|1[0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(29)([/])([2468][048]00)$)|(^(0?2)([/])(29)([/])([3579][26]00)$)|(^(0?2)([/])(29)([/])([1][89][0][48])$)|(^(0?2)([/])(29)([/])([2-9][0-9][0][48])$)|(^(0?2)([/])(29)([/])([1][89][2468][048])$)|(^(0?2)([/])(29)([/])([2-9][0-9][2468][048])$)|(^(0?2)([/])(29)([/])([1][89][13579][26])$)|(^(0?2)([/])(29)([/])([2-9][0-9][13579][26])$))"></asp:RegularExpressionValidator> <br /><br />
<label><span class="required">*</span> Is this for a College Course? </label>
<asp:RadioButtonList ID="rblTechnologyCollege" runat="server" RepeatDirection="Horizontal" cssClass="radiobutton" AutoPostBack="True" OnSelectedIndexChanged="rblTechnologyCollege_SelectedIndexChanged">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" /> 
</asp:RadioButtonList>
&nbsp;<asp:requiredfieldvalidator id="rfTechnologyCollege" runat="server" errormessage="Required" CssClass="required" controltovalidate="rblTechnologyCollege" SetFocusOnError="True" > </asp:requiredfieldvalidator> <br />
<%-- College Yes Visibility --%>
<asp:Panel ID="collegeTechnologyYesPanel" runat="server" Visible="False" >
<label>Course Number (ABCD 123 Format): </label><asp:TextBox ID="txtTechnologyCourseNumber" runat="server" size="8" maxlength="8"  />&nbsp;<asp:RegularExpressionValidator ID="reTechnologyCourseNumber" SetFocusOnError="true" CssClass="required" ValidationExpression="^[A-Z]{4} [0-9]{3}$" ErrorMessage="Course Number should be in 'ABCD 123' format, uppercase letters" ControlToValidate="txtTechnologyCourseNumber" runat="server" /><br />
<label>Course Title: </label><asp:TextBox ID="txtTechnologyCourseTitle" runat="server" size="45" maxlength="75" /><br />
<label>Department:</label>
<asp:DropDownList runat="server" ID="ddlTechnologyDepartmentActive" /><br />
<label>Course Professor First Name: </label><asp:TextBox ID="txtTechnologyProfFirstName" runat="server" size="25" maxlength="25"  /><br />
<label>Course Professor Last Name: </label><asp:TextBox ID="txtTechnologyProfLastName" runat="server" size="25" maxlength="25"  /><br />
</asp:Panel>
<%-- College No Visibility --%>
<asp:Panel ID="collegeTechnologyNoPanel" runat="server" Visible="False" >
<label>Enter Associated Group or Program: </label><asp:TextBox ID="txtTechnologyAssociatedGroup" runat="server" size="45" maxlength="75"  /><br />
</asp:Panel><br /><br />
<span class="required">*</span> Describe your project in as much detail as possible. <strong><br />
Include any software you may need assistance with.</strong> &nbsp;&nbsp;<asp:RequiredFieldValidator ID="rfTechnologyDescription" runat="server" controltovalidate="txtTechnologyDescription" CssClass="required" errormessage="Required" SetFocusOnError="True"></asp:RequiredFieldValidator><br />
<asp:TextBox ID="txtTechnologyDescription" runat="server" Height="75" TextMode="MultiLine" Width="600" /><br /><br />
<b><span class="required">*</span> Please suggest 2 or 3 days and times for us to schedule a meeting with you. </b><br />(for example: Monday, 2/21/14 at 10:30 pm or Friday, 2/25/14 after 10:00 am).&nbsp;&nbsp;<asp:RequiredFieldValidator ID="rfTechnologyDates" runat="server" controltovalidate="txtTechnologyDates" CssClass="required" errormessage="Required" SetFocusOnError="True"></asp:RequiredFieldValidator><br />
<asp:TextBox ID="txtTechnologyDates" runat="server" Height="75" TextMode="MultiLine" Width="600" /><br /><br />
<asp:Button ID="btnTechnologySubmit" runat="server" class="" OnClick="btnTechnologyConsultbtnSubmit_Click" Text="Submit" />&nbsp;
<asp:Button Text="Clear Form" ID="TechnologyConsultCancelButton" runat="server" CausesValidation="False" CommandName="Reset" OnClick="TechnologyConsultCancelButton_Click" />
</fieldset>
<asp:Label ID="lblTechnologyConsultErrorMessage" runat="server" />
</asp:Panel> <!--End of Technology Consultation Panel-->
</div>
</asp:Content>