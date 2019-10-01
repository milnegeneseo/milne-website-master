<%@ Page Title="" Language="C#" MasterPageFile="~/Requests/RequestsMasterPage.master" AutoEventWireup="true" CodeFile="CirculatingReserves.aspx.cs" Inherits="Requests_CirculatingReserves" validateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<link href="https://librarydataportal.geneseo.edu/External/js/jquery-ui-1.10.3.custom-milne.min.css" rel="stylesheet" />
<link href="../Scripts/jquery-ui-milne.css" rel="stylesheet" />
    <script src="../Scripts/jquery-ui.js"></script> 
<%--        <script src="../Scripts/jquery.ui.timepicker.js"></script>--%>
<%--    <script type="text/javascript">
        $(document).ready(function () {
            $('#<%= txtDate.ClientID %>').attr('readonly', 'readonly').datepicker({ });
        });
    </script>--%>
<style>
.coursereserves{
  table-layout: fixed;
  width: 100%;
/*white-space: wrap; */
  text-align:left;
/*vertical-align:top;*/
padding: 5px;
}
.coursereserves td {
 /* white-space: wrap; */
  overflow: hidden;
 /* word-wrap: break-word; 
  text-overflow: ellipsis;*/
border: 0px none;
}


.coursereserves th {
vertical-align:bottom;
padding: 0px 10px 10px 10px;
        text-align: left;
background-color: #F1F8FC !important;

    }

tr:nth-child(even) {
                   /* background-color: #F1F8FC;*/
                    background-color:  #FFFFFF;
                    border: 0px none;
                }

tr:nth-child(odd) {
                  /* background-color: #f8f8f3;*/ 
                  background-color:  #FFF9EC;
                     border: 0px none;
                }
 

.rbl tr:nth-child(even) {

                    background-color:  none !important;
                    background: transparent !important;
                }

.rbl tr:nth-child(odd) {
                    background-color:  none !important;
                    background: transparent !important;
                }


   

/* Column widths are based on these cells */


tr.coursereserves .row-Author {
  width: 25%;

        white-space: nowrap;
    }


tr.coursereserves .row-Title {
  width: 25%;
    
        white-space: nowrap;
    }


tr.coursereserves .row-ISBN {
  width: 10%;
   
        white-space: nowrap;
    }


tr.coursereserves .row-ReserveType {
min-width:300px;
max-width:450px;
  white-space: nowrap !important;
    }

tr.coursereserves .row-NumberCopies {
 min-width: 80px; 
    max-width: 100px;

}

tr.coursereserves .row-MaterialType {
min-width:300px;
max-width:500px;
 white-space: nowrap !important;
    }


tr.coursereserves .row-PersonalCopy {
  /*width: 10%;*/
  max-width: 200px;
  word-wrap: break-word;

    }

tr.coursereserves .row-Donation {
  /*width: 10%;*/
  max-width: 200px;
  word-wrap: break-word;

    }

@media only screen and (max-width: 960px) {
.coursereserves th, th{
font-size: 0.8em !important;
    }

tr.coursereserves .row-ReserveType,
tr.coursereserves .row-MaterialType {
 word-wrap: break-word !important;
    }


}

    .auto-style1 {
        width: 128px;
    }
    .auto-style2 {
        width: 129px;
    }
    .auto-style3 {
        width: 162px;
    }

</style>




<div id="rightSideContent" >
        <div class="breadcrumb" style="margin:20px 0px 0px 0px;"><a href="https://www.geneseo.edu/">SUNY Geneseo</a> &raquo; <a href="https://www.geneseo.edu/library">Milne Library</a> &raquo; <a href="https://librarydataportal.geneseo.edu/Requests/CirculatingReserves.aspx" style="color:#b85533 !important;">Course Reserves</a></div>

    <h1>Put Course Materials on Reserve</h1> 
    
    <p class="subheading">All course reserve materials must be returned to the Service Desk and are NOT renewable. The reserves are arranged by course instructor. </p>
    <p class="subheading">Please note: </p>
    <ul class="subheading">
    <li>All course reserve materials are NOT renewable. </li>
    <li>Reserves are arranged by course instructor. </li>
   <li> After submitting the form, materials must be turned in to the Service Desk. </li>
   <li> All reserve materials are removed at the end of the Spring semester. Any personal copies will be returned through campus mail.</li>
    </ul>
        <p class="subheading"><b>Please allow at least 3 business days for item to be placed on reserve. </b></p> <br />
  
    <span class="required">* Indicates required field.</span><br /> <br />

<fieldset>
<legend>Instructor Information</legend>

