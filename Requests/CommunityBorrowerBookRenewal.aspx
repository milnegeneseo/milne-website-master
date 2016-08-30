<%@ Page Title="" Language="C#" MasterPageFile="~/Requests/RequestsMasterPage.master" AutoEventWireup="true" CodeFile="CommunityBorrowerBookRenewal.aspx.cs" Inherits="Requests_BookRenewal" validateRequest="false"  MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--    <script type="text/javascript" src="http://cdn.jquerytools.org/1.2.6/full/jquery.tools.min.js"></script>--%>

    <script type="text/javascript" src="scripts/jBox-0.3.2/Source/jBox.min.js"></script>
   <script type="text/javascript">

       //$(document).ready(function () {
       // $("img[rel]").overlay({ mask: '#000', fixed: false, top: 25 });
       // $("a[rel]").overlay({ mask: '#000', fixed: false, top: 25 });
       //});



       $(document).ready(function () {

           new jBox('Modal', {
               attach: $('#myModal1'),
           //    target: $('.newTarget'),
               title: 'Patron Bar Code on Back of Card',
               content: '<img src="img/milne-back-front-community-book-borrower-card-anim.gif" />',
       adjustPosition: true,
        //   adjustTracker: false,
               overlay: true,
              blockScroll: false,
               draggable: 'title',
               closeButton: 'title',
               closeOnClick: 'overlay',

               // Remove Repositoning
               repositionOnOpen: false,
               repositionOnContent: false
          });

           var myModal2 = $('#myModal2').jBox('Modal', {
                    attach: $('#myModal2'),
                    title: 'Book Bar Code Number',
                    target: $('#myModal2Target'),
                    content: '<img src="img/book-barcode-anim.gif" />',
                    position: {
                        x: 'center',
                        y: 'center'
                    },
                    outside: 'y',
                    adjustPosition: true,
                   overlay: true,
                   blockScroll: false,
                   draggable: 'title',
                   closeButton: 'title',
                   closeOnClick: 'overlay',
                   repositionOnOpen: false,
                   repositionOnContent: false
               });


           //new jBox('Modal', {
           //  //  attach: $('#myModal2'),
           //  //  target: $('#Modal2Target'),
           //    title: 'Book Bar Code Number',
           //   // content: '<img src="img/book-barcode-anim.gif" />',
           //    content: $('#Modal2Target'),
           ////    position: { x: 'center', y: 'center' },
           //    adjustPosition: true,
           //   // adjustTracker: false,
           //     overlay: true,
           //  blockScroll: false,
           //     draggable: 'title',
           //     closeButton: 'title',
           //     closeOnClick: 'overlay',

           //    // Remove Repositoning
           //     repositionOnOpen: false,
           //     repositionOnContent: false
           //});


 });
    </script>


<!-- Styles for jBox modal overlay -->
<link type="text/css" href="scripts/jBox-0.3.2/Source/jBox.css" rel="stylesheet" />

<style type="text/css">
#Modal2Target{
}
</style>



<!-- Styles for jQuerytools modal overlay -->
<%--<style type="text/css">
.simple_overlay {
	display:none;
	z-index:10000;
	background-color:#333333;
	/*width:540px;*/	
	min-height:100px;
	border:1px solid #666;
	-moz-box-shadow:0 0 20px 5px #000;
	-webkit-box-shadow: 0 0 20px #000;	
}

.simple_overlay .close {
/*background-image:url(http://www.geneseo.edu/webfm_send/6846);*/
	position:absolute;
	right:-15px;
	top:-15px;
	cursor:pointer;
	height:35px;
	width:35px;
}


#triggers {
/*text-align:left;*/
}
	
#triggers img {
	cursor:pointer;
	margin:0 5px;
	background-color:#fff;
	border:1px solid #ccc;
	padding:2px;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;
}
</style>
 --%>



    <div id="rightSideContent" >
        <div style="margin-top: 0px;" class="breadcrumb"><a href="https://wwwdev2.geneseo.edu/">Home</a> &raquo; <a href="https://wwwdev2.geneseo.edu/library">Milne Library</a> &raquo; <a href="https://wwwdev2.geneseo.edu/library/requests-services">Requests &amp; Services</a> &raquo; <a href="http://intranetlib.geneseo.edu/DataPortal/Requests/CommunityBorrowerBookRenewal.aspx">Alumni & Community Book Renewal Form</a></div>

    <h1>Community Borrower Book Renewals</h1> 
      
    <p>As a teaching institution, our goal to encourage life-long learning habits and we welcome our community members to access and use our collections. Please note that we may be unable to honor renewal requests for a variety of reasons, including overdue status or on hold for another user.</p>
    <br />
    <p><strong>For further information, please refer to Milne's </strong> <a href="http://www.geneseo.edu/library/policies"><strong>Loan Policies</strong></a><strong>. </strong> <br /><br />

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
     
       
<label><span class="required">*</span> <a href="#" id="myModal1"><b>Patron Barcode Number: </b><img src="img/question-mark-icon-16.png" /></a></label>


<%--<label><span class="required">*</span> <a href="#" rel="#patronbarcode"><b>Patron Barcode Number: </b> <img src="img/question-mark-icon-16.png" /></a></label><div id="patronbarcode" class="simple_overlay"><img src="img/milne-back-front-community-book-borrower-card-anim.gif" /><a class="close"><img src="http://www.geneseo.edu/webfm_send/6846" /></a></div>    --%>

    
     <asp:TextBox ID="txtBarcode" runat="server" size="25" maxlength="25" />&nbsp;<asp:requiredfieldvalidator id="rfBarcode" runat="server" errormessage="Required" CssClass="required" controltovalidate="txtBarcode" SetFocusOnError="True"></asp:requiredfieldvalidator><br />      
        

      
</fieldset> <br />
 


<fieldset>
<legend>Book Information</legend>

<p id="Modal2Target">Enter <a href="#" id="myModal2"><b>barcode number(s) <img src="img/question-mark-icon-16.png" /></b></a> of books to renew (one per line): </p>



<%--<p>Enter <a href="#" rel="#bookbarcode"><b>barcode number(s) <img src="img/question-mark-icon-16.png" /></b></a> of books to renew (one per line): </p><div id="bookbarcode" class="simple_overlay"><img src="img/book-barcode-anim.gif" /><a class="close"><img src="http://www.geneseo.edu/webfm_send/6846" /></a></div>--%>
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