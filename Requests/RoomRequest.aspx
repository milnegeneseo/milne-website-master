﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Requests/RequestsMasterPage.master" AutoEventWireup="true" CodeFile="RoomRequest.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="Requests_RoomRequest" validateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<link href="../Scripts/jquery-ui-milne.css" rel="stylesheet" />
    <script src="../Scripts/jquery-ui.js"></script> 
        <script src="../Scripts/jquery.ui.timepicker.js"></script>

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
                <div class="breadcrumb" style="margin:20px 0px 0px 0px;">
                    <a href="https://www.geneseo.edu/">SUNY Geneseo</a> &raquo; <a href="https://www.geneseo.edu/library">Milne Library</a> &raquo;&nbsp; <a href="http://intranetlib.geneseo.edu/DataPortal/Requests/RoomRequest.aspx" style="color:#b85533 !important;">Room Request/Reservation</a></div>
<h1>Room Request</h1> 
<!-- div style="float:left;">
<!-- span class="link-button-background style="margin-bottom: 10px;"><a href="https://www.geneseo.edu/library/classrooms-and-meeting-rooms">Room Descriptions & Policies</a></span>&nbsp; 
	&nbsp;  <span class="link-button-background style="margin-bottom: 10px;"><a href="https://www.geneseo.edu/library/milne-library-floor-plans">Floor Plans/Room Locations</a></span>&nbsp;
	&nbsp;  <span class="link-button-background style="margin-bottom: 10px;"><a href="http://emsprod.geneseo.edu/VirtualEMSPublic/CustomBrowseEvents.aspx?data=8imT11TVEgjXNgDJOAPMB4OcOxg1lJDzQDCUHCLgyvV%2bp3H99PcbRuP418vvqF%2br">Check Room Availability</a></span>
	&nbsp; <span class="link-button-background  style="margin-bottom: 10px;""><a href="https://www.geneseo.edu/library/library-computer-labs-technology">Computer Labs</a></span -->
	
<!--p><a href="https: //www.geneseo.edu/library/classrooms-and-meeting-rooms"><i class="material-icons" style="vertical-align:text-bottom;">store_mall_directory</i>Classroom Descriptions &amp; Policies</a> &nbsp; |&nbsp;&nbsp;&nbsp;<a href="https://intranetlib.geneseo.edu/DataPortal/MilneFloorPlans/Login.aspx"><i class="material-icons" style="vertical-align:text-bottom;">map</i>Floor Plans</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="http://emsprod.geneseo.edu/VirtualEMSPublic/CustomBrowseEvents.aspx?data=8imT11TVEgjXNgDJOAPMB4OcOxg1lJDzQDCUHCLgyvV%2bp3H99PcbRuP418vvqF%2br"><i class="material-icons" style="vertical-align:text-bottom;">date_range</i>Check Room Availability</a></!--p>	
	
</!-->
	<div style="clear:both;">
	</div>
<a name="104-208"></a><h2 style="font-size: 2.2em;">Room 104</h2>
    <p><a href="https://www.geneseo.edu/library/classrooms-and-meeting-rooms#section1" target="_blank"><b>Room 104  <img alt="Description of Room 104" src="https://eres.geneseo.edu/milne-styles-js/img/question-mark-icon-16.png" style="vertical-align:baseline;"></b></a> is a designated faculty librarian teaching space used primarily for their instruction sessions;<strong> these sessions take priority over all other uses of the room.</strong> In other cases, it may only be used for supplemental purposes; it is not to be reserved for the exclusive use of semester-long courses. When Room 104 is not being used for instructional purposes, it is available for quiet computer use for students, staff, and faculty.</p>
                <br />
If you need to <strong>cancel </strong>a room reservation, please contact <a href="Mailto:westb@geneseo.edu">Brandon West</a>, Head of Research Instruction Services at <a href="Mailto:westb@geneseo.edu">westb@geneseo.edu</a></p>
    <span class="required">* Indicates required field.</span><br /><br />
<fieldset>
<legend>Personal Information</legend>
    <asp:HiddenField ID="hfText" runat="server" /> <asp:TextBox ID="txtHF" runat="server" Visible = "false"></asp:TextBox>
    <label><span class="required">*</span> First Name:  </label><asp:TextBox runat="server" size="25" maxlength="25" ID="txtFirstName" title="First Name" />&nbsp; <asp:requiredfieldvalidator id="rfFirstName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtFirstName" SetFocusOnError="True"></asp:requiredfieldvalidator> <br />     
    <label><span class="required">*</span> Last Name: </label><asp:TextBox runat="server" size="25" maxlength="25" ID="txtLastName"  title="Last Name" />&nbsp; <asp:requiredfieldvalidator id="rfLastName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtLastName" SetFocusOnError="True"></asp:requiredfieldvalidator><br /> 
    <label><span class="required">*</span> Email Address: </label><asp:TextBox runat="server" size="25" maxlength="25" ID="txtEmail" title="Email" />&nbsp; 
   <asp:requiredfieldvalidator id="rfEmail" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtEmail" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp;
   <asp:RegularExpressionValidator ID="reEmail" ErrorMessage="Invalid Email Address" CssClass="required" ControlToValidate="txtEmail" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" /><br />