<%--    <asp:HiddenField ID="hfText" runat="server" /> <asp:TextBox ID="txtHF" runat="server" Visible = "false"></asp:TextBox>--%>
<asp:HiddenField ID="hfRequestID" runat="server"  /> <asp:TextBox ID="txtRequestID" runat="server" Visible = "false"></asp:TextBox>

    <label><asp:requiredfieldvalidator id="rfFirstName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtFirstName" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> First Name: </label> <asp:TextBox runat="server" size="25" maxlength="25" ID="txtFirstName" title="First Name" /> <br />
     
    <label><asp:requiredfieldvalidator id="rfLastName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtLastName" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Last Name: </label><asp:TextBox runat="server" size="25" maxlength="25" ID="txtLastName" title="Last Name" /> <br />
  
    <label><asp:requiredfieldvalidator id="rfEmail" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtEmail" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Email Address: </label><asp:TextBox runat="server" size="25" maxlength="30" ID="txtEmail" title="Email" />
    <asp:RegularExpressionValidator ID="reEmail" ErrorMessage="Invalid Email Address" CssClass="required" ControlToValidate="txtEmail" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" /><br />

<%--    <label><asp:requiredfieldvalidator id="rfDepartment" runat="server" errormessage="Required" CssClass="required" controltovalidate="ddlDepartmentActive" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Department: </label><asp:DropDownList runat="server" Width="150px" ID="ddlDepartmentActive" title="Select Department" /> <br /> --%>

    <label><asp:requiredfieldvalidator id="rfPhone" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtPhone" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Office Phone Number: </label><asp:TextBox ID="txtPhone" runat="server" size="25" maxlength="25" title="Office Phone Number" Width="30%" /> <br /> 

</fieldset> <br />

<fieldset>
<legend>Course Information</legend>

    <p style="color: #008000;">Note: All reserve materials are removed at the end of the Spring semester. Any personal copies will be returned through campus mail. </p>

    <label><asp:requiredfieldvalidator id="rfSemester" runat="server" errormessage="Required" CssClass="required" controltovalidate="ddlSemester" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp;<span class="required">*</span> Keep material on reserve until: </label>
    <asp:DropDownList ID="ddlSemester" runat="server" title="Semester">
        <asp:ListItem Value="" Text="--Select One--" />
        <asp:ListItem Value="End of Summer 2019" Text="End of Summer 2019" title="End of Summer 2019" />
        <asp:ListItem Value="End of Fall 2019" Text="End of Fall 2019" title="End of Fall 2019" />
        <asp:ListItem Value="End of Spring 2020" Text="End of Spring 2020" title="End of Spring 2020" />
        <asp:ListItem Value="End of Summer 2020" Text="End of Summer 2020" title="End of Summer 2020" />
    </asp:DropDownList> <br />




<%--    <label><asp:requiredfieldvalidator id="rfDate" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtDate" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Keep material on reserve until: </label>
        <asp:TextBox CssClass="date" ID="txtDate" runat="server" size="11" maxlength="11" title="keep material on reserve until date selected" Width="30%"/>&nbsp;
        <asp:RegularExpressionValidator ID="reDate" runat="server" CssClass="required" ControlToValidate="txtDate" ErrorMessage="Not a valid date (mm/dd/yyyy)" SetFocusOnError="True" ValidationExpression="((^(10|12|0?[13578])([/])(3[01]|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(11|0?[469])([/])(30|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(2[0-8]|1[0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(29)([/])([2468][048]00)$)|(^(0?2)([/])(29)([/])([3579][26]00)$)|(^(0?2)([/])(29)([/])([1][89][0][48])$)|(^(0?2)([/])(29)([/])([2-9][0-9][0][48])$)|(^(0?2)([/])(29)([/])([1][89][2468][048])$)|(^(0?2)([/])(29)([/])([2-9][0-9][2468][048])$)|(^(0?2)([/])(29)([/])([1][89][13579][26])$)|(^(0?2)([/])(29)([/])([2-9][0-9][13579][26])$))"></asp:RegularExpressionValidator> <br />--%>

    <label><asp:requiredfieldvalidator id="rfCourseTitle" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtCourseTitle" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Course Name: </label><asp:TextBox ID="txtCourseTitle" runat="server" size="25" maxlength="75"  title="Course Title" /><br />

    <label><asp:requiredfieldvalidator id="rfCourseNumber" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtCoursenumber" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Course Number (ABCD 123 Format): </label><asp:TextBox ID="txtCourseNumber" runat="server" size="8" maxlength="8" title="Course Number" Width="30%" />&nbsp;<asp:RegularExpressionValidator ID="reCourseNumber" SetFocusOnError="true" CssClass="required" ValidationExpression="^[A-Z&]{4} [0-9]{3}$" ErrorMessage="Course Number should be in 'ABCD 123' format" ControlToValidate="txtCourseNumber" runat="server" title="Course Number" /><br />

    <label><asp:requiredfieldvalidator id="rfSection" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtSection" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span>Section: </label><asp:TextBox ID="txtSection" runat="server" size="8" maxlength="8"  title="Course Section" Width="30%" />&nbsp;
    <asp:RegularExpressionValidator ID="reSection" runat="server" CssClass="required" ControlToValidate="txtSection" ErrorMessage="Numbers only" SetFocusOnError="True" ValidationExpression="((^[0-9]+$))"></asp:RegularExpressionValidator><br />


</fieldset> <br />

