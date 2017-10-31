<%@ Page Title="" Language="C#" MasterPageFile="~/Requests/RequestsMasterPage.master" AutoEventWireup="true" CodeFile="CirculatingReserves.aspx.cs" Inherits="Requests_CirculatingReserves" validateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<link href="https://eres.geneseo.edu/milne-styles-js/js/jquery-ui-1.10.3.custom-milne.min.css" rel="stylesheet" />
<link href="https://intranetlib.geneseo.edu/Dataportal/Scripts/jquery-ui-milne.css" rel="stylesheet" />
<script src="https://intranetlib.geneseo.edu/Dataportal/Scripts/jquery-ui.js"></script> 
    <script type="text/javascript">
        $(document).ready(function () {
            $('#<%= txtDate.ClientID %>').attr('readonly', 'readonly').datepicker({ });
        });
    </script>

<div id="rightSideContent" >
        <div class="breadcrumb" style="margin:20px 0px 0px 0px;"><a href="https://www.geneseo.edu/">SUNY Geneseo</a> &raquo; <a href="https://www.geneseo.edu/library">Milne Library</a> &raquo; <a href="https://www.geneseo.edu/library/requests-services">Requests &amp; Services</a> &raquo; <a href="http://intranetlib.geneseo.edu/DataPortal/Requests/CirculatingReserves.aspx" style="color:#b85533 !important;">Course Reserves</a></div>

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

    <asp:HiddenField ID="hfText" runat="server" /> <asp:TextBox ID="txtHF" runat="server" Visible = "false"></asp:TextBox>

    <label><asp:requiredfieldvalidator id="rfFirstName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtFirstName" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> First Name: </label> <asp:TextBox runat="server" size="25" maxlength="25" ID="txtFirstName" title="First Name" /> <br />
     
    <label><asp:requiredfieldvalidator id="rfLastName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtLastName" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Last Name: </label><asp:TextBox runat="server" size="25" maxlength="25" ID="txtLastName" title="Last Name" /> <br />
  
    <label><asp:requiredfieldvalidator id="rfEmail" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtEmail" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Email Address: </label><asp:TextBox runat="server" size="25" maxlength="25" ID="txtEmail" title="Email" />
    <asp:RegularExpressionValidator ID="reEmail" ErrorMessage="Invalid Email Address" CssClass="required" ControlToValidate="txtEmail" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" /><br />

    <label><asp:requiredfieldvalidator id="rfDepartment" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtDepartment" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Department: </label><asp:TextBox ID="txtDepartment" runat="server" size="25" maxlength="25" title="Department" /> <br /> 

    <label><asp:requiredfieldvalidator id="rfPhone" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtPhone" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Office Phone Number: </label><asp:TextBox ID="txtPhone" runat="server" size="25" maxlength="25" title="Office Phone Number" /> <br /> 

</fieldset> <br />

