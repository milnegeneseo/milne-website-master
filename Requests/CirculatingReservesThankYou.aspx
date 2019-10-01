<%@ Page Title="" Language="C#" MasterPageFile="~/Requests/RequestsMasterPage.master" AutoEventWireup="true" CodeFile="CirculatingReservesThankYou.aspx.cs" Inherits="Requests_CirculatingReservesThankYou"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="rightSideContent">
        <div class="breadcrumb" style="margin:20px 0px 0px 0px;"><a href="https://www.geneseo.edu/">SUNY Geneseo</a> &raquo; <a href="https://www.geneseo.edu/library">Milne Library</a>  &  &raquo;&nbsp; <a href="https://librarydataportal.geneseo.edu/Requests/CirculatingReserves.aspx" style="color:#b85533 !important;">Course Reserves</a></div>
<h1>Course Reserve Request</h1>
     
<h2>Thank you for your request</h2>
<div style="clear:both;">
<p>

     <strong>You will receive an email with the subject heading, "Course Reserve Request." 
         </strong>
    
</p>
    <p>

        <strong>This email will list all the materials you requested, along with your Request ID Number for reference. </strong>
                
   
</p>


<%--    <p style="background-color: #FFFF99;">--%>
<p>
        <strong>Your Request ID# is: </strong>
           <asp:Label style="font-size:1.1em;" runat="server" Text='<%= CurrDateTime %>' ID="Label1" Font-Bold="True" BackColor="#FFFF66" Font-Size="X-Large" />
    
</p>
       







<p>All reserve materials are removed at the end of the Spring semester. Any personal copies will be returned through campus mail. 
    <br /><br />
    All personal copies submitted for reserve must be barcoded. If you do not want a barcode attached to your material, notify the Service Desk at (585) 245-5594.  <br/><br />
    If you have any questions, please contact the Service Desk at (585) 245-5549.</p>

<p><a class="link-button-background" href="CirculatingReserves.aspx">Submit another Course Reserve request</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a class="link-button-background" href="https://www.geneseo.edu/library">Return to Milne Library Home Page</a></p>



</div>
</div>
</asp:Content>