<fieldset>
<legend>Material Information</legend>

    <table class="coursereserves">
    <tbody>
        <tr>
            <th class="row-Author">
                <span class="required">*</span> Author</th>
            <th class="row-Title">
                <span class="required">*</span> Title</th>
            <th class="auto-style3">
                <span> </span> ISBN<br />(No hyphens or spaces, numbers and "x" only)</th>
            <th class="row-ReserveType" text-align: left;">
                <span class="required">*</span> Reserve Type</th> 
            <th class="auto-style2" style="word-wrap: break-word; text-align: left;">
                <span class="required">*</span> Number of Copies</th>
            <th class="row-MaterialType">
                <span class="required">*</span> 
                Material
                Type</th>
                
            <th class="row-PersonalCopy" style="word-wrap: break-word;"> Are you giving us<br />
                a personal copy?</th>
            <th class="row-Donation" style="word-wrap: break-word;"> If YES, is this<br />
                a donation?</th>
        </tr>
        <tr>
            <td><asp:requiredfieldvalidator id="rfAuthor" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtAuthor" SetFocusOnError="True" ></asp:requiredfieldvalidator><asp:TextBox ID="txtAuthor" runat="server" size="20" maxlength="75" title="Author" ></asp:TextBox></td>
            <td><asp:requiredfieldvalidator id="rfTitle" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtTitle" SetFocusOnError="True" ></asp:requiredfieldvalidator><asp:TextBox ID="txtTitle" runat="server" size="30" maxlength="75" title="Title"></asp:TextBox></td>
<%--            <td><asp:RegularExpressionValidator ID="reISBN" runat="server" CssClass="required" ControlToValidate="txtISBN" ErrorMessage="Numbers only" SetFocusOnError="True" ValidationExpression="((^[0-9]+$))"></asp:RegularExpressionValidator>&nbsp;<asp:TextBox ID="txtISBN" runat="server" size="20" maxlength="13" title="ISBN"></asp:TextBox></td>--%>
            <td class="auto-style3"><asp:RegularExpressionValidator ID="reISBN" runat="server" CssClass="required" ControlToValidate="txtISBN" ErrorMessage="Numbers, X only" SetFocusOnError="True" ValidationExpression="((^[0-9xX]+$))"></asp:RegularExpressionValidator>&nbsp;<asp:TextBox ID="txtISBN" runat="server" size="20" maxlength="13" title="ISBN"></asp:TextBox></td>


            <td><asp:requiredfieldvalidator id="rfReserve" runat="server" errormessage="Required" CssClass="required" controltovalidate="ddlReserve" SetFocusOnError="True" ></asp:requiredfieldvalidator><asp:DropDownList ID="ddlReserve" runat="server" title="Select Reserve Type" Width="80%">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="4-hour" title="Four Hour Reserve">4-hour reserve</asp:ListItem>
                    <asp:ListItem Value="1-day" title="One Day Reserve">1-day reserve</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style1"><asp:requiredfieldvalidator id="rfCopies" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtCopies" SetFocusOnError="True" ></asp:requiredfieldvalidator>
                <br /><asp:TextBox ID="txtCopies" runat="server" size="2" maxlength="2" title="Copy Formats" Width="50%"></asp:TextBox></td>
            <td><asp:requiredfieldvalidator id="reMaterialType" runat="server" errormessage="Required" CssClass="required" controltovalidate="ddlMaterial" SetFocusOnError="True" ></asp:requiredfieldvalidator><asp:DropDownList ID="ddlMaterial" runat="server" title="Select Text Copy Format" Width="80%">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="Book" title="Book">Book</asp:ListItem>
                    <asp:ListItem Value="DVD" title="DVD">DVD</asp:ListItem>
                    <asp:ListItem Value="CD" title="CD">CD</asp:ListItem>
                    <asp:ListItem Value="Video" title="Video">Video</asp:ListItem>
                    <asp:ListItem Value="Other" title="Other">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
    <asp:RadioButtonList ID="rblPersonalCopy" runat="server" CssClass="rbl" RepeatDirection="Vertical">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" Selected="True" />
    </asp:RadioButtonList>  </td>
            <td>
         <asp:RadioButtonList ID="rblIsDonation" runat="server" CssClass="rbl" RepeatDirection="Vertical" >
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" Selected="True" />
    </asp:RadioButtonList>  </td>
        </tr>

        <tr>
            <td>
                <br />
                <asp:TextBox ID="txtAuthor2" runat="server" size="20" maxlength="75" title="Author 2"></asp:TextBox></td>
            <td>
                <br />
                <asp:TextBox ID="txtTitle2" runat="server" size="30" maxlength="75" title="Title 2"></asp:TextBox></td>
            <td class="auto-style3"><asp:RegularExpressionValidator ID="reISBN2" runat="server" CssClass="required" ControlToValidate="txtISBN2" ErrorMessage="Numbers, X only" SetFocusOnError="True" ValidationExpression="((^[0-9xX]+$))"></asp:RegularExpressionValidator><asp:TextBox ID="txtISBN2" runat="server" size="20" maxlength="13" title="ISBN 2"></asp:TextBox>