<fieldset>
<legend>Course Information</legend>

    <p style="color: #008000; font-size: 12px;">Note: All reserve materials are removed at the end of the Spring semester. Any personal copies will be returned through campus mail. </p>
    <label><asp:requiredfieldvalidator id="rfDate" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtDate" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Keep material on reserve until: </label>
        <asp:TextBox CssClass="date" ID="txtDate" runat="server" size="11" maxlength="11" title="keep material on reserve until date selected"/>&nbsp;
        <asp:RegularExpressionValidator ID="reDate" runat="server" CssClass="required" ControlToValidate="txtDate" ErrorMessage="Not a valid date (mm/dd/yyyy)" SetFocusOnError="True" ValidationExpression="((^(10|12|0?[13578])([/])(3[01]|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(11|0?[469])([/])(30|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(2[0-8]|1[0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(29)([/])([2468][048]00)$)|(^(0?2)([/])(29)([/])([3579][26]00)$)|(^(0?2)([/])(29)([/])([1][89][0][48])$)|(^(0?2)([/])(29)([/])([2-9][0-9][0][48])$)|(^(0?2)([/])(29)([/])([1][89][2468][048])$)|(^(0?2)([/])(29)([/])([2-9][0-9][2468][048])$)|(^(0?2)([/])(29)([/])([1][89][13579][26])$)|(^(0?2)([/])(29)([/])([2-9][0-9][13579][26])$))"></asp:RegularExpressionValidator> <br />

    <label><asp:requiredfieldvalidator id="rfCourseTitle" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtCourseTitle" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Course Name: </label><asp:TextBox ID="txtCourseTitle" runat="server" size="25" maxlength="75"  title="Course Title" /><br />

    <label><asp:requiredfieldvalidator id="rfCourseNumber" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtCoursenumber" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span> Course Number (ABCD 123 Format): </label><asp:TextBox ID="txtCourseNumber" runat="server" size="8" maxlength="8" title="Course Number" />&nbsp;<asp:RegularExpressionValidator ID="reCourseNumber" SetFocusOnError="true" CssClass="required" ValidationExpression="^[A-Z]{4} [0-9]{3}$" ErrorMessage="Course Number should be in 'ABCD 123' format" ControlToValidate="txtCourseNumber" runat="server" title="Course Number" /><br />

    <label><asp:requiredfieldvalidator id="rfSection" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtSection" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp; <span class="required">*</span>Section: </label><asp:TextBox ID="txtSection" runat="server" size="8" maxlength="8"  title="Course Section" />&nbsp;
                    <asp:RegularExpressionValidator ID="reSection" runat="server" CssClass="required" ControlToValidate="txtSection" ErrorMessage="Numbers only" SetFocusOnError="True" ValidationExpression="((^[0-9]+$))"></asp:RegularExpressionValidator><br />

    <label><asp:requiredfieldvalidator id="rfSemester" runat="server" errormessage="Required" CssClass="required" controltovalidate="ddlSemester" SetFocusOnError="True"></asp:requiredfieldvalidator>&nbsp;<span class="required">*</span> Submitted for: </label>
    <asp:DropDownList ID="ddlSemester" runat="server" title="Semester">
        <asp:ListItem Value="" Text="--Select One--" />
        <asp:ListItem Value="Summer 2017" Text="Summer 2017" title="Summer 2017" />
        <asp:ListItem Value="Fall 2017" Text="Fall 2017" title="Fall 2017" />
        <asp:ListItem Value="Spring 2018" Text="Spring 2018" title="Fall 2018" />
        <asp:ListItem Value="Summer 2018" Text="Summer 2018" title="Summer 2018" />
    </asp:DropDownList> <br />
</fieldset> <br />

