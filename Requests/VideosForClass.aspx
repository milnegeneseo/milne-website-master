<%@ Page Title="" Language="C#" MasterPageFile="~/Requests/RequestsMasterPage.master" AutoEventWireup="true" CodeFile="VideosForClass.aspx.cs" Inherits="Requests_Videos" validateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<link href="https://eres.geneseo.edu/milne-styles-js/jquery-ui-datepicker-milne.min.css" rel="stylesheet" />
<link href="https://eres.geneseo.edu/milne-styles-js/jquery-ui-1.10.3.custom-milne.min.css" rel="stylesheet" />
<script src="https://eres.geneseo.edu/milne-styles-js/js/jquery-ui-datepicker-milne.min.js"></script> 
<script type="text/javascript" src="https://eres.geneseo.edu/milne-styles-js/js/jquery.ui.timepicker.min.js"></script>
<script type="text/javascript" src="https://eres.geneseo.edu/milne-styles-js/js/jquery-ui-1.10.3.custom.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#<%= txtDate.ClientID %>').attr('readonly', 'readonly').datepicker({});
        });
    </script>
<div id="rightSideContent">
<div class="breadcrumb" style="margin:20px 0px 0px 0px;"><a href="https://www.geneseo.edu/">SUNY Geneseo</a> &raquo; <a href="https://www.geneseo.edu/library">Milne Library</a> &raquo; <a href="https://www.geneseo.edu/library/requests-services">Requests and Services</a> &raquo; <a href="http://intranetlib.geneseo.edu/DataPortal/Requests/VideosForClass.aspx" style="color:#b85533 !important;">Request a Video or DVD for Class</a></div>

    <h1>Request a DVD or Video for Class Viewing</h1>   
<p class="subheading">We recommend that requests be submitted as far ahead of time as possible (a week or more advance notice is recommended). The pick-up point for DVDs and videos is located at Milne Service Desk.<br /><br />* If you need a DVD or video more than once during the semester, you may want to consider placing the DVD or video on reserve to guarantee its availability when needed. </p>
<br /> <span class="required">* indicates required field.</span><br /> <br />
<fieldset>
    <legend>Media Type</legend>
    <span class="required">* </span>Please select the media type:&nbsp;<asp:requiredfieldvalidator id="rfType" runat="server" errormessage="Required" CssClass="required" controltovalidate="rblType" SetFocusOnError="True"></asp:requiredfieldvalidator> <br />
<div class="radiobutton2">	
<asp:RadioButtonList ID="rblType" runat="server" RepeatDirection="Horizontal" CssClass="radiobutton2" style="background:none !important; background: transparent !important;"  CellSpacing="5" Width="358px" >
        <asp:ListItem Text="DVD" Value="DVD" />
        <asp:ListItem Text="Video" Value="Video" />
</asp:RadioButtonList>
</div>
</fieldset> <br />
<fieldset>
<legend>Instructor Information</legend>
<label><asp:requiredfieldvalidator id="rfFirstName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtFirstName" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> First Name: </label> <asp:TextBox runat="server" size="25" maxlength="25" ID="txtFirstName" /> <br />
<label><asp:requiredfieldvalidator id="rfLastName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtLastName" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Last Name: </label><asp:TextBox runat="server" size="25" maxlength="25" ID="txtLastName" /> <br />
<label><asp:requiredfieldvalidator id="rfEmail" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtEmail" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Email Address: </label><asp:TextBox runat="server" size="25" maxlength="25" ID="txtEmail" />
    <asp:RegularExpressionValidator ID="reEmail" ErrorMessage="Invalid Email Address" CssClass="required" ControlToValidate="txtEmail" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" /><br />
<label><asp:requiredfieldvalidator id="rfDepartment" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtDepartment" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Department: </label><asp:TextBox ID="txtDepartment" runat="server" size="25" maxlength="25" /> <br /> 
<label><asp:requiredfieldvalidator id="rfPhone" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtPhone" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Office Phone Number: </label><asp:TextBox ID="txtPhone" runat="server" size="25" maxlength="25" /> <br /> 
</fieldset> <br />
<fieldset>
<legend>DVD/Video Information</legend>
<label><asp:requiredfieldvalidator id="rfTitle" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtTitle" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Full Title: </label> <asp:TextBox runat="server" size="25" maxlength="25" ID="txtTitle" /> <br />    
<label><asp:requiredfieldvalidator id="rfCallNumber" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtCallNumber" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> DVD/Video Call Number: </label><asp:TextBox runat="server" size="25" maxlength="25" ID="txtCallNumber" /> <br />
<label><asp:requiredfieldvalidator id="rfDate" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtDate" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Pick-up Date: </label>
<asp:TextBox CssClass="date" ID="txtDate" runat="server" size="11" maxlength="11" />&nbsp;<asp:RegularExpressionValidator ID="reDate" runat="server" CssClass="required" ControlToValidate="txtDate" ErrorMessage="Not a valid date (mm/dd/yyyy)" SetFocusOnError="True" ValidationExpression="((^(10|12|0?[13578])([/])(3[01]|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(11|0?[469])([/])(30|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(2[0-8]|1[0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(29)([/])([2468][048]00)$)|(^(0?2)([/])(29)([/])([3579][26]00)$)|(^(0?2)([/])(29)([/])([1][89][0][48])$)|(^(0?2)([/])(29)([/])([2-9][0-9][0][48])$)|(^(0?2)([/])(29)([/])([1][89][2468][048])$)|(^(0?2)([/])(29)([/])([2-9][0-9][2468][048])$)|(^(0?2)([/])(29)([/])([1][89][13579][26])$)|(^(0?2)([/])(29)([/])([2-9][0-9][13579][26])$))"></asp:RegularExpressionValidator> <br /> 
</fieldset> <br />
<fieldset>
<legend>Additional Remarks</legend>
    <br />
<div style="float:left;"><b>Additional comments: </b></div>
<div style="float:left;clear:left;">	
<asp:TextBox ID="txtRemarks" runat="server" Height="75" Width="600" TextMode="MultiLine"/></br>
<asp:Button Text="Submit" ID="btnSubmit" OnClick="btnSubmit_Click" runat="server" class=""/>&nbsp;
<asp:Button Text="Clear Form" ID="CancelButton" runat="server" CausesValidation="False" CommandName="Reset" OnClick="CancelButton_Click" />
</div>
    </fieldset>

    <asp:Label ID="lblErrorMessage" runat="server" />

    </div>

</asp:Content>