</td>
            <td>
                <br />
                <asp:DropDownList ID="ddlReserve2" runat="server" title="Select Reserve Type for Book 2" Width="80%">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="4-hour" title="Four Hour Reserve">4-hour reserve</asp:ListItem>
                    <asp:ListItem Value="1-day" title="One Day Reserve">1-day reserve</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style1">
                <br />
                <asp:TextBox ID="txtCopies2" runat="server" size="2" maxlength="2" title="Copy Formats for Book 2" Width="50%"></asp:TextBox></td>
            <td >
                <br />
                <asp:DropDownList ID="ddlMaterial2" runat="server" title="Select Text Copy Format for Book 2" Width="80%">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="Book" title="Book">Book</asp:ListItem>
                    <asp:ListItem Value="DVD" title="DVD">DVD</asp:ListItem>
                    <asp:ListItem Value="CD" title="CD">CD</asp:ListItem>
                    <asp:ListItem Value="Video" title="Video">Video</asp:ListItem>
                    <asp:ListItem Value="Other" title="Other">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>  
<asp:RadioButtonList ID="rblPersonalCopy2" runat="server" CssClass="rbl" RepeatDirection="Vertical" >
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" Selected="True" />
    </asp:RadioButtonList>  </td>
            <td>
       <asp:RadioButtonList ID="rblIsDonation2" runat="server" CssClass="rbl" RepeatDirection="Vertical">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" Selected="True" />
    </asp:RadioButtonList>  </td>
        </tr>

        
        <tr>
            <td>
                <br />
                <asp:TextBox ID="txtAuthor3" runat="server" size="20" maxlength="75" title="Author 3"></asp:TextBox></td>
            <td>
                <br />
                <asp:TextBox ID="txtTitle3" runat="server" size="30" maxlength="75" title="Title 3"></asp:TextBox></td>
            <td class="auto-style3"><asp:RegularExpressionValidator ID="reISBN3" runat="server" CssClass="required" ControlToValidate="txtISBN3" ErrorMessage="Numbers, X only" SetFocusOnError="True" ValidationExpression="((^[0-9xX]+$))"></asp:RegularExpressionValidator><asp:TextBox ID="txtISBN3" runat="server" size="20" maxlength="13" title="ISBN 3"></asp:TextBox>
