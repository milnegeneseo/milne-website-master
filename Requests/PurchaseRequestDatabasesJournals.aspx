<%@ Page Title="" Language="C#" MasterPageFile="~/Requests/RequestsMasterPage.master" AutoEventWireup="true" CodeFile="PurchaseRequestDatabasesJournals.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="Request_Databases_Journals" validateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<%--<link href="https://librarydataportal.geneseo.edu/External/js/jquery-ui-1.10.3.custom-milne.min.css" rel="stylesheet" />--%>
<link href="../Scripts/jquery-ui-milne.css" rel="stylesheet" />
    <script src="../Scripts/jquery-ui.js"></script> 
<%--        <script src="../Scripts/jquery.ui.timepicker.js"></script>--%>
<%--<script type="text/javascript" src="https: //intranetlib.geneseo.edu/Dataportal/Scripts/jquery.ui.timepicker.js"></script>--%>
<%-- <script type="text/javascript">
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
    </script>--%>

<%--<script type="text/javascript" src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"
async defer></script>
<script type="text/javascript">
    var onloadCallback = function () {
        grecaptcha.render('dvCaptcha', {
            'sitekey': '<%=ReCaptcha_Key %>',
        'callback': function (response) {
            $.ajax({
                type: "POST",
                url: "Default.aspx/VerifyCaptcha",
                data: "{response: '" + response + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    var captchaResponse = jQuery.parseJSON(r.d);
                    if (captchaResponse.success) {
                        $("[id*=txtCaptcha]").val(captchaResponse.success);
                        $("[id*=rfvCaptcha]").hide();
                    } else {
                        $("[id*=txtCaptcha]").val("");
                        $("[id*=rfvCaptcha]").show();
                        var error = captchaResponse["error-codes"][0];
                        $("[id*=rfvCaptcha]").html("RECaptcha error. " + error);
                    }
                }
            });
        }
    });
};
</script>--%>

<style>
 #rightSideContent input[type="checkbox"], input[type="checkbox"] {
float:left;
padding:0px !important;
margin:7px 5px 5px 0 !important;
width: 16px !important;
height: 16px !important;
    }

 .radio {
margin:0px 5px 5px 0 !important;
padding: 0px !important;
float: left !important;
    }
#ContentPlaceHolder1_rblUsedInClass input [type="radio"], input [type="radio"]{
float: left !important;
margin:0px 5px 5px 0 !important;
padding: 0px !important;
border: none !important;
width: 100%;
height: 20px !important;
    }

</style>

<div id="rightSideContent">
                <div class="breadcrumb" style="margin:20px 0px 0px 0px;">
                    <a href="https://www.geneseo.edu/">SUNY Geneseo</a> &raquo; <a href="https://www.geneseo.edu/library">Milne Library</a> &raquo;&nbsp; <a href="http://intranetlib.geneseo.edu/DataPortal/Requests/PurchaseRequestDatabasesJournals.aspx" style="color:#b85533 !important;">Purchase Request: Databases & Journals</a></div>
<h1>Purchase Request: Databases & Journals</h1> 
<p>Requests for subscriptions or significant one-time purchases are reviewed by the Milne Library Collections Team during the last quarter of the fiscal year (March through June). The Team prioritizes requests for resources that directly support a faculty member’s or department’s teaching and research activities and provide access to unique content that does not otherwise overlap with an existing library or open access resource.</p>
  
<span class="required">* Indicates required field.</span><br /> <br />

<fieldset>
<legend>Personal Information</legend>

<%--    <asp:HiddenField ID="hfText" runat="server" /> <asp:TextBox ID="txtHF" runat="server" Visible = "false"></asp:TextBox>--%>
<asp:HiddenField ID="hfRequestID" runat="server"  /> <asp:TextBox ID="txtRequestID" runat="server" Visible = "false"></asp:TextBox>

    <label><asp:requiredfieldvalidator id="rfFirstName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtFirstName" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Name: </label> <asp:TextBox runat="server" size="25" maxlength="25" ID="txtFirstName" title="Name" /> <br />
     
  
    <label><asp:requiredfieldvalidator id="rfEmail" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtEmail" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Email:  </label>&nbsp;<asp:TextBox runat="server" size="25" maxlength="30" ID="txtEmail" title="Email" /> <br />
<%--    <asp:RegularExpressionValidator ID="reEmail" ErrorMessage="Invalid Email Address" CssClass="required" ControlToValidate="txtEmail" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" /><br />--%>
    <asp:RegularExpressionValidator ID="reGeneseoEmail" ErrorMessage="*Must be a Geneseo .edu address" CssClass="required" ControlToValidate="txtEmail" runat="server" ValidationExpression="[\w0-9\.-]*@geneseo\.edu" /><br />

    <label style ="margin-left:70px;"><span class="required">&nbsp; </span> Department or School: </label><asp:TextBox ID="txtDeptSchool" runat="server" size="25" maxlength="25" title="Department or School" Width="30%" /> <br /> 

