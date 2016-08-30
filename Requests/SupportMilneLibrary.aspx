<%@ Page Title="" Language="C#" MasterPageFile="~/Requests/RequestsMasterPage.master" AutoEventWireup="true" CodeFile="SupportMilneLibrary.aspx.cs" Inherits="Requests_Consultation" validateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<%--    <script type="text/javascript">
        $(document).ready(function () {
            $('#<%= txtDueDate.ClientID %>').attr('readonly', 'readonly').datepicker({
            });
        });
    </script>--%>

<div id="rightSideContent" >
<div style="margin-top: 0px;" class="breadcrumb"><a href="https://www.geneseo.edu/">Home</a> &raquo; <a href="https://www.geneseo.edu/library">Milne Library</a> &raquo; <a href="https://www.geneseo.edu/library/about-milne-library">About Milne Library</a> &raquo; <a href="http://intranetlib.geneseo.edu/DataPortal/Requests/SupportMilneLibrary.aspx" style="color:#b85533 !important;">Support Milne Library</a></div>

    <img alt="Minerva" border="0" height="197" src="http://www.geneseo.edu/webfm_send/12022" style="float: right; margin: 0px 10px 0px 20px;" title="Minerva" width="150">
    <h1>Support Milne Library</h1>
  <p>We gratefully accept and appreciate the donation of resources that support the mission of SUNY Geneseo; this includes materials that directly support the curriculum, enhance current research areas, support current co-curricular interests, add to the Genesee Valley Historical Collection, or demonstrate literary merit.
      </p>
  
    <p>An annual gift of $500 or more provides you with additional&nbsp;<a href="https://www.geneseo.edu/fund/giving-societies" target="_blank" __designer:mapid="9c8"><strong>benefits and recognition</strong></a>.<br />
</p>
    <br />
   <fieldset>
       <legend>Three ways to generously support Milne Library: </legend>

<span class="span-indent-gold">
    <asp:LinkButton ID="DonateMaterialsPanelLink" runat="server" CausesValidation="False" OnClick="DonateMaterialsPanelLink_Click">Donate Materials</asp:LinkButton> &nbsp;&nbsp; | &nbsp;&nbsp; 
    <asp:LinkButton ID="MakeAGiftPanelLink" runat="server" CausesValidation="False" OnClick="MakeAGiftPanelLink_Click">Make A Gift</asp:LinkButton> &nbsp;&nbsp; | &nbsp;&nbsp; 
    <asp:LinkButton ID="BecomeAFriendOfMilnePanelLink" runat="server" CausesValidation="False" OnClick="BecomeAFriendOfMilnePanelLink_Click">Become a Friend of Milne</asp:LinkButton>
</span>
<br /><br />
</fieldset> 

<asp:Panel ID="DonateMaterialsPanel" runat="server" Visible="False" > 
    <br /> 
   <fieldset>
<legend class="gold">Donate Materials</legend>           

<p>The following are guidelines for accepting the donations of materials:<br><br></p>
      
        <ul><li>Gifts become the property of the College upon receipt, and the Library will determine the use or disposition of these materials.</li>
            <li>Materials must be in good condition.</li>
            <li>Materials not accepted into the collection will be discarded or sold and monies designated for building the collection.</li>
            <li>Bookplates will be inserted into materials at the request of the donor.</li>
            <li>Gifts will be acknowledged in a letter from the Head,Technical Services &amp; Collection Development.</li>
            <li>Appraisals are the responsibility of donors and must be completed before the donation is made to Milne Library. Donors should consult their tax advisors about the need for a professional appraisal.</li>
            <li>Give a monetary donation to support Milne Library's collections</li></ul>
       <p ><br></p><p>If you have any questions, please call or email:<br><br>Corey Ha<br>Interim Director, Milne Library<br>
           (585) 245-5591<br><a href="mailto:ha@geneseo.edu" target="_blank"><strong>ha@geneseo.edu</strong></a></p>
       <p ><br><strong>Download </strong><a href="https://www.geneseo.edu/webfm_send/4533" target="_blank"><strong>Gift Donation Form</strong></a><strong> (.pdf)</strong></p>
       <p>
           &nbsp;</p>
       <p>
           <strong>Visit <a href="https://www.geneseo.edu/fund/ways-give" title="Ways to Give to Geneseo">Ways to Give to Geneseo</a>&nbsp;</strong>for more information.</p>
     <br />
        
    <p style="text-align:right;"><b><asp:LinkButton ID="DonateMaterialsPanelClose" runat="server" CausesValidation="False" OnClick="DonateMaterialsClosePanel_Click">Close X</asp:LinkButton></b></p>

</fieldset> 
     <br />
    </asp:Panel>
 


<asp:Panel ID="MakeAGiftPanel" runat="server" Visible="False" >  
 <br /> 
   <fieldset>
<legend class="gold">Make A Gift</legend>  
              