</td>
            <td>
                <br />
                <asp:DropDownList ID="ddlReserve3" runat="server" title="Select Reserve Type for Book 3" Width="80%">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="4-hour" title="Four Hour Reserve">4-hour reserve</asp:ListItem>
                    <asp:ListItem Value="1-day" title="One Day Reserve">1-day reserve</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style1">
                <br />
                <asp:TextBox ID="txtCopies3" runat="server" size="2" maxlength="2" title="Copy Formats for Book 3" Width="50%"></asp:TextBox></td>
            <td >
                <br />
                <asp:DropDownList ID="ddlMaterial3" runat="server" title="Select Text Copy Format for Book 3" Width="80%">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="Book" title="Book">Book</asp:ListItem>
                    <asp:ListItem Value="DVD" title="DVD">DVD</asp:ListItem>
                    <asp:ListItem Value="CD" title="CD">CD</asp:ListItem>
                    <asp:ListItem Value="Video" title="Video">Video</asp:ListItem>
                    <asp:ListItem Value="Other" title="Other">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>    <asp:RadioButtonList ID="rblPersonalCopy3" runat="server" CssClass="rbl" RepeatDirection="Vertical">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" Selected="True" />
    </asp:RadioButtonList>  </td>
            <td><asp:RadioButtonList ID="rblIsDonation3" runat="server" CssClass="rbl" RepeatDirection="Vertical">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" Selected="True" />
    </asp:RadioButtonList></td>
        </tr>
        
        <tr>
            <td>
                <br />
                <asp:TextBox ID="txtAuthor4" runat="server" size="20" maxlength="75" title="Author 4"></asp:TextBox></td>
            <td>
                <br />
                <asp:TextBox ID="txtTitle4" runat="server" size="30" maxlength="75" title="Title 4"></asp:TextBox></td>
            <td class="auto-style3"><asp:RegularExpressionValidator ID="reISBN4" runat="server" CssClass="required" ControlToValidate="txtISBN4" ErrorMessage="Numbers, X only" SetFocusOnError="True" ValidationExpression="((^[0-9xX]+$))"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="txtISBN4" runat="server" size="20" maxlength="13" title="ISBN 4"></asp:TextBox></td>
            <td>
                <br />
                <asp:DropDownList ID="ddlReserve4" runat="server" title="Select Reserve Type for Book 4" Width="80%">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="4-hour" title="Four Hour Reserve">4-hour reserve</asp:ListItem>
                    <asp:ListItem Value="1-day" title="One Day Reserve">1-day reserve</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style1">
                <br />
                <asp:TextBox ID="txtCopies4" runat="server" size="2" maxlength="2" title="Copy Formats for Book 4" Width="50%"></asp:TextBox></td>
            <td >
                <br />
                <asp:DropDownList ID="ddlMaterial4" runat="server" title="Select Text Copy Format for Book 4" Width="80%">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="Book" title="Book">Book</asp:ListItem>
                    <asp:ListItem Value="DVD" title="DVD">DVD</asp:ListItem>
                    <asp:ListItem Value="CD" title="CD">CD</asp:ListItem>
                    <asp:ListItem Value="Video" title="Video">Video</asp:ListItem>
                    <asp:ListItem Value="Other" title="Other">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>    <asp:RadioButtonList ID="rblPersonalCopy4" runat="server" CssClass="rbl" RepeatDirection="Vertical">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" Selected="True" />
    </asp:RadioButtonList>  </td>
            <td><asp:RadioButtonList ID="rblIsDonation4" runat="server" CssClass="rbl" RepeatDirection="Vertical" >
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" Selected="True" />
    </asp:RadioButtonList></td>
        </tr>        

        <tr>
            <td>
                <br />
                <asp:TextBox ID="txtAuthor5" runat="server" size="20" maxlength="75" title="Author 5"></asp:TextBox></td>
            <td>
                <br />
                <asp:TextBox ID="txtTitle5" runat="server" size="30" maxlength="75" title="Title 5"></asp:TextBox></td>
            <td class="auto-style3"><asp:RegularExpressionValidator ID="reISBN5" runat="server" CssClass="required" ControlToValidate="txtISBN5" ErrorMessage="Numbers, X only" SetFocusOnError="True" ValidationExpression="((^[0-9xX]+$))"></asp:RegularExpressionValidator>
                <asp:TextBox ID="txtISBN5" runat="server" size="20" maxlength="13" title="ISBN 5"></asp:TextBox></td>
            <td>
                <br />
                <asp:DropDownList ID="ddlReserve5" runat="server" title="Select Reserve Type for Book 5" Width="80%">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="4-hour" title="Four Hour Reserve">4-hour reserve</asp:ListItem>
                    <asp:ListItem Value="1-day" title="One Day Reserve">1-day reserve</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style1">
                <br />
                <asp:TextBox ID="txtCopies5" runat="server" size="2" maxlength="2" title="Copy Formats for Book 5" Width="50%"></asp:TextBox></td>
            <td >
                <br />
                <asp:DropDownList ID="ddlMaterial5" runat="server" title="Select Text Copy Format for Book 5" Width="80%">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="Book" title="Book">Book</asp:ListItem>
                    <asp:ListItem Value="DVD" title="DVD">DVD</asp:ListItem>
                    <asp:ListItem Value="CD" title="CD">CD</asp:ListItem>
                    <asp:ListItem Value="Video" title="Video">Video</asp:ListItem>
                    <asp:ListItem Value="Other" title="Other">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>    <asp:RadioButtonList ID="rblPersonalCopy5" runat="server" CssClass="rbl" RepeatDirection="Vertical">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" Selected="True" />
    </asp:RadioButtonList>  </td>
            <td><asp:RadioButtonList ID="rblIsDonation5" runat="server" CssClass="rbl" RepeatDirection="Vertical">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" Selected="True" />
    </asp:RadioButtonList></td>
        </tr>        


<%--<asp:Panel runat="server" ID="panel6" Visible="false">--%>

         <tr>
            <td>
                <br />
                <asp:TextBox ID="txtAuthor6" runat="server" size="20" maxlength="75" title="Author 6"></asp:TextBox></td>
            <td>
                <br />
                <asp:TextBox ID="txtTitle6" runat="server" size="30" maxlength="75" title="Title 6"></asp:TextBox></td>
            <td class="auto-style3"><asp:RegularExpressionValidator ID="reISBN6" runat="server" CssClass="required" ControlToValidate="txtISBN6" ErrorMessage="Numbers, X only" SetFocusOnError="True" ValidationExpression="((^[0-9xX]+$))"></asp:RegularExpressionValidator><asp:TextBox ID="txtISBN6" runat="server" size="20" maxlength="13" title="ISBN 6"></asp:TextBox></td>
            <td>
                <br />
                <asp:DropDownList ID="ddlReserve6" runat="server" title="Select Reserve Type for Book 6" Width="80%">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="4-hour" title="Four Hour Reserve">4-hour reserve</asp:ListItem>
                    <asp:ListItem Value="1-day" title="One Day Reserve">1-day reserve</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style1">
                <br />
                <asp:TextBox ID="txtCopies6" runat="server" size="2" maxlength="2" title="Copy Formats for Book 6" Width="50%"></asp:TextBox></td>
            <td >
                <br />
                <asp:DropDownList ID="ddlMaterial6" runat="server" title="Select Text Copy Format for Book 6" Width="80%">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="Book" title="Book">Book</asp:ListItem>
                    <asp:ListItem Value="DVD" title="DVD">DVD</asp:ListItem>
                    <asp:ListItem Value="CD" title="CD">CD</asp:ListItem>
                    <asp:ListItem Value="Video" title="Video">Video</asp:ListItem>
                    <asp:ListItem Value="Other" title="Other">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>    <asp:RadioButtonList ID="rblPersonalCopy6" runat="server" CssClass="rbl" RepeatDirection="Vertical">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" Selected="True" />
    </asp:RadioButtonList>  </td>
            <td><asp:RadioButtonList ID="rblIsDonation6" runat="server" CssClass="rbl" RepeatDirection="Vertical">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" Selected="True" />
    </asp:RadioButtonList></td>
        </tr>       
