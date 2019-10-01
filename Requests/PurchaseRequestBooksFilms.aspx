<%@ Page Title="" Language="C#" MasterPageFile="~/Requests/RequestsMasterPage.master" AutoEventWireup="true" CodeFile="PurchaseRequestBooksFilms.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="Request_Books_Films" validateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<%--<link href="https://librarydataportal.geneseo.edu/External/js/jquery-ui-1.10.3.custom-milne.min.css" rel="stylesheet" />--%>
<link href="../Scripts/jquery-ui-milne.css" rel="stylesheet" />
    <script src="../Scripts/jquery-ui.js"></script> 
<%--        <script src="../Scripts/jquery.ui.timepicker.js"></script> --%>
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

<%--<script type="text/javascript" src="https ://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"
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


/*This is for the priority indicator tooltip for purchase requests*/
.tooltip {
    position: relative;
    display: inline-block;
}

.tooltip .tooltiptext {
    visibility: hidden;
    width: 200px;
    background-color: #003087;
    color: #fff;
    text-align: left;
    border-radius: 6px;
    padding: 5px 10px 0 10px;
    
    /* Position the tooltip */
    position: absolute;
    z-index: 1;
    top: -255px;
    left: 15%;
}

.tooltip:hover .tooltiptext {
    visibility: visible;
}




</style>

<div id="rightSideContent">
                <div class="breadcrumb" style="margin:20px 0px 0px 0px;">
                    <a href="https://www.geneseo.edu/">SUNY Geneseo</a> &raquo; <a href="https://www.geneseo.edu/library">Milne Library</a> &raquo;&nbsp; <a href="http://intranetlib.geneseo.edu/DataPortal/Requests/PurchaseRequestBooksFilms.aspx" style="color:#b85533 !important;">Purchase Request: Books &amp; Films</a></div>
<h1>Purchase Request: Books &amp; Films</h1> 

  
<span class="required">* Indicates required field.</span><br /> <br />

<fieldset>
<legend>Personal Information</legend>

<%--    <asp:HiddenField ID="hfText" runat="server" /> <asp:TextBox ID="txtHF" runat="server" Visible = "false"></asp:TextBox>--%>
<asp:HiddenField ID="hfRequestID" runat="server"  /> <asp:TextBox ID="txtRequestID" runat="server" Visible = "false"></asp:TextBox>

    <label><asp:requiredfieldvalidator id="rfFirstName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtFirstName" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Name: </label> <asp:TextBox runat="server" size="25" maxlength="25" ID="txtFirstName" title="Name" /> <br />
     
  
    <label><asp:requiredfieldvalidator id="rfEmail" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtEmail" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Email:  </label>&nbsp;<asp:TextBox runat="server" size="25" maxlength="30" ID="txtEmail" title="Email" /> <br />
<%--    <asp:RegularExpressionValidator ID="reEmail" ErrorMessage="Invalid Email Address" CssClass="required" ControlToValidate="txtEmail" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" /><br />--%>
    <asp:RegularExpressionValidator ID="reGeneseoEmail" ErrorMessage="*Must be a Geneseo .edu address" CssClass="required" ControlToValidate="txtEmail" runat="server" ValidationExpression="[\w0-9\.-]*@geneseo\.edu" /><br />

    <label style ="margin-left:70px;"><span class="required">&nbsp; </span> Department or School: </label><asp:TextBox ID="txtDeptSchool" runat="server" size="25" maxlength="25" title="Department or School" Width="30%"  /> <br /> 

</fieldset> <br />



<fieldset>
<legend>Resource Information</legend>
<p><em>For requests for journal or database acquisitions, please use </em><a href="PurchaseRequestDatabasesJournals.aspx"><em>this purchase request form</em></a><em>. </em> </p>
 
<%--     <label><strong>Resource Type:</strong></label><br /><br />--%>
<!------ Used in Class section ---->
    <fieldset>
    <legend style="font-size:1.2em;"><span class="required">*</span> Format:</legend></label>
<%--<asp:RadioButtonList ID="rblUsedInClass" runat="server" RepeatDirection="Horizontal" AutoPostBack = "true" OnSelectedIndexChanged="rblUsedInClass_SelectedIndexChanged"  title="Will this resource be used in a class">--%>
<asp:RadioButtonList ID="rblFormat" runat="server" RepeatDirection="Vertical"   title="Resource Format">
<asp:ListItem Text="Print Book" Value="Print Book" />
<asp:ListItem Text="Electronic Book" Value="Electronic Book" />
<asp:ListItem Text="DVD" Value="DVD" />
<asp:ListItem Text="Streaming Film" Value="Streaming Film" />
</asp:RadioButtonList> 
<asp:requiredfieldvalidator id="rflFormat" runat="server" errormessage="Required" CssClass="required" controltovalidate="rblFormat" SetFocusOnError="True" ></asp:requiredfieldvalidator>       
</fieldset>