</fieldset> <br />
<%--<fieldset>
<legend>Personal Information</legend>

<%--    <asp:HiddenField ID="hfRequestID" runat="server" /> <asp:TextBox ID="txtRequestID" runat="server" Visible = "false"></asp:TextBox>--%>


<%--    <label><asp:requiredfieldvalidator id="rfFirstName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtFirstName" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span>Name: </label> <asp:TextBox runat="server" size="25" maxlength="25" ID="txtFirstName" title="Name" /> <br /> <br />
     
    <label><asp:requiredfieldvalidator id="rfEmail" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtEmail" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Email Address: </label><asp:TextBox runat="server" size="25" maxlength="30" ID="txtEmail" title="Email" /> <br /> <br />
    <asp:RegularExpressionValidator ID="reEmail" ErrorMessage="Invalid Email Address" CssClass="required" ControlToValidate="txtEmail" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" /><br />

    <label><span>Department or School: </span></label><asp:TextBox ID="txtDeptSchool" runat="server" size="25" maxlength="25" title="Department or School:"  /> <br /> 

</fieldset> <br />--%>

<%-- <span class="required">* Indicates required field.</span><br /><br />--%>

<fieldset>
   
<legend>Resource Information</legend>
 <br /> 
    <label><span class="required">*</span>Name: </label>&nbsp; 
  <asp:TextBox ID="txtResourceName" runat="server" size="25" maxlength="80"  aria-label="Resource Name" /><asp:requiredfieldvalidator id="rfResourceName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtResourceName" SetFocusOnError="True" ></asp:requiredfieldvalidator>   
 <br /> 


<%--     <label><strong>Resource Type:</strong></label><br /><br />--%>
<fieldset>
    <legend style="font-size:1.3em;">Resource Type:</legend>
<asp:CheckBoxList ID="cbxResourceType" Title="Resource Type" runat="server" OnSelectedIndexChanged="cbxResourceType_SelectedIndexChanged" RepeatDirection="Vertical" CellPadding="0" CellSpacing="0" Width="100%" TextAlign="Right">
        <asp:ListItem Value="Journal" aria-label="Journal">Journal</asp:ListItem>
        <asp:ListItem Value="Database" aria-label="Database">Database</asp:ListItem>
        <asp:ListItem Value="Archive or Primary Source Material" aria-label="Archive or Primary Source Material">Archive or Primary Source Material</asp:ListItem>
        <asp:ListItem Value="Journal Backfile" aria-label="Journal Backfile">Journal Backfile</asp:ListItem>
        <asp:ListItem Value="eBook Collection" aria-label="eBook Collection">eBook Collection</asp:ListItem>
        <asp:ListItem Value="Streaming Media Collection" aria-label="Streaming Media Collection">Streaming Media Collection</asp:ListItem>
        <asp:ListItem Value="Electronic Reference Material" aria-label="Electronic Reference Material">Electronic Reference Material</asp:ListItem>
        <asp:ListItem Value="Other" aria-label="Other">Other</asp:ListItem>
</asp:CheckBoxList>
</fieldset>
 <br /> 

<label style="float:left;clear:both;">Vendor or Content Provider: </label><asp:TextBox ID="txtVendorContentProvider" runat="server" size="25" maxlength="80" title="Vendor or Content Provider" /><br />

<!------ Used in Class section ---->
<div class="radiobutton">
<label><span class="required">*</span>Will this resource be used in a class(es)?</label>


<asp:RadioButtonList ID="rblUsedInClass" runat="server" RepeatDirection="Horizontal" AutoPostBack = "true" OnSelectedIndexChanged="rblUsedInClass_SelectedIndexChanged"  title="Will this resource be used in a class">
<asp:ListItem Text="Yes" Value="Yes" />
<asp:ListItem Text="No" Value="No" />
</asp:RadioButtonList> 
<asp:requiredfieldvalidator id="rflUsedInClass" runat="server" errormessage="Required" CssClass="required" controltovalidate="rblUsedInClass" SetFocusOnError="True" ></asp:requiredfieldvalidator>       
</div>
<asp:Panel runat="server" ID="UsedInClassPanel" Visible="false"> 
<label>If so, for which semesters or ongoing semesters? </label><asp:TextBox ID="txtWhichSemesters" runat="server" size="25" maxlength="55" Width="300" title="Which Semesters" /><br />
</asp:Panel>
<!--- ---->

<!------ Research project section ---->
<div class="radiobutton">
<label><span class="required">*</span>Will this resource be used for a student research assignment or project?</label>


<asp:RadioButtonList ID="rblResearchProject" runat="server" RepeatDirection="Horizontal"  AutoPostBack = "true" OnSelectedIndexChanged="rblResearchProject_SelectedIndexChanged" title="Will this resource be used for a student research assignment or project">
<asp:ListItem Text="Yes" Value="Yes" />
<asp:ListItem Text="No" Value="No" />
</asp:RadioButtonList> 
<asp:requiredfieldvalidator id="rfResearchProject" runat="server" errormessage="Required" CssClass="required" controltovalidate="rblResearchProject" SetFocusOnError="True" ></asp:requiredfieldvalidator>       
</div>
<asp:Panel runat="server" ID="ResearchProjectPanel" Visible="false"> 
<label>If yes, when is the anticipated start and end date? </label><asp:TextBox ID="txtStartEndDates" runat="server" size="25" maxlength="55" Width="300" title="Start and End Date" /><br />


