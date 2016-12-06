<%@ Page Title="" Language="C#" MasterPageFile="~/Requests/RequestsMasterPage.master" AutoEventWireup="true" CodeFile="RoomRequest.aspx.cs" Inherits="Requests_RoomRequest" validateRequest="false" %>
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
         $('#<%= txtDate.ClientID %>').attr('readonly', 'readonly').datepicker({});
            $('#<%= txtStartTime.ClientID %>').attr('readonly', 'readonly').timepicker({
                showPeriod: true,
                showLeadingZero: false,
                onHourShow: OnHourShowCallback
                //onMinuteShow: OnMinuteShowCallback
            });
            $('#<%= txtEndTime.ClientID %>').attr('readonly', 'readonly').timepicker({
                showPeriod: true,
                showLeadingZero: false,
                onHourShow: OnHourShowCallback
                //onMinuteShow: OnMinuteShowCallback
            });
        });
        function OnHourShowCallback(hour) {
            if ((hour > 6) || (hour < 1)) {
                return true; // not valid
            }
            return false; // valid
        }
    </script>
  <div id="rightSideContent">
                <div style="margin:20px 0px 0px 0px;"><a href="https://www.geneseo.edu/">SUNY Geneseo</a> &raquo; <a href="https://www.geneseo.edu/library">Milne Library</a> &raquo; <a href="https://www.geneseo.edu/library/requests-services">Requests &amp; Services</a> &raquo; <a href="http://intranetlib.geneseo.edu/DataPortal/Requests/RoomRequest.aspx" style="color:#b85533 !important;">Room Request/Reservation</a></div>
<h1>Room Request</h1> 
<span class="link-button-background style="margin-bottom: 10px;"><a href="https://www.geneseo.edu/library/classrooms-and-meeting-rooms">Room Descriptions & Policies</a></span>&nbsp; 
	&nbsp;  <span class="link-button-background style="margin-bottom: 10px;"><a href="https://www.geneseo.edu/library/milne-library-floor-plans">Floor Plans/Room Locations</a></span>&nbsp;
	&nbsp;  <span class="link-button-background style="margin-bottom: 10px;"><a href="http://emsprod.geneseo.edu/VirtualEMSPublic/CustomBrowseEvents.aspx?data=8imT11TVEgjXNgDJOAPMB4OcOxg1lJDzQDCUHCLgyvV%2bp3H99PcbRuP418vvqF%2br">Check Room Availability</a></span>
	&nbsp; <span class="link-button-background  style="margin-bottom: 10px;""><a href="https://www.geneseo.edu/library/library-computer-labs-technology">Computer Labs</a></span>
<br /><br />
<a name="104-208"></a><h2 style="font-size: 2.2em;">Room 104 or 208</h2>
    <p>Use the form below to request <a href="https://www.geneseo.edu/library/classrooms-and-meeting-rooms#section1" target="_blank"><b>Room 104  <img src="https://eres.geneseo.edu/milne-styles-js/img/question-mark-icon-16.png" style="vertical-align:baseline;"></b></a> or <a href="https://www.geneseo.edu/library/classrooms-and-meeting-rooms#section4" target="_blank"><b>Room 208  <img src="https://eres.geneseo.edu/milne-styles-js/img/question-mark-icon-16.png" style="vertical-align:baseline;"></b></a></p>
<b>Please allow 2 business days to confirm your room reservation.</b> An email will be sent to you once your reservation has been made. Requests for more than one date can be made using this form if all times are the same. <br /><br />
If you need to cancel a room reservation, please contact <a href="mailto:hoffman@geneseo.edu">Patty Hoffman</a>, Events and Building Coordinator, at <a href="mailto:hoffman@geneseo.edu">hoffman@geneseo.edu</a> or call 585-245-5523. </p>
    <span class="required">* Indicates required field.</span><br /><br />
<fieldset>
<legend>Personal Information</legend>
    <asp:HiddenField ID="hfText" runat="server" /> <asp:TextBox ID="txtHF" runat="server" Visible = "false"></asp:TextBox>
    <label><span class="required">*</span> First Name:  </label><asp:TextBox runat="server" size="25" maxlength="25" ID="txtFirstName" />&nbsp; <asp:requiredfieldvalidator id="rfFirstName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtFirstName" SetFocusOnError="True"></asp:requiredfieldvalidator> <br />     
    <label><span class="required">*</span> Last Name: </label><asp:TextBox runat="server" size="25" maxlength="25" ID="txtLastName" />&nbsp; <asp:requiredfieldvalidator id="rfLastName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtLastName" SetFocusOnError="True"></asp:requiredfieldvalidator><br /> 
    <label><span class="required">*</span> Email Address: </label><asp:TextBox runat="server" size="25" maxlength="25" ID="txtEmail" />&nbsp; 
   <asp:requiredfieldvalidator id="rfEmail" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtEmail" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp;
   <asp:RegularExpressionValidator ID="reEmail" ErrorMessage="Invalid Email Address" CssClass="required" ControlToValidate="txtEmail" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" /><br />
