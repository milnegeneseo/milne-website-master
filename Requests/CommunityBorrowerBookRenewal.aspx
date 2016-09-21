<%@ Page Title="" Language="C#" MasterPageFile="~/Requests/RequestsMasterPage.master" AutoEventWireup="true" CodeFile="CommunityBorrowerBookRenewal.aspx.cs" Inherits="Requests_BookRenewal" validateRequest="false"  MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<style>
.modalDialog {
    position: fixed;
    font-family: Arial, Helvetica, sans-serif;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background: rgba(0, 0, 0, 0.8);
    z-index: 99999;
    opacity:0;
    -webkit-transition: opacity 400ms ease-in;
    -moz-transition: opacity 400ms ease-in;
    transition: opacity 400ms ease-in;
    pointer-events: none;
}
.modalDialog:target {
    opacity:1;
    pointer-events: auto;
}
.modalDialog > div {
    width: 400px;
    position: relative;
    margin: 10% auto;
    padding: 5px 20px 13px 20px;
    border-radius: 10px;
    background: #fff;
    background: -moz-linear-gradient(#fff, #999);
    background: -webkit-linear-gradient(#fff, #999);
    background: -o-linear-gradient(#fff, #999);
}
.close {
    background: #606061;
    color: #FFFFFF;
    line-height: 25px;
    position: absolute;
    right: -12px;
    text-align: center;
    top: -10px;
    width: 24px;
    text-decoration: none;
    font-weight: bold;
    -webkit-border-radius: 12px;
    -moz-border-radius: 12px;
    border-radius: 12px;
    -moz-box-shadow: 1px 1px 3px #000;
    -webkit-box-shadow: 1px 1px 3px #000;
    box-shadow: 1px 1px 3px #000;
}
.close:hover {
    background: #00d9ff;
</style>

 
    <div id="rightSideContent" >
        <div style="margin-top: 0px;" class="breadcrumb"><a href="https://www.geneseo.edu/">Home</a> &raquo; <a href="https://www.geneseo.edu/library">Milne Library</a> &raquo; <a href="https://www.geneseo.edu/library/requests-services">Requests &amp; Services</a> &raquo; <a href="http://intranetlib.geneseo.edu/DataPortal/Requests/CommunityBorrowerBookRenewal.aspx">Alumni & Community Book Renewal Form</a></div>

    <h1>Community Borrower Book Renewals</h1> 
      
    <p>As a teaching institution, our goal to encourage life-long learning habits and we welcome our community members to access and use our collections. Please note that we may be unable to honor renewal requests for a variety of reasons, including overdue status or on hold for another user.</p>
    <p><strong>For further information, please refer to Milne's </strong> <a href="https://www.geneseo.edu/library/library-policies"><strong>Loan Policies</strong></a><strong>. </strong></p>

* Please allow 2 business days to receive confirmation by email of your book renewal request. </p> <br />
    
    <span class="required">* Indicates required field.</span><br /> <br />


       


<fieldset>
<legend>Patron Information</legend>


    <label><span class="required">*</span> First Name: </label> <asp:TextBox runat="server" size="25" maxlength="25" ID="txtFirstName" />&nbsp;<asp:requiredfieldvalidator id="rfFirstName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtFirstName" SetFocusOnError="True"></asp:requiredfieldvalidator><br />
     
    <label><span class="required">*</span> Last Name: </label><asp:TextBox runat="server" size="25" maxlength="25" ID="txtLastName" />&nbsp;<asp:requiredfieldvalidator id="rfLastName" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtLastName" SetFocusOnError="True"></asp:requiredfieldvalidator> <br />
  
    <label><span class="required">*</span> Email Address: </label><asp:TextBox runat="server" size="25" maxlength="25" ID="txtEmail" />&nbsp; <asp:requiredfieldvalidator id="rfEmail" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtEmail" SetFocusOnError="True"></asp:requiredfieldvalidator>
    <asp:RegularExpressionValidator ID="reEmail" ErrorMessage="Invalid Email Address" CssClass="required" ControlToValidate="txtEmail" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" /><br />

    <label><span class="required">*</span> Local Address: </label><asp:TextBox ID="txtAddress" runat="server" size="25" maxlength="45" />&nbsp;<asp:requiredfieldvalidator id="rfAddress" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtAddress" SetFocusOnError="True"></asp:requiredfieldvalidator><br /> 

    <label><span class="required">*</span> Phone Number: </label><asp:TextBox ID="txtPhone" runat="server" size="25" maxlength="25" />&nbsp;<asp:requiredfieldvalidator id="rfPhone" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtPhone" SetFocusOnError="True"></asp:requiredfieldvalidator><br /> 
     
       
<label><span class="required">*</span> <a href="#openModal"><b>Patron Barcode Number: </b><img src="https://eres.geneseo.edu/milne-styles-js/img/question-mark-icon-16.png" /></a></label>
<div id="openModal" class="modalDialog">
    <div>	<a href="#close" title="Close" class="close">X</a>

        	<h2>Patron Barcode Number</h2>

        <p><img src="https://eres.geneseo.edu/milne-styles-js/img/milne-back-front-community-book-borrower-card-anim.gif" /></p>
    </div>
</div>



    
     <asp:TextBox ID="txtBarcode" runat="server" size="25" maxlength="25" />&nbsp;<asp:requiredfieldvalidator id="rfBarcode" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtBarcode" SetFocusOnError="True"></asp:requiredfieldvalidator><br />      
        

      
</fieldset> <br />
 


<fieldset>
<legend>Book Information</legend>

<p>Enter <a href="#openModal2"><b>barcode number(s) <img src="img/question-mark-icon-16.png" /></b></a> of books to renew (one per line): </p>
<div id="openModal2" class="modalDialog">
    <div>	<a href="#close" title="Close" class="close">X</a>

        	<h2>Book Barcode Number</h2>

        <p><img src="https://eres.geneseo.edu/milne-styles-js/img/book-barcode-anim.gif" /></p>
    </div>
</div>

    <br />

    <label>30260</label><asp:TextBox ID="txtBook1" runat="server" size="15" maxlength="15" />&nbsp; <span class="required">*</span><asp:requiredfieldvalidator id="rfBook1" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtBook1" SetFocusOnError="True"></asp:requiredfieldvalidator> <br />
        
<label>30260</label><asp:TextBox ID="txtBook2" runat="server" size="15" maxlength="15"/> <br /> 
<label>30260</label><asp:TextBox ID="txtBook3" runat="server" size="15" maxlength="15"/> <br /> 
<label>30260</label><asp:TextBox ID="txtBook4" runat="server" size="15" maxlength="15"/> <br /> 
<label>30260</label><asp:TextBox ID="txtBook5" runat="server" size="15" maxlength="15"/> <br /> 
<label>30260</label><asp:TextBox ID="txtBook6" runat="server" size="15" maxlength="15"/> <br /> 
<label>30260</label><asp:TextBox ID="txtBook7" runat="server" size="15" maxlength="15"/> <br /> 
<label>30260</label><asp:TextBox ID="txtBook8" runat="server" size="15" maxlength="15"/> <br /> 
<label>30260</label><asp:TextBox ID="txtBook9" runat="server" size="15" maxlength="15" /> <br /> 
<label>30260</label><asp:TextBox ID="txtBook10" runat="server" size="15" maxlength="15"/> <br /> 

</fieldset> <br />

<fieldset>
<legend>Additional Remarks</legend>
    <br />
    <b>Additional comments, concerns, or questions: </b><asp:TextBox ID="txtRemarks" runat="server" Height="75" Width="600" TextMode="MultiLine"/>
  
    <br /><br />

    <asp:Button Text="Submit" ID="btnSubmit" OnClick="btnSubmit_Click" runat="server" class=""/>&nbsp;
    <asp:Button Text="Clear Form" ID="CancelButton" runat="server" CausesValidation="False" CommandName="Reset" OnClick="CancelButton_Click" />
    </fieldset>

    <asp:Label ID="lblErrorMessage" runat="server" />

    </div>
<%--<script>$(".dlgfixed").center(false); </script>--%>
</asp:Content>