<p>If you are interested in giving a monetary donation to Milne Library, please visit SUNY Geneseo's <a href="http://go.geneseo.edu/give" target="_blank"><strong>Online Giving Page</strong></a> and follow these instructions:<br><br></p>
       <p>1. Fill out your personal information and gift amount in appropriate boxes.</p>
       <p>2. In the "Designations" section, find the box for Special Allocation Instructions and indicate your preference for designating the gift to Milne Library.</p>
       <p>3. Click Next to continue and proceed through submission process.</p>
       <p>
           &nbsp;</p>
       <p>
           <strong>Visit <a href="https://www.geneseo.edu/fund/ways-give" title="Ways to Give to Geneseo">Ways to Give to Geneseo</a>&nbsp;</strong>for more information.</p>
     <br />
        
    <p style="text-align:right;"><b><asp:LinkButton ID="MakeAGiftPanelClose" runat="server" CausesValidation="False" OnClick="MakeAGiftClosePanel_Click">Close X</asp:LinkButton></b></p>


</fieldset> 
     <br />
    </asp:Panel>    
    
 
    <asp:Panel ID="BecomeAFriendOfMilnePanel" runat="server" Visible="False" >  
        <br />
   <fieldset>
<legend class="gold">Become a Friend of Milne Library</legend>           

       <div>
           <p>
               <strong>Friends of Milne Library</strong> provide vital support, helping us go “above and beyond”&nbsp;what is expected of an academic library. Funds raised through private contributions allow Milne to offer expanded resources, services, and programs that enhance our students’ educational, cultural, and personal growth experiences. Over the years, our Friends have played an important role in providing increased study space and comfortable seating throughout the library, new “extracurricular” &nbsp;books and DVDs, presentations/readings and exhibits, and much more.<br>
               <br>

           </p>
           <p >
               <strong>An annual gift of $500 or more provides you with additional&nbsp;</strong><a href="https://www.geneseo.edu/fund/giving-societies" target="_blank"><strong>benefits and recognition</strong></a>.<br>
 <br>
           </p>
          <p><strong><a href="http://go.geneseo.edu/give" title="Donate Online"><img src="http://intranetlib.geneseo.edu/DataPortal/Images/donate-heart-20px.png" class="icon"> Donate online</a></strong>&nbsp;-&nbsp;Be sure to designate your gift as follows:</p>
              <ul>
               <li>Under &quot;Designations,&quot; enter the dollar amount in the &quot;Other&quot; box</li>

               <li>Enter &quot;Milne Library&quot; in the &quot;Special Allocations Instructions&quot; box</li>
               
      </ul>
            <br>

           <p>
               <strong><img src="http://intranetlib.geneseo.edu/DataPortal/Images/donate-heart-20px.png" class="icon">&nbsp;By phone - </strong>Call 585-245-5518 to make a gift over the phone with a credit card.</p>
           <p>
               You may also set up monthly deductions.<br>
               <br>

           </p>
           <p>
               <strong><img src="http://intranetlib.geneseo.edu/DataPortal/Images/donate-heart-20px.png" class="icon">&nbsp;By Mail - </strong>Send checks payable to &quot;The Geneseo Foundation&quot;</p>
           <p>
               Be sure to designate your gift for “Milne Library”</p>
           <p>
               Send to:</p>
           <p>
               SUNY Geneseo Annual Giving</p>
           <p>
               1 College Circle</p>
           <p>
               Geneseo, NY 14454</p>
           
           <p>
               &nbsp;</p>
           <p>
               <strong>Visit <a href="https://www.geneseo.edu/fund/ways-give" title="Ways to Give to Geneseo">Ways to Give to Geneseo</a>&nbsp;</strong>for more information.</p>
           
       </div>


            <br />
        
    <p style="text-align:right;"><b><asp:LinkButton ID="BecomeAFriendOfMilnePanelClose" runat="server" CausesValidation="False" OnClick="BecomeAFriendOfMilnePanelClosePanel_Click">Close X</asp:LinkButton></b></p>

</fieldset> 
     <br />
    </asp:Panel> 
    <%--<asp:Button Text="Reset" ID="btnReset" CausesValidation="false" CssClass="input-sub" runat="server" OnClick="btnReset_Click" />--%>
       <br />  
    <fieldset>
<legend>Contact Us</legend> 
         
           <strong>Friends of Milne Library
        </strong>
        <br />
        <strong>
        <a href="https://www.geneseo.edu/library/liz-argentieri" title="Liz Argentieri">Liz Argentieri</a></strong><br>Special Collections Librarian&nbsp;<br>Milne Library<br>(585) 245-5194
               <br><strong><a href="mailto:argente@geneseo.edu">argente@geneseo.edu&nbsp;</a></strong><br />
               </br>
           <strong>Geneseo Foundation</strong>
        <br />
        Gina Scalise ‘05<br>Director, Annual and Reunion Giving<br><a href="http://geneseofoundation.org/"  title="Geneseo Foundation"><strong>The Fund for Geneseo</strong></a><br>(585) 245-5492
               <br><strong><a href="mailto:scalise@geneseo.edu">scalise@geneseo.edu</a></strong><br />
        <br>
              
               <strong>Alumni &amp; Parent Relations</strong>
        <br />
        Ronna Bosko<br>Director&nbsp;<br><a href="http://alumni.geneseo.edu/" title="Geneseo Alumni and Parent Relations"><strong>Alumni Relations</strong></a>
               <br>(585)&nbsp;245-5596<br><a href="mailto:bosko@geneseo.edu"><strong>bosko@geneseo.edu </strong> </a>               
               </br>
               </br>
           </p>
</fieldset>


    </div>

</asp:Content>