<label><span class="required">*</span>Is the assignment or project ongoing?</label>

<div class="radiobutton">
<asp:RadioButtonList ID="rblOngoing" runat="server" RepeatDirection="Horizontal"  OnSelectedIndexChanged="rblOngoing_SelectedIndexChanged" title=" Is the assignment or project ongoing?">
<asp:ListItem Text="Yes" Value="Yes" />
<asp:ListItem Text="No" Value="No" />
</asp:RadioButtonList> 
<asp:requiredfieldvalidator id="rfOngoing" runat="server" errormessage="Required" CssClass="required" controltovalidate="rblOngoing" SetFocusOnError="True" ></asp:requiredfieldvalidator>       

</div>
</asp:Panel>
<!--- ---->

<label><span class="required">*</span>What unique content or features does this resource provide?</label><br />
<asp:TextBox ID="txtUnique" runat="server" Height="75" style="width: 80%; float:left;" TextMode="MultiLine" title="Unique Features"/>
<asp:requiredfieldvalidator id="rfUnique" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtUnique" SetFocusOnError="True" ></asp:requiredfieldvalidator>   

<br /><br />
<label> Does this resource have potential to support the teaching and research activities of multiple members of the faculty or multiple academic departments?</label>

<div class="radiobutton" style="float:left; clear:left;">
<asp:RadioButtonList ID="rblTeachingMultipleMembers" runat="server" RepeatDirection="Horizontal"  OnSelectedIndexChanged="rblTeachingMultipleMembers_SelectedIndexChanged" title="Does this resource have potential to support the teaching and research activities of multiple members of the faculty or multiple academic departments?">
<asp:ListItem Text="Yes" Value="Yes" />
<asp:ListItem Text="No" Value="No" />
</asp:RadioButtonList> 
<br />
</div>

<label aria-label="Rate the importance of this resource on a scale of one to five, with 1 being minimally important, and 5 being essential. "><span class="required">*</span>How important is this resource to have in the collection?</label>
<div class="radiobutton" style="float:left; clear:left;">
<fieldset style="width: 40%; padding: 0px 0px 0px 1em;">
<legend style="font-size:1.1em;">Minimally Important &nbsp;  &nbsp;  &nbsp;  &#8212;&#8212;&#8212;&#8212;&#8212;  &nbsp;  &nbsp;  &nbsp;  Essential</legend>
<asp:RadioButtonList ID="rblHowImportant" runat="server" RepeatDirection="Horizontal"  OnSelectedIndexChanged="rblOngoing_SelectedIndexChanged" title="How important is this resource to have in the collection?" CellPadding="5" CellSpacing="5" Font-Size="Medium">
<asp:ListItem Text="1" Value="Minimally Important - 1" />
<asp:ListItem Text="2" Value="2" />
<asp:ListItem Text="3" Value="3" />
<asp:ListItem Text="4" Value="4" />
<asp:ListItem Text="5" Value="Essential - 5" />
</asp:RadioButtonList> 
<asp:requiredfieldvalidator id="rfHowImportant" runat="server" errormessage="Required" CssClass="required" controltovalidate="rblHowImportant" SetFocusOnError="True" ></asp:requiredfieldvalidator>       
</fieldset>
</div>


<label style="float:left; clear:left;">Additional comments:</label><br />
<br /><asp:TextBox ID="txtRemarks" runat="server" Height="75" style="width: 80%;float:left;clear:left;" TextMode="MultiLine" title="Comments"/>


<%--  <script>
      grecaptcha.ready(function () {
          grecaptcha.execute('6Lc7J6QUAAAAAEvrIn9D3Phecsqu-u-_gs6AOuWs', { action: 'homepage' });
      });
  </script>--%>


<br />
<br />
<!-- -->



<div style="float:left;clear:left; margin-top:20px;">
    <asp:Button Text="Submit" ID="btnSubmit" OnClick="btnSubmit_Click" runat="server"  CssClass="form"/>&nbsp;
    <asp:Button Text="Clear Form" ID="CancelButton" runat="server" CausesValidation="False" CommandName="Reset" OnClick="CancelButton_Click"  CssClass="form"/>
</div>
<div style="float:left;clear:left; margin-top:20px;">
<p>Please send any questions to Alana Nuth, Head of Collection Management, at <span class="email"><a href="mailto:nuth@geneseo.edu">nuth@geneseo.edu</a></span></p>
</div>


    


</fieldset>


<asp:Label ID="lblErrorMessage" runat="server" />
</div>
<div>
    <div>
        <div id="Div1"><br /></div>
<br /><br />




</div>
</asp:Content>