<label><span class="required">*</span> Office or Contact Phone Number: <asp:TextBox ID="txtPhone" runat="server" size="25" maxlength="15" title="Phone Number" />&nbsp; <asp:requiredfieldvalidator id="rfPhone" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtPhone" SetFocusOnError="True"></asp:requiredfieldvalidator></label>&nbsp;
<label> <span class="required">*</span> Status/Class Standing:<br />
&nbsp;<asp:DropDownList ID="ddlStatus" runat="server" AppendDataBoundItems="True" >
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
<!-- p><a href="http ://emsprod.geneseo.edu/VirtualEMSPublic/CustomBrowseEvents.aspx?data=8imT11TVEgjXNgDJOAPMB4OcOxg1lJDzQDCUHCLgyvV%2bp3H99PcbRuP418vvqF%2br" target="_blank" ><img alt="" src="img/cal_icon.gif" /> Check scheduled events in Milne </a></!-->



<div style="float:left; clear:left;">
    <label><span class="required">*</span> <strong>What do you want to reserve:</strong>
    <asp:DropDownList ID="ddlRoom" runat="server" AutoPostBack="True" onSelectedIndexChanged="ddlRoom_SelectedIndexChanged">
        <asp:ListItem Text="--Select One--" Value="" />
<%--        <asp:ListItem Value="No Preference" Text="No Preference" />--%>
        <asp:ListItem Value="Room 104" Text="Room 104" />
<%--        <asp:ListItem Value="Room 208" Text="Room 208" />--%>
 <%--       <asp:ListItem Value="Lobby Table" Text="Lobby Table" />--%>
    </asp:DropDownList>&nbsp;  


    <asp:requiredfieldvalidator id="rfRoom" runat="server" errormessage="Required" CssClass="required" controltovalidate="ddlRoom" SetFocusOnError="True" ></asp:requiredfieldvalidator></label><br />
</div>
<div style="float:left; clear:left;">
    <label><span class="required">*</span> Purpose of Reservation: 
    <asp:DropDownList ID="ddlPurpose" runat="server" >
        <asp:ListItem Text="--Select One--" Value="" />
        <asp:ListItem Value="Academic Class" Text="Academic Class" />
        <asp:ListItem Value="Academic Event" Text="Academic Event" />
        <asp:ListItem Value="Library Instruction" Text="Library Instruction" />
        <asp:ListItem Value="Meeting" Text="Meeting" />
        <asp:ListItem Value="Student Organization Event" Text="Student Org. Event" />
        <asp:ListItem Value="Workshop/Seminar" Text="Workshop/Seminar" />
    </asp:DropDownList>&nbsp;<asp:requiredfieldvalidator id="rfPurpose" runat="server" errormessage="Required" CssClass="required" controltovalidate="ddlPurpose" SetFocusOnError="True" ></asp:requiredfieldvalidator></label>
</div>
<div style="float:left; clear:left;">
    <label><span class="required">*</span> Group Name or Course Name: 
    <asp:TextBox ID="txtGroupName" runat="server" size="25" maxlength="75"  />&nbsp; <asp:requiredfieldvalidator id="rfGroupName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtGroupName" SetFocusOnError="True" ></asp:requiredfieldvalidator></label>
</div>

<div style="clear:left;"><label><span class="required">*</span> Date (mm/dd/yyyy): 
        <asp:TextBox CssClass="date" ID="txtDate" runat="server" size="11" maxlength="11" />&nbsp;
        <asp:requiredfieldvalidator id="rfDate" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtDate" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp;
        <asp:RegularExpressionValidator ID="reDate" runat="server" CssClass="required" ControlToValidate="txtDate" ErrorMessage="Not a valid date (mm/dd/yyyy)" SetFocusOnError="True" ValidationExpression="((^(10|12|0?[13578])([/])(3[01]|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(11|0?[469])([/])(30|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(2[0-8]|1[0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(29)([/])([2468][048]00)$)|(^(0?2)([/])(29)([/])([3579][26]00)$)|(^(0?2)([/])(29)([/])([1][89][0][48])$)|(^(0?2)([/])(29)([/])([2-9][0-9][0][48])$)|(^(0?2)([/])(29)([/])([1][89][2468][048])$)|(^(0?2)([/])(29)([/])([2-9][0-9][2468][048])$)|(^(0?2)([/])(29)([/])([1][89][13579][26])$)|(^(0?2)([/])(29)([/])([2-9][0-9][13579][26])$))"></asp:RegularExpressionValidator>
</label></div> 
    <div style="clear:both;">&nbsp;</div>