<%-- </asp:Panel>

<asp:Panel runat="server" ID="panel7" Visible="false">--%>        
         <tr>
            <td>
                <br />
                <asp:TextBox ID="txtAuthor7" runat="server" size="20" maxlength="75" title="Author 7"></asp:TextBox></td>
            <td>
                <br />
                <asp:TextBox ID="txtTitle7" runat="server" size="30" maxlength="75" title="Title 7"></asp:TextBox></td>
            <td class="auto-style3"><asp:RegularExpressionValidator ID="reISBN7" runat="server" CssClass="required" ControlToValidate="txtISBN7" ErrorMessage="Numbers, X only" SetFocusOnError="True" ValidationExpression="((^[0-9xX]+$))"></asp:RegularExpressionValidator>
                <asp:TextBox ID="txtISBN7" runat="server" size="20" maxlength="13" title="ISBN 7"></asp:TextBox></td>
            <td>
                <br />
                <asp:DropDownList ID="ddlReserve7" runat="server" title="Select Reserve Type for Book 7" Width="80%">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="4-hour" title="Four Hour Reserve">4-hour reserve</asp:ListItem>
                    <asp:ListItem Value="1-day" title="One Day Reserve">1-day reserve</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style1">
                <br />
                <asp:TextBox ID="txtCopies7" runat="server" size="2" maxlength="2" title="Copy Formats for Book 7" Width="50%"></asp:TextBox></td>
            <td >
                <br />
                <asp:DropDownList ID="ddlMaterial7" runat="server" title="Select Text Copy Format for Book 7" Width="80%">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="Book" title="Book">Book</asp:ListItem>
                    <asp:ListItem Value="DVD" title="DVD">DVD</asp:ListItem>
                    <asp:ListItem Value="CD" title="CD">CD</asp:ListItem>
                    <asp:ListItem Value="Video" title="Video">Video</asp:ListItem>
                    <asp:ListItem Value="Other" title="Other">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>    <asp:RadioButtonList ID="rblPersonalCopy7" runat="server" CssClass="rbl" RepeatDirection="Vertical">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" Selected="True" />
    </asp:RadioButtonList>  </td>
            <td><asp:RadioButtonList ID="rblIsDonation7" runat="server" CssClass="rbl" RepeatDirection="Vertical">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" Selected="True" />
    </asp:RadioButtonList></td>
        </tr>       
<%-- </asp:Panel>   
        
<asp:Panel runat="server" ID="Panel8" Visible="false">   --%>                
          <tr>
            <td>
                <br />
                <asp:TextBox ID="txtAuthor8" runat="server" size="20" maxlength="75" title="Author 8"></asp:TextBox></td>
            <td>
                <br />
                <asp:TextBox ID="txtTitle8" runat="server" size="30" maxlength="75" title="Title 8"></asp:TextBox></td>
            <td class="auto-style3"><asp:RegularExpressionValidator ID="reISBN8" runat="server" CssClass="required" ControlToValidate="txtISBN8" ErrorMessage="Numbers, X only" SetFocusOnError="True" ValidationExpression="((^[0-9xX]+$))"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="txtISBN8" runat="server" size="20" maxlength="13" title="ISBN 8"></asp:TextBox></td>
            <td>
                <br />
                <asp:DropDownList ID="ddlReserve8" runat="server" title="Select Reserve Type for Book 8" Width="80%">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="4-hour" title="Four Hour Reserve">4-hour reserve</asp:ListItem>
                    <asp:ListItem Value="1-day" title="One Day Reserve">1-day reserve</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style1">
                <br />
                <asp:TextBox ID="txtCopies8" runat="server" size="2" maxlength="2" title="Copy Formats for Book 8" Width="50%"></asp:TextBox></td>
            <td >
                <br />
                <asp:DropDownList ID="ddlMaterial8" runat="server" title="Select Text Copy Format for Book 8" Width="80%">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="Book" title="Book">Book</asp:ListItem>
                    <asp:ListItem Value="DVD" title="DVD">DVD</asp:ListItem>
                    <asp:ListItem Value="CD" title="CD">CD</asp:ListItem>
                    <asp:ListItem Value="Video" title="Video">Video</asp:ListItem>
                    <asp:ListItem Value="Other" title="Other">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>    <asp:RadioButtonList ID="rblPersonalCopy8" runat="server" CssClass="rbl" RepeatDirection="Vertical">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" Selected="True" />
    </asp:RadioButtonList>  </td>
            <td><asp:RadioButtonList ID="rblIsDonation8" runat="server" CssClass="rbl" RepeatDirection="Vertical">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" Selected="True" />
    </asp:RadioButtonList></td>
        </tr>       