<!--- ---->
 <br /> 

   <label style="float:left;clear:both;"><span class="required">*</span>Title: </label>&nbsp; 
  <asp:TextBox ID="txtResourceName" runat="server" size="25" maxlength="256" aria-label="Title"  /><asp:requiredfieldvalidator id="rfResourceName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtResourceName" SetFocusOnError="True" ></asp:requiredfieldvalidator>   
 <br /> 

<label> Author: </label>
  <asp:TextBox ID="txtAuthor" runat="server" size="25" maxlength="80" aria-label="Author"  />  
 <br /> 
<label> Publisher or Distributor: </label><asp:TextBox ID="txtPublisherDistributor" runat="server" size="25" maxlength="80" style="width: 50%;" title="Publisher or Distributor" />
 <br /> 

<label> Year of Publication: </label>&nbsp; 
  <asp:TextBox ID="txtYearPublication" runat="server" size="10" maxlength="4" style="width: 50%;" aria-label="Year of Publication"  />  
 <br /> 

<label> Edition: </label>&nbsp; 
<asp:TextBox ID="txtEdition" runat="server" size="10" maxlength="10" style="width: 50%;" aria-label="Edition"  />  
<br /> 
<label> ISBN: </label>&nbsp;<asp:TextBox ID="txtISBN" runat="server" size="20" maxlength="13" title="ISBN" style="width: 50%;" aria-label="ISBN Number" ></asp:TextBox>
<asp:RegularExpressionValidator ID="reISBN" runat="server" CssClass="required" ControlToValidate="txtISBN" ErrorMessage="Numbers or X only, no spaces or hyphens" SetFocusOnError="True" ValidationExpression="((^[0-9xX]+$))"></asp:RegularExpressionValidator>


<!------  Priority Level  section ---->

<div style="clear:left;">
<label><span class="required">*</span>Please let us know the level of priority for this purchase:</label>

<!-- tooltip -->							
<div class="tooltip" style="float:left; width:30%;"><img src="img/question.png" style="width:16px; height:16px;" alt="question mark" />
 <span class="tooltiptext">
<br>
 <b>Essential</b>:<br>
Items needed for a class or research. Items will be purchased promptly.
<br><br>
<b>Highly Recommended</b>:<br>
Items which support teaching or research, but are not critically needed.
<br><br>
<b>Recommended</b>:<br>
Items which supplement subject coverage in the collection. Items will be purchased as funds allow.
<br><br>
  </span>
</div>

</div>
<!-- -->






<div class="radiobutton" style="clear:left;float:left; width: 50%;">
<asp:RadioButtonList ID="rblPriority" runat="server" RepeatDirection="Vertical"   title="Please let us know the level of priority for this purchase">
<asp:ListItem Text="Essential" Value="Essential" />
<asp:ListItem Text="Highly Recommended" Value="Highly Recommended" />
<asp:ListItem Text="Recommended" Value="Recommended" />
</asp:RadioButtonList> 
<asp:requiredfieldvalidator id="rfPriority" runat="server" errormessage="Required" CssClass="required" controltovalidate="rblPriority" SetFocusOnError="True" ></asp:requiredfieldvalidator>       
</div>
<br /> 

<!-- end Priority Level section -->








<!------ Placed on Hold Section ---->
<div class="radiobutton" style="clear:both;float:left;">
<label><span class="required">*</span>Would you like this item placed on hold for you?</label>
<asp:RadioButtonList ID="rblPlacedOnHold" runat="server" RepeatDirection="Horizontal" title="Would you like this item placed on hold for you">
<asp:ListItem Text="Yes" Value="Yes" />
<asp:ListItem Text="No" Value="No" />
</asp:RadioButtonList>
<p><em>Items will be held for two weeks at the Milne Library Services Desk.</em></p>    
<asp:requiredfieldvalidator id="rflPlacedOnHold" runat="server" errormessage="Required" CssClass="required" controltovalidate="rblPlacedOnHold" SetFocusOnError="True"></asp:requiredfieldvalidator>       
</div>
<%--<asp:Panel runat="server" ID="UsedInClassPanel" Visible="false"> 
<label>If so, for which semesters or ongoing semesters? </label><asp:TextBox ID="txtWhichSemesters" runat="server" size="25" maxlength="55" Width="300" title="Which Semesters" /><br />
</asp:Panel>--%>
<!--- ---->



<fieldset>
<legend style="font-size:1.2em;">Course Reserve Information</legend>
<p>If this item is for course reserve, please complete the following information:</p>  
<label> Course Name: </label>&nbsp;
<asp:TextBox ID="txtCourseName" runat="server" size="25" maxlength="80" style="width: 80%;"   title="Course Name"/>

<br />
<label> Course Number: </label>&nbsp;
<asp:TextBox ID="txtCourseNumber" runat="server" size="10" maxlength="8" style="width: 48%;"  title="Course Number"/>

<br />
<label> Semester: </label>&nbsp;
<asp:TextBox ID="txtSemester" runat="server" size="10" maxlength="15"  style="width: 50%;"  title="Semester:"/>
</fieldset>

<br />

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
<p>Please send any questions to <strong>Milne Library Acquisitions</strong> at  <span class="email"><a href="Mailto:milne@geneseo.edu">milne@geneseo.edu</a>.</span></p>
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