<div style="float:left; width: 151px;"><label><span class="required">*</span> Start Time:  <asp:TextBox CssClass="time" ID="txtStartTime" runat="server" size="11" maxlength="11" />&nbsp; <asp:requiredfieldvalidator id="rfStartTime" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtStartTime" SetFocusOnError="True" ></asp:requiredfieldvalidator></label></div>
<div><label style="float:left;"><span class="required">*</span> End Time:  <asp:TextBox CssClass="time" ID="txtEndTime" runat="server" size="11" maxlength="11" />&nbsp; <asp:requiredfieldvalidator id="rfEndTime" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtEndTime" SetFocusOnError="True" ></asp:requiredfieldvalidator></label>
</div>


</fieldset><br />

      <asp:PlaceHolder runat="server" ID="CourseInformationPanel" Visible="false">
<fieldset>
<legend>Course Information</legend>
 
<div style="float:left; clear:left;">
    <label>Course Number (ABCD 123 Format): 
    <asp:TextBox ID="txtCourseNumber" runat="server" size="8" maxlength="8" /></label>&nbsp;
     <label>Section: <asp:TextBox ID="txtSection" runat="server" size="8" maxlength="8" /></label> 
 <asp:RegularExpressionValidator ID="reCourseNumber" SetFocusOnError="true" CssClass="required" ValidationExpression="^[a-zA-Z]{4} [0-9]{3}$" ErrorMessage="Course Number should be in 'ABCD 123' format" ControlToValidate="txtCourseNumber" runat="server" />
</div>    

<div style="float:left;clear:left;">	
    <label><span class="required">*</span> Department: <asp:TextBox ID="txtDepartment" runat="server" size="25" maxlength="25" title="Department"/>&nbsp; <asp:requiredfieldvalidator id="rfDepartment" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtDepartment" SetFocusOnError="True"></asp:requiredfieldvalidator></label> &nbsp; 
    
    <label><span class="required">*</span> Number of People Attending: <asp:TextBox ID="txtStudentNumber" runat="server" size="3"  MaxLength="3" />&nbsp;
    <asp:requiredfieldvalidator id="rfStudentNumber" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtStudentNumber" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp; 
    <asp:RegularExpressionValidator ID="reStudentNumber" runat="server" CssClass="required" ControlToValidate="txtStudentNumber" ErrorMessage="Numbers only" SetFocusOnError="True" ValidationExpression="((^[0-9]+$))"></asp:RegularExpressionValidator></label>
</div>


</fieldset><br />
</asp:PlaceHolder>




<fieldset>
<legend>Additional Remarks</legend>
<div style="float:left;">
    Additional comments, concerns, or technology questions: <asp:TextBox ID="txtRemarks" runat="server" Height="75" style="width: 80%;" TextMode="MultiLine" title="Comments"/>
</div>
<div style="float:left; clear:left;">


 
   
    <%--<asp:CheckBoxList ID="cbxAgree" runat="server">
        <asp:ListItem Value="Agree" aria-labelledby="Agreement">Agreement</asp:ListItem>
    </asp:CheckBoxList>--%> 
 <%--   <span class="required">*</span>  
 <b> <asp:CheckBox ID="cbxAgree" runat="server" title="Agreement"  aria-label="By checking this box, you agree to return the room in good condition and are responsible for reimbursing the library for any damages, stolen property, or extensive cleaning as a result of your event." /> By checking this box, you agree to return the room or leave the Lobby Table in good condition and are responsible for reimbursing the library for any damages, stolen property, or extensive cleaning as a result of your event.</b>
 <asp:CustomValidator runat="server" ID="CheckBoxRequired" EnableClientScript="true" OnServerValidate="CheckBoxRequired_ServerValidate"
    ClientValidationFunction="CheckBoxRequired_ClientValidate" errormessage="Required" CssClass="required"></asp:CustomValidator>--%>
    <br />
    <br />

    <asp:Button Text="Submit" ID="btnSubmit" OnClick="btnSubmit_Click" runat="server"  CssClass="form"/>&nbsp;
    <asp:Button Text="Clear Form" ID="CancelButton" runat="server" CausesValidation="False" CommandName="Reset" OnClick="CancelButton_Click"  CssClass="form"/>
</div>



</fieldset>
<asp:Label ID="lblErrorMessage" runat="server" />
</div>
<div>
<h2 style="font-size: 2.2em;">Rooms 121 or 213</h2>
<fieldset>
<legend>Semester-long Course Room Reservation</legend> 
 <label>Contact the <a href="http://www.geneseo.edu/registrar/contact_us"><strong>Office of the Registrar</strong></a>.<br /><br /></label>



</fieldset> 

    <br />

<div>
<h2 style="font-size: 2.2em;">Room 208</h2>
<fieldset>
<legend>Teaching and Learning Center</legend> 
    <br />
    Room 208 is a designated space for the Teaching and Learning Center (TLC). TLC events have priority in Room 208 over all other purposes. 
    <br />
    <br />
    To schedule Room 208, please <a href="lageorgia@geneseo.edu">contact Library Administration</a>.
    <br />
    <br />



</fieldset> 
<div id="Div1"><br /><br /></div>
<br /><br />




</div>
</asp:Content>