<label><span class="required">*</span> Department: </label><asp:TextBox ID="txtDepartment" runat="server" size="25" maxlength="25" />&nbsp; <asp:requiredfieldvalidator id="rfDepartment" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtDepartment" SetFocusOnError="True"></asp:requiredfieldvalidator> <br /> 
<label><span class="required">*</span> Office Phone Number: </label><asp:TextBox ID="txtPhone" runat="server" size="25" maxlength="25" />&nbsp; <asp:requiredfieldvalidator id="rfPhone" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtPhone" SetFocusOnError="True"></asp:requiredfieldvalidator> <br /> 
<label> <span class="required">*</span> Status/Class Standing: <asp:DropDownList ID="ddlStatus" runat="server" AppendDataBoundItems="True" >
            <asp:ListItem Text="--Select One--" Value="" />             
            <asp:ListItem Text="Faculty/Staff" Value="Faculty/Staff" />            
            <asp:ListItem Text="Geneseo Student" Value="Geneseo Student" />            
            <asp:ListItem Text="Other" Value="Other" />                
        </asp:DropDownList> 
    &nbsp;<asp:requiredfieldvalidator id="rfStatus" runat="server" errormessage="Required" CssClass="required" controltovalidate="ddlStatus" SetFocusOnError="True" ></asp:requiredfieldvalidator>
</label><br />
</fieldset> <br />
<fieldset>
<legend>Room Information</legend>
<p><a href="http://emsprod.geneseo.edu/VirtualEMSPublic/CustomBrowseEvents.aspx?data=8imT11TVEgjXNgDJOAPMB4OcOxg1lJDzQDCUHCLgyvV%2bp3H99PcbRuP418vvqF%2br" target="_blank" ><img alt="" src="img/cal_icon.gif" /> Check scheduled events in Milne </a></p>
<div style="float:left;"><label><span class="required">*</span> Date (mm/dd/yyyy): 
        <asp:TextBox CssClass="date" ID="txtDate" runat="server" size="11" maxlength="11" />&nbsp;
        <asp:requiredfieldvalidator id="rfDate" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtDate" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp;
        <asp:RegularExpressionValidator ID="reDate" runat="server" CssClass="required" ControlToValidate="txtDate" ErrorMessage="Not a valid date (mm/dd/yyyy)" SetFocusOnError="True" ValidationExpression="((^(10|12|0?[13578])([/])(3[01]|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(11|0?[469])([/])(30|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(2[0-8]|1[0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(29)([/])([2468][048]00)$)|(^(0?2)([/])(29)([/])([3579][26]00)$)|(^(0?2)([/])(29)([/])([1][89][0][48])$)|(^(0?2)([/])(29)([/])([2-9][0-9][0][48])$)|(^(0?2)([/])(29)([/])([1][89][2468][048])$)|(^(0?2)([/])(29)([/])([2-9][0-9][2468][048])$)|(^(0?2)([/])(29)([/])([1][89][13579][26])$)|(^(0?2)([/])(29)([/])([2-9][0-9][13579][26])$))"></asp:RegularExpressionValidator>
</label></div> 
<div style="float:left; clear:left;"><label><span class="required">*</span> Class Start Time:  <asp:TextBox CssClass="time" ID="txtStartTime" runat="server" size="11" maxlength="11" />&nbsp; <asp:requiredfieldvalidator id="rfStartTime" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtStartTime" SetFocusOnError="True" ></asp:requiredfieldvalidator></label></div>
<div style="float:left;"><label><span class="required">*</span> Class End Time:  <asp:TextBox CssClass="time" ID="txtEndTime" runat="server" size="11" maxlength="11" />&nbsp; <asp:requiredfieldvalidator id="rfEndTime" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtEndTime" SetFocusOnError="True" ></asp:requiredfieldvalidator></label>
</div>
<div style="float:left; clear:left;">
    <label><span class="required">*</span> Number of People Attending: <asp:TextBox ID="txtStudentNumber" runat="server" size="3"  MaxLength="3" />&nbsp;
    <asp:requiredfieldvalidator id="rfStudentNumber" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtStudentNumber" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp; 
    <asp:RegularExpressionValidator ID="reStudentNumber" runat="server" CssClass="required" ControlToValidate="txtStudentNumber" ErrorMessage="Numbers only" SetFocusOnError="True" ValidationExpression="((^[0-9]+$))"></asp:RegularExpressionValidator></label>
</div>
<div style="float:left; clear:left;">
    <label><span class="required">*</span> Room Preference:
    <asp:DropDownList ID="ddlRoom" runat="server" >
        <asp:ListItem Text="--Select One--" Value="" />
        <asp:ListItem Value="No Preference" Text="No Preference" />
        <asp:ListItem Value="Room 104" Text="Room 104" />
        <asp:ListItem Value="Room 208" Text="Room 208" />
    </asp:DropDownList>&nbsp;  
    <asp:requiredfieldvalidator id="rfRoom" runat="server" errormessage="Required" CssClass="required" controltovalidate="ddlRoom" SetFocusOnError="True" ></asp:requiredfieldvalidator></label><br />