<%-- </asp:Panel>          
 <asp:Panel runat="server" ID="Panel9" Visible="false">--%>       
           <tr>
            <td>
                <br />
                <asp:TextBox ID="txtAuthor9" runat="server" size="20" maxlength="75" title="Author 9"></asp:TextBox></td>
            <td>
                <br />
                <asp:TextBox ID="txtTitle9" runat="server" size="30" maxlength="75" title="Title 9"></asp:TextBox></td>
            <td class="auto-style3"><asp:RegularExpressionValidator ID="reISBN9" runat="server" CssClass="required" ControlToValidate="txtISBN9" ErrorMessage="Numbers, X only" SetFocusOnError="True" ValidationExpression="((^[0-9xX]+$))"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="txtISBN9" runat="server" size="20" maxlength="13" title="ISBN 9"></asp:TextBox></td>
            <td>
                <br />
                <asp:DropDownList ID="ddlReserve9" runat="server" title="Select Reserve Type for Book 9" Width="80%">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="4-hour" title="Four Hour Reserve">4-hour reserve</asp:ListItem>
                    <asp:ListItem Value="1-day" title="One Day Reserve">1-day reserve</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style1">
                <br />
                <asp:TextBox ID="txtCopies9" runat="server" size="2" maxlength="2" title="Copy Formats for Book 9" Width="50%"></asp:TextBox></td>
            <td >
                <br />
                <asp:DropDownList ID="ddlMaterial9" runat="server" title="Select Text Copy Format for Book 9" Width="80%">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="Book" title="Book">Book</asp:ListItem>
                    <asp:ListItem Value="DVD" title="DVD">DVD</asp:ListItem>
                    <asp:ListItem Value="CD" title="CD">CD</asp:ListItem>
                    <asp:ListItem Value="Video" title="Video">Video</asp:ListItem>
                    <asp:ListItem Value="Other" title="Other">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>    <asp:RadioButtonList ID="rblPersonalCopy9" runat="server" CssClass="rbl" RepeatDirection="Vertical">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" Selected="True" />
    </asp:RadioButtonList>  </td>
            <td><asp:RadioButtonList ID="rblIsDonation9" runat="server" CssClass="rbl" RepeatDirection="Vertical">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" Selected="True" />
    </asp:RadioButtonList></td>
        </tr>         
<%-- </asp:Panel>          
 <asp:Panel runat="server" ID="Panel10" Visible="false">   --%>        

            <tr>
            <td>
                <br />
                <asp:TextBox ID="txtAuthor10" runat="server" size="20" maxlength="75" title="Author 10"></asp:TextBox></td>
            <td>
                <br />
                <asp:TextBox ID="txtTitle10" runat="server" size="30" maxlength="75" title="Title 10"></asp:TextBox></td>
            <td class="auto-style3"><asp:RegularExpressionValidator ID="reISBN10" runat="server" CssClass="required" ControlToValidate="txtISBN10" ErrorMessage="Numbers, X only" SetFocusOnError="True" ValidationExpression="((^[0-9xX]+$))"></asp:RegularExpressionValidator><asp:TextBox ID="txtISBN10" runat="server" size="20" maxlength="13" title="ISBN 10"></asp:TextBox></td>
            <td>
                <br />
                <asp:DropDownList ID="ddlReserve10" runat="server" title="Select Reserve Type for Book 10" Width="80%">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="4-hour" title="Four Hour Reserve">4-hour reserve</asp:ListItem>
                    <asp:ListItem Value="1-day" title="One Day Reserve">1-day reserve</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style1">
                <br />
                <asp:TextBox ID="txtCopies10" runat="server" size="2" maxlength="2" title="Copy Formats for Book 10" Width="50%"></asp:TextBox></td>
            <td >
                <br />
                <asp:DropDownList ID="ddlMaterial10" runat="server" title="Select Text Copy Format for Book 10" Width="80%">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="Book" title="Book">Book</asp:ListItem>
                    <asp:ListItem Value="DVD" title="DVD">DVD</asp:ListItem>
                    <asp:ListItem Value="CD" title="CD">CD</asp:ListItem>
                    <asp:ListItem Value="Video" title="Video">Video</asp:ListItem>
                    <asp:ListItem Value="Other" title="Other">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>    <asp:RadioButtonList ID="rblPersonalCopy10" runat="server" CssClass="rbl" RepeatDirection="Vertical">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" Selected="True" />
    </asp:RadioButtonList>  </td>
            <td><asp:RadioButtonList ID="rblIsDonation10" runat="server" CssClass="rbl" RepeatDirection="Vertical">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" Selected="True" />
    </asp:RadioButtonList></td>
        </tr>           