<fieldset>
<legend>Material Information</legend>

    <table style="width: 100%;">
    <tbody>
        <tr>
            <th style="height: 23px; text-align: justify; width: 176px;"><asp:requiredfieldvalidator id="rfAuthor" runat="server" errormessage="" CssClass="required" controltovalidate="txtAuthor" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp;<span class="required">*</span> Author</th>
            <th style="width: 235px; height: 23px; text-align: justify;"><asp:requiredfieldvalidator id="rfTitle" runat="server" errormessage="" CssClass="required" controltovalidate="txtTitle" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp;<span class="required">*</span> Title</th>
            <th style="width: 187px; height: 23px; text-align: justify;">ISBN</th>
            <th style="height: 23px; width: 150px; text-align: justify;"><asp:requiredfieldvalidator id="rfReserve" runat="server" errormessage="" CssClass="required" controltovalidate="ddlReserve" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp;<span class="required">*</span> Reserve Type</th>
            <th style="height: 23px; width: 148px; text-align: center;"><asp:requiredfieldvalidator id="rfCopies" runat="server" errormessage="" CssClass="required" controltovalidate="txtCopies" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp;<span class="required">*</span> Number of Copies</th>
            <th style="height: 23px; text-align: justify;"><asp:requiredfieldvalidator id="rfMaterial" runat="server" errormessage="" CssClass="required" controltovalidate="ddlMaterial" SetFocusOnError="True" ></asp:requiredfieldvalidator>&nbsp;<span class="required">*</span> Material Type</th>
        </tr>
        <tr>
            <td style="width: 176px"><asp:TextBox ID="txtAuthor" runat="server" size="20" maxlength="75" title="Author" ></asp:TextBox></td>
            <td style="width: 235px"><asp:TextBox ID="txtTitle" runat="server" size="30" maxlength="75" title="Title"></asp:TextBox></td>
            <td style="width: 187px"><asp:TextBox ID="txtISBN" runat="server" size="20" maxlength="75" title="ISBN"></asp:TextBox></td>
            <td style="width: 150px"><asp:DropDownList ID="ddlReserve" runat="server" title="Select Reserve Type">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="4-hour" title="Four Hour Reserve">4-hour reserve</asp:ListItem>
                    <asp:ListItem Value="1-day" title="One Day Reserve">1-day reserve</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td align="center" style="width: 148px"><asp:TextBox ID="txtCopies" runat="server" size="2" maxlength="2" title="Copy Formats"></asp:TextBox></td>
            <td><asp:DropDownList ID="ddlMaterial" runat="server" title="Select Text Copy Format">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="Book" title="Book">Book</asp:ListItem>
                    <asp:ListItem Value="DVD" title="DVD">DVD</asp:ListItem>
                    <asp:ListItem Value="CD" title="CD">CD</asp:ListItem>
                    <asp:ListItem Value="Video" title="Video">Video</asp:ListItem>
                    <asp:ListItem Value="Other" title="Other">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td style="width: 176px"><asp:TextBox ID="txtAuthor2" runat="server" size="20" maxlength="75" title="Author 2"></asp:TextBox></td>
            <td style="width: 235px"><asp:TextBox ID="txtTitle2" runat="server" size="30" maxlength="75" title="Title 2"></asp:TextBox></td>
            <td style="width: 187px"><asp:TextBox ID="txtISBN2" runat="server" size="20" maxlength="75" title="ISBN 2"></asp:TextBox></td>
            <td style="width: 150px"><asp:DropDownList ID="ddlReserve2" runat="server" title="Select Reserve Type for Book 2">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="4-hour" title="Four Hour Reserve">4-hour reserve</asp:ListItem>
                    <asp:ListItem Value="1-day" title="One Day Reserve">1-day reserve</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td align="center" style="width: 148px"><asp:TextBox ID="txtCopies2" runat="server" size="2" maxlength="2" title="Copy Formats for Book 2"></asp:TextBox></td>
            <td><asp:DropDownList ID="ddlMaterial2" runat="server" title="Select Text Copy Format for Book 2">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="Book" title="Book">Book</asp:ListItem>
                    <asp:ListItem Value="DVD" title="DVD">DVD</asp:ListItem>
                    <asp:ListItem Value="CD" title="CD">CD</asp:ListItem>
                    <asp:ListItem Value="Video" title="Video">Video</asp:ListItem>
                    <asp:ListItem Value="Other" title="Other">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

        
        <tr>
            <td style="width: 176px"><asp:TextBox ID="txtAuthor3" runat="server" size="20" maxlength="75" title="Author 3"></asp:TextBox></td>
            <td style="width: 235px"><asp:TextBox ID="txtTitle3" runat="server" size="30" maxlength="75" title="Title 3"></asp:TextBox></td>
            <td style="width: 187px"><asp:TextBox ID="txtISBN3" runat="server" size="20" maxlength="75" title="ISBN 3"></asp:TextBox></td>
            <td style="width: 150px"><asp:DropDownList ID="ddlReserve3" runat="server" title="Select Reserve Type for Book 3">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="4-hour" title="Four Hour Reserve">4-hour reserve</asp:ListItem>
                    <asp:ListItem Value="1-day" title="One Day Reserve">1-day reserve</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td align="center" style="width: 148px"><asp:TextBox ID="txtCopies3" runat="server" size="2" maxlength="2" title="Copy Formats for Book 3"></asp:TextBox></td>
            <td><asp:DropDownList ID="ddlMaterial3" runat="server" title="Select Text Copy Format for Book 3">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="Book" title="Book">Book</asp:ListItem>
                    <asp:ListItem Value="DVD" title="DVD">DVD</asp:ListItem>
                    <asp:ListItem Value="CD" title="CD">CD</asp:ListItem>
                    <asp:ListItem Value="Video" title="Video">Video</asp:ListItem>
                    <asp:ListItem Value="Other" title="Other">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        
        <tr>
            <td style="width: 176px"><asp:TextBox ID="txtAuthor4" runat="server" size="20" maxlength="75" title="Author 4"></asp:TextBox></td>
            <td style="width: 235px"><asp:TextBox ID="txtTitle4" runat="server" size="30" maxlength="75" title="Title 4"></asp:TextBox></td>
            <td style="width: 187px"><asp:TextBox ID="txtISBN4" runat="server" size="20" maxlength="75" title="ISBN 4"></asp:TextBox></td>
            <td style="width: 150px"><asp:DropDownList ID="ddlReserve4" runat="server" title="Select Reserve Type for Book 4">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="4-hour" title="Four Hour Reserve">4-hour reserve</asp:ListItem>
                    <asp:ListItem Value="1-day" title="One Day Reserve">1-day reserve</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td align="center" style="width: 148px"><asp:TextBox ID="txtCopies4" runat="server" size="2" maxlength="2" title="Copy Formats for Book 4"></asp:TextBox></td>
            <td><asp:DropDownList ID="ddlMaterial4" runat="server" title="Select Text Copy Format for Book 4">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="Book" title="Book">Book</asp:ListItem>
                    <asp:ListItem Value="DVD" title="DVD">DVD</asp:ListItem>
                    <asp:ListItem Value="CD" title="CD">CD</asp:ListItem>
                    <asp:ListItem Value="Video" title="Video">Video</asp:ListItem>
                    <asp:ListItem Value="Other" title="Other">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>        

        <tr>
            <td style="width: 176px"><asp:TextBox ID="txtAuthor5" runat="server" size="20" maxlength="75" title="Author 5"></asp:TextBox></td>
            <td style="width: 235px"><asp:TextBox ID="txtTitle5" runat="server" size="30" maxlength="75" title="Title 5"></asp:TextBox></td>
            <td style="width: 187px"><asp:TextBox ID="txtISBN5" runat="server" size="20" maxlength="75" title="ISBN 5"></asp:TextBox></td>
            <td style="width: 150px"><asp:DropDownList ID="ddlReserve5" runat="server" title="Select Reserve Type for Book 5">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="4-hour" title="Four Hour Reserve">4-hour reserve</asp:ListItem>
                    <asp:ListItem Value="1-day" title="One Day Reserve">1-day reserve</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td align="center" style="width: 148px"><asp:TextBox ID="txtCopies5" runat="server" size="2" maxlength="2" title="Copy Formats for Book 5"></asp:TextBox></td>
            <td><asp:DropDownList ID="ddlMaterial5" runat="server" title="Select Text Copy Format for Book 5">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="Book" title="Book">Book</asp:ListItem>
                    <asp:ListItem Value="DVD" title="DVD">DVD</asp:ListItem>
                    <asp:ListItem Value="CD" title="CD">CD</asp:ListItem>
                    <asp:ListItem Value="Video" title="Video">Video</asp:ListItem>
                    <asp:ListItem Value="Other" title="Other">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>        

         <tr>
            <td style="width: 176px"><asp:TextBox ID="txtAuthor6" runat="server" size="20" maxlength="75" title="Author 6"></asp:TextBox></td>
            <td style="width: 235px"><asp:TextBox ID="txtTitle6" runat="server" size="30" maxlength="75" title="Title 6"></asp:TextBox></td>
            <td style="width: 187px"><asp:TextBox ID="txtISBN6" runat="server" size="20" maxlength="75" title="ISBN 6"></asp:TextBox></td>
            <td style="width: 150px"><asp:DropDownList ID="ddlReserve6" runat="server" title="Select Reserve Type for Book 6">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="4-hour" title="Four Hour Reserve">4-hour reserve</asp:ListItem>
                    <asp:ListItem Value="1-day" title="One Day Reserve">1-day reserve</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td align="center" style="width: 148px"><asp:TextBox ID="txtCopies6" runat="server" size="2" maxlength="2" title="Copy Formats for Book 6"></asp:TextBox></td>
            <td><asp:DropDownList ID="ddlMaterial6" runat="server" title="Select Text Copy Format for Book 6">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="Book" title="Book">Book</asp:ListItem>
                    <asp:ListItem Value="DVD" title="DVD">DVD</asp:ListItem>
                    <asp:ListItem Value="CD" title="CD">CD</asp:ListItem>
                    <asp:ListItem Value="Video" title="Video">Video</asp:ListItem>
                    <asp:ListItem Value="Other" title="Other">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>       
        
         <tr>
            <td style="width: 176px"><asp:TextBox ID="txtAuthor7" runat="server" size="20" maxlength="75" title="Author 7"></asp:TextBox></td>
            <td style="width: 235px"><asp:TextBox ID="txtTitle7" runat="server" size="30" maxlength="75" title="Title 7"></asp:TextBox></td>
            <td style="width: 187px"><asp:TextBox ID="txtISBN7" runat="server" size="20" maxlength="75" title="ISBN 7"></asp:TextBox></td>
            <td style="width: 150px"><asp:DropDownList ID="ddlReserve7" runat="server" title="Select Reserve Type for Book 7">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="4-hour" title="Four Hour Reserve">4-hour reserve</asp:ListItem>
                    <asp:ListItem Value="1-day" title="One Day Reserve">1-day reserve</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td align="center" style="width: 148px"><asp:TextBox ID="txtCopies7" runat="server" size="2" maxlength="2" title="Copy Formats for Book 7"></asp:TextBox></td>
            <td><asp:DropDownList ID="ddlMaterial7" runat="server" title="Select Text Copy Format for Book 7">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="Book" title="Book">Book</asp:ListItem>
                    <asp:ListItem Value="DVD" title="DVD">DVD</asp:ListItem>
                    <asp:ListItem Value="CD" title="CD">CD</asp:ListItem>
                    <asp:ListItem Value="Video" title="Video">Video</asp:ListItem>
                    <asp:ListItem Value="Other" title="Other">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>       
        
          <tr>
            <td style="width: 176px"><asp:TextBox ID="txtAuthor8" runat="server" size="20" maxlength="75" title="Author 8"></asp:TextBox></td>
            <td style="width: 235px"><asp:TextBox ID="txtTitle8" runat="server" size="30" maxlength="75" title="Title 8"></asp:TextBox></td>
            <td style="width: 187px"><asp:TextBox ID="txtISBN8" runat="server" size="20" maxlength="75" title="ISBN 8"></asp:TextBox></td>
            <td style="width: 150px"><asp:DropDownList ID="ddlReserve8" runat="server" title="Select Reserve Type for Book 8">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="4-hour" title="Four Hour Reserve">4-hour reserve</asp:ListItem>
                    <asp:ListItem Value="1-day" title="One Day Reserve">1-day reserve</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td align="center" style="width: 148px"><asp:TextBox ID="txtCopies8" runat="server" size="2" maxlength="2" title="Copy Formats for Book 8"></asp:TextBox></td>
            <td><asp:DropDownList ID="ddlMaterial8" runat="server" title="Select Text Copy Format for Book 8">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="Book" title="Book">Book</asp:ListItem>
                    <asp:ListItem Value="DVD" title="DVD">DVD</asp:ListItem>
                    <asp:ListItem Value="CD" title="CD">CD</asp:ListItem>
                    <asp:ListItem Value="Video" title="Video">Video</asp:ListItem>
                    <asp:ListItem Value="Other" title="Other">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>       
        
  
           <tr>
            <td style="width: 176px"><asp:TextBox ID="txtAuthor9" runat="server" size="20" maxlength="75" title="Author 9"></asp:TextBox></td>
            <td style="width: 235px"><asp:TextBox ID="txtTitle9" runat="server" size="30" maxlength="75" title="Title 9"></asp:TextBox></td>
            <td style="width: 187px"><asp:TextBox ID="txtISBN9" runat="server" size="20" maxlength="75" title="ISBN 9"></asp:TextBox></td>
            <td style="width: 150px"><asp:DropDownList ID="ddlReserve9" runat="server" title="Select Reserve Type for Book 9">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="4-hour" title="Four Hour Reserve">4-hour reserve</asp:ListItem>
                    <asp:ListItem Value="1-day" title="One Day Reserve">1-day reserve</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td align="center" style="width: 148px"><asp:TextBox ID="txtCopies9" runat="server" size="2" maxlength="2" title="Copy Formats for Book 9"></asp:TextBox></td>
            <td><asp:DropDownList ID="ddlMaterial9" runat="server" title="Select Text Copy Format for Book 9">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="Book" title="Book">Book</asp:ListItem>
                    <asp:ListItem Value="DVD" title="DVD">DVD</asp:ListItem>
                    <asp:ListItem Value="CD" title="CD">CD</asp:ListItem>
                    <asp:ListItem Value="Video" title="Video">Video</asp:ListItem>
                    <asp:ListItem Value="Other" title="Other">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>         
        

            <tr>
            <td style="width: 176px"><asp:TextBox ID="txtAuthor10" runat="server" size="20" maxlength="75" title="Author 10"></asp:TextBox></td>
            <td style="width: 235px"><asp:TextBox ID="txtTitle10" runat="server" size="30" maxlength="75" title="Title 10"></asp:TextBox></td>
            <td style="width: 187px"><asp:TextBox ID="txtISBN10" runat="server" size="20" maxlength="75" title="ISBN 10"></asp:TextBox></td>
            <td style="width: 150px"><asp:DropDownList ID="ddlReserve10" runat="server" title="Select Reserve Type for Book 10">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="4-hour" title="Four Hour Reserve">4-hour reserve</asp:ListItem>
                    <asp:ListItem Value="1-day" title="One Day Reserve">1-day reserve</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td align="center" style="width: 148px"><asp:TextBox ID="txtCopies10" runat="server" size="2" maxlength="2" title="Copy Formats for Book 10"></asp:TextBox></td>
            <td><asp:DropDownList ID="ddlMaterial10" runat="server" title="Select Text Copy Format for Book 10">
                    <asp:ListItem Value="">--Select One--</asp:ListItem>
                    <asp:ListItem Value="Book" title="Book">Book</asp:ListItem>
                    <asp:ListItem Value="DVD" title="DVD">DVD</asp:ListItem>
                    <asp:ListItem Value="CD" title="CD">CD</asp:ListItem>
                    <asp:ListItem Value="Video" title="Video">Video</asp:ListItem>
                    <asp:ListItem Value="Other" title="Other">Other</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>           
       
        </tbody>
    </table>

</fieldset> <br />

<fieldset>
<legend>Additional Remarks</legend>
    <br />
<div style="float:left;">
    <b>Additional comments: </b>
</div>
<div style="float:left;clear:left;"><asp:TextBox ID="txtRemarks" runat="server" Height="75" Width="600" TextMode="MultiLine" title="Additional Comments"/></br>
    <asp:Button Text="Submit" ID="btnSubmit" OnClick="btnSubmit_Click" runat="server" class=""/>&nbsp;
    <asp:Button Text="Clear Form" ID="CancelButton" runat="server" CausesValidation="False" CommandName="Reset" OnClick="CancelButton_Click" />
</div>
    </fieldset>

    <asp:Label ID="lblErrorMessage" runat="server" />

    </div>

</asp:Content>