</div>
</fieldset><br />
<fieldset>
<legend>Event Information</legend>
 <div style="float:left;">
    <label><span class="required">*</span> Group Name or Course Name: 
    <asp:TextBox ID="txtGroupName" runat="server" size="25" maxlength="75"  />&nbsp; <asp:requiredfieldvalidator id="rfGroupName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtGroupName" SetFocusOnError="True" ></asp:requiredfieldvalidator></label>
</div>
<div style="float:left; clear:left;">
    <label><span class="required">&nbsp;</span> Course Number (ABCD 123 Format): 
    <asp:TextBox ID="txtCourseNumber" runat="server" size="8" maxlength="8"  />&nbsp;
    Section: <asp:TextBox ID="txtSection" runat="server" size="8" maxlength="8"  /></label>
</div>
<div style="float:left;">	
    <asp:RegularExpressionValidator ID="reCourseNumber" SetFocusOnError="true" CssClass="required" ValidationExpression="^[a-zA-Z]{4} [0-9]{3}$" ErrorMessage="Course Number should be in 'ABCD 123' format" ControlToValidate="txtCourseNumber" runat="server" />
</div> 
<div style="float:left; clear:left;">
    <label><span class="required">*</span> Purpose of Request: 
    <asp:DropDownList ID="ddlPurpose" runat="server" >
        <asp:ListItem Text="--Select One--" Value="" />
        <asp:ListItem Value="Academic Class" Text="Academic Class" />
        <asp:ListItem Value="Academic Event" Text="Academic Event" />
        <asp:ListItem Value="Library Instruction" Text="Library Instruction" />
        <asp:ListItem Value="Meeting" Text="Meeting" />
        <asp:ListItem Value="Student Org Event" Text="Student Org. Event" />
        <asp:ListItem Value="Workshop/Seminar" Text="Workshop/Seminar" />
    </asp:DropDownList>&nbsp;<asp:requiredfieldvalidator id="rfPurpose" runat="server" errormessage="Required" CssClass="required" controltovalidate="ddlPurpose" SetFocusOnError="True" ></asp:requiredfieldvalidator></label>
</div>
</fieldset><br />
<fieldset>
<legend>Additional Remarks</legend>
<div style="float:left;">
    Additional comments, concerns, or technology questions: <asp:TextBox ID="txtRemarks" runat="server" Height="75" style="width: 80%;" TextMode="MultiLine"/>
</div>
<div style="float:left; clear:left;">
 <span class="required">*</span>
    <label><asp:CheckBox ID="cbxAgree" runat="server" /></label>
    <b>By checking this box, you agree to return the room in good condition and are responsible for reimbursing the library for any damages, stolen property, or extensive cleaning as a result of your event.</b>
    <asp:CustomValidator runat="server" ID="CheckBoxRequired" EnableClientScript="true" OnServerValidate="CheckBoxRequired_ServerValidate"
    ClientValidationFunction="CheckBoxRequired_ClientValidate" errormessage="Required" CssClass="required"></asp:CustomValidator>
    <br /><br />
    <asp:Button Text="Submit" ID="btnSubmit" OnClick="btnSubmit_Click" runat="server"  CssClass="form"/>&nbsp;
    <asp:Button Text="Clear Form" ID="CancelButton" runat="server" CausesValidation="False" CommandName="Reset" OnClick="CancelButton_Click"  CssClass="form"/>
</div>
</fieldset>
<asp:Label ID="lblErrorMessage" runat="server" />
</div>
<h2 style="font-size: 2.2em;">Room 305 & Lobby Table</h2>
<fieldset>
<legend>Self-Reservation Instructions</legend>
<label>Use <a href="http://emsprod.geneseo.edu/VirtualEMSPublic/CustomBrowseEvents.aspx?data=8imT11TVEgjXNgDJOAPMB4OcOxg1lJDzQDCUHCLgyvV%2bp3H99PcbRuP418vvqF%2br"><strong>Virtual EMS</strong></a> to reserve Room 305 or the Lobby Table.<br /><br />
<a href="https://cloud.ensemblevideo.com/Watch/Reserve"><strong>Instructions for Using Virtual EMS</strong></a><br /><br /></label>  
<label>An email will be sent to you once your reservation has been made.<br /><br /></label>
</fieldset>
<h2 style="font-size: 2.2em;">Rooms 105, 121, or 213</h2>
<fieldset>
<legend>Semester-long Course Room Reservation</legend> 
 <label>Contact the <a href="http://www.geneseo.edu/registrar/contact_us"><strong>Office of the Registrar</strong></a>.<br /><br /></label>
</fieldset> 
</asp:Content>