<%--  </asp:Panel>   --%>       
 
 <asp:Panel runat="server" ID="Panel11" Visible="false">   --%>        

            <tr>
           <td><asp:TextBox ID="txtAuthor11" runat="server" size="20" maxlength="75" title="Author 11"></asp:TextBox></td>
            <td><asp:TextBox ID="txtTitle11" runat="server" size="30" maxlength="75" title="Title 11"></asp:TextBox></td>
            <td><asp:RegularExpressionValidator ID="reISBN11" runat="server" CssClass="required" ControlToValidate="txtISBN11" ErrorMessage="Numbers only" SetFocusOnError="True" ValidationExpression="((^[0-9]+$))"></asp:RegularExpressionValidator><asp:TextBox ID="txtISBN11" runat="server" size="20" maxlength="13" title="ISBN 11"></asp:TextBox></td>
            <td><asp:DropDownList ID="ddlReserve11" runat="server" title="Select Reserve Type for Book 11" Width="80%">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="4-hour" title="Four Hour Reserve">4-hour reserve</asp:ListItem>
                    <asp:ListItem Value="1-day" title="One Day Reserve">1-day reserve</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style1"><asp:TextBox ID="txtCopies11" runat="server" size="2" maxlength="2" title="Copy Formats for Book 11" Width="50%"></asp:TextBox></td>
            <td ><asp:DropDownList ID="ddlMaterial11" runat="server" title="Select Text Copy Format for Book 11" Width="80%">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="Book" title="Book">Book</asp:ListItem>
                    <asp:ListItem Value="DVD" title="DVD">DVD</asp:ListItem>
                    <asp:ListItem Value="CD" title="CD">CD</asp:ListItem>
                    <asp:ListItem Value="Video" title="Video">Video</asp:ListItem>
                    <asp:ListItem Value="Other" title="Other">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>    <asp:RadioButtonList ID="rblPersonalCopy11" runat="server" CssClass="rbl" RepeatDirection="Vertical">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" Selected="True" />
    </asp:RadioButtonList>  </td>
            <td><asp:RadioButtonList ID="rblIsDonation11" runat="server" CssClass="rbl" RepeatDirection="Vertical">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" Selected="True" />
    </asp:RadioButtonList></td>
        </tr>           
   </asp:Panel>       
        
  <asp:Panel runat="server" ID="Panel12" Visible="false">       

            <tr>
           <td><asp:TextBox ID="TxtAuthor12" runat="server" size="20" maxlength="75" title="Author 12"></asp:TextBox></td>
            <td><asp:TextBox ID="TxtTitle12" runat="server" size="30" maxlength="75" title="Title 12"></asp:TextBox></td>
            <td><asp:RegularExpressionValidator ID="reISBN12" runat="server" CssClass="required" ControlToValidate="txtISBN12" ErrorMessage="Numbers only" SetFocusOnError="True" ValidationExpression="((^[0-9]+$))"></asp:RegularExpressionValidator><asp:TextBox ID="TextBox3" runat="server" size="20" maxlength="13" title="ISBN 11"></asp:TextBox></td>
            <td><asp:DropDownList ID="ddlReserve12" runat="server" title="Select Reserve Type for Book 11" Width="80%">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="4-hour" title="Four Hour Reserve">4-hour reserve</asp:ListItem>
                    <asp:ListItem Value="1-day" title="One Day Reserve">1-day reserve</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style1"><asp:TextBox ID="TxtCopies12" runat="server" size="2" maxlength="2" title="Number of Copies of Item 12" Width="50%"></asp:TextBox></td>
            <td ><asp:DropDownList ID="ddlMaterial12" runat="server" title="Select Text Copy Format for Book 12" Width="80%">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="Book" title="Book">Book</asp:ListItem>
                    <asp:ListItem Value="DVD" title="DVD">DVD</asp:ListItem>
                    <asp:ListItem Value="CD" title="CD">CD</asp:ListItem>
                    <asp:ListItem Value="Video" title="Video">Video</asp:ListItem>
                    <asp:ListItem Value="Other" title="Other">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>    <asp:RadioButtonList ID="rblPersonalCopy12" runat="server" CssClass="rbl" RepeatDirection="Vertical">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" Selected="True" />
    </asp:RadioButtonList>  </td>
            <td><asp:RadioButtonList ID="rblIsDonation12" runat="server" CssClass="rbl" RepeatDirection="Vertical">
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" Selected="True" />
    </asp:RadioButtonList></td>
        </tr>           
   </asp:Panel>              
        
        
        
        
        
                  
        </tbody>
    </table>

</fieldset> <br />

<fieldset>
<legend>Additional Remarks</legend>
    <br />
<div style="float:left;">
    <b>Additional comments: </b>
</div>
<div style="float:left;clear:left;"><asp:TextBox ID="txtRemarks" runat="server" Height="75px" TextMode="MultiLine" title="Additional Comments"  Width="650px"/></br>
    <asp:Button Text="Submit" ID="btnSubmit" OnClick="btnSubmit_Click" runat="server" class=""/>&nbsp;
    <asp:Button Text="Clear Form" ID="CancelButton" runat="server" CausesValidation="False" CommandName="Reset" OnClick="CancelButton_Click" />
</div>
    </fieldset>

    <asp:Label ID="lblErrorMessage" runat="server" />

    </div>

</asp:Content>