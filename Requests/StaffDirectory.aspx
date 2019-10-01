<%@ Page Title="" Language="C#" MasterPageFile="~/Requests/RequestsMasterPage.master" AutoEventWireup="true" CodeFile="StaffDirectory.aspx.cs" Inherits="Requests_Consultation" validateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="rightSideContent">
            <div class="breadcrumb" style="margin:20px 0px 0px 0px;"><a href="https://www.geneseo.edu/">SUNY Geneseo</a> &raquo; <a href="https://www.geneseo.edu/library">Milne Library</a> &raquo;&nbsp; <a href="http://intranetlib.geneseo.edu/DataPortal/Requests/StaffDirectory.aspx" style="color:#b85533 !important;">Contact Information<a href="http://intranetlib.geneseo.edu/DataPortal/Requests/StaffDirectory.aspx" style="color:#b85533 !important;"> &amp; Staff Directory</a></div>
    <h1>Milne Staff Directory</h1>
  


<div style="width:100%; clear:both;">    

<div class="left-50-percent">
    <fieldset>
<legend>General Information</legend>
    <i class="material-icons" style="vertical-align:text-bottom; color:#345290;">phone</i> <strong>Phone</strong>  585-245-5594 <br /><br />
<i class="material-icons" style="vertical-align:text-bottom; color:#345290;">near_me</i> <a href="https://go.geneseo.edu/SubmitAQuestion">Submit a Question</a> We will get back to you within 2-3 business days (Monday–Friday).<br />
        <br/>


   <a href="https://www.geneseo.edu/library/researchconsultations"><i class="material-icons" style="vertical-align:text-bottom;">assignment_ind</i> <strong>Schedule a  Consultation</strong></a> with a <strong>Research Librarian</strong> for assistance with your assignments or projects
        <br />
        <br />
<a href="https://www.geneseo.edu/library/suggestions-feedback"><i class="material-icons" style="vertical-align:text-bottom;">bug_report</i>&nbsp;Suggestions &amp; Feedback</a> help us improve <strong>your</strong> library!
        <br />

<!-- a href="https://news.milne-library.org/" -->
    <!-- img alt="Follow Milne Library News &amp; Events" src="https://www.geneseo.edu/sites/default/files/sites/library/social-icons/WordPress-logotype-wmark-30.png" style="width: 30px; height: 30px; margin-left: 5px; margin-right: 5px; border:0px none; vertical-align:middle;" /></a -->
    <p><strong><a href="https://news.milne-library.org/"><img alt="Follow Milne Library News &amp; Events" src="https://www.geneseo.edu/sites/default/files/sites/library/social-icons/WordPress-logotype-wmark-30.png" style="width: 20px; height: 20px; margin-left: 5px; margin-right: 5px; border:0px none;" /></a>Visit <a href="https://news.milne-library.org/">Milne Library News & Events</a> </strong>for updates about Library services, resources, events, and more.</p>






</fieldset>
    </div>

<div class="right-50-percent">


<fieldset>
<legend>Related Services</legend>
    <strong><i class="material-icons" style="vertical-align:text-bottom; color:#345290;">computer</i> CIT HelpDesk<br />
    <i class="material-icons" style="vertical-align:text-bottom; color:#345290;">phone</i> Phone</strong>  585-245-5588&nbsp;&nbsp;|&nbsp;&nbsp;<a href="https://www.geneseo.edu/cit/helpdesk"><i class="material-icons" style="vertical-align:text-bottom;">language</i> CIT Website</a>

     <br /><br />
     <strong><i class="material-icons" style="vertical-align:text-bottom; color:#345290;">create</i> Writing Learning Center<br />
    <a href="https://www.geneseo.edu/english/writing_center"><i class="material-icons" style="vertical-align:text-bottom; color:#345290;">assignment_ind</i> Schedule an Appointment</strong></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="https://www.geneseo.edu/english/writing_center"><i class="material-icons" style="vertical-align:text-bottom;">language</i> WLC Website</a>
    <br /><br />
     <strong><i class="material-icons" style="vertical-align:text-bottom; color:#345290;">star</i> TLC (Teaching  Learning Center)<br />
    <i class="material-icons" style="vertical-align:text-bottom; color:#345290;">phone</i> Phone</strong>  585-245-5336&nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://www.geneseo.edu/tlc/about"><i class="material-icons" style="vertical-align:text-bottom;">language</i> TLC Website</a>
  <br />
        <br />
<div style="display:inline-block;"><strong>Follow Milne Library:</strong>&nbsp;&nbsp;<a href="https://www.facebook.com/milnelibrary/"><img alt="Follow Milne Library on Facebook" src="https://www.geneseo.edu/sites/default/files/sites/library/social-icons/facebook-30.png" style="width: 20px; height: 20px; margin-left: 0px; margin-right: 5px; border:0px none;" /></a><a href="https://news.milne-library.org/"><img alt="Follow Milne Library News &amp; Events" src="https://www.geneseo.edu/sites/default/files/sites/library/social-icons/WordPress-logotype-wmark-30.png" style="width: 20px; height: 20px; margin-left: 5px; margin-right: 5px; border:0px none;" /></a><a href="https://twitter.com/Milne_Library"><img alt="Follow Milne Library on Twitter!" src="https://www.geneseo.edu/sites/default/files/sites/library/social-icons/Twitter_Logo_Blue-30.png" style="width: 20px; height: 20px; margin-left: 5px; margin-right: 5px; border:0px none;" /></a><a href="https://www.instagram.com/milne.geneseo/"><img alt="Follow milne.geneseo on Instagram!" src="https://www.geneseo.edu/sites/default/files/sites/library/social-icons/instagram-outline-color-30.png" style="width: 20px; height: 20px; margin-left: 5px; margin-right: 0px; border:0px none;" /></a></div>



      

</fieldset>




    </div>

</div>
</div>

<div style="clear:both;">&nbsp;</div>
   


        <asp:GridView ID="GridView2" CssClass="custom-grd-style" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" Width="100%" BorderStyle="None" Font-Size="13px">
<AlternatingRowStyle VerticalAlign="Top" BorderStyle="None" Font-Size="13px" HorizontalAlign="Left" CssClass="altRow"></AlternatingRowStyle>
        <Columns>
					
             <asp:TemplateField HeaderText="Staff <img alt='sort alphabetically' src='img/sort-20px.png' class='sort-image'/>"   SortExpression="StaffLastName"   AccessibleHeaderText="Staff Sortable Alphabetically" HeaderStyle-ForeColor="White" HeaderStyle-Font-Bold="True" >
               
                
                <ItemTemplate>
                        <span class="staffname"><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("Url") %>' Text='<%# string.Concat(Eval("StaffFirstName"), " ", Eval("StaffLastName"))%>' /></span><br />
						<span class="title"><asp:Label ID="Title" runat="server"  Text='<%# Bind("Title") %>'></asp:Label></span><br />     

                       <span><%# (String.IsNullOrEmpty(Convert.ToString(Eval("LiaisonTo"))))? "":"<b>Liaison to:</b>" %></span>
                            <asp:Label ID="LiaisonTo" runat="server" Text='<%# Eval("LiaisonTo") %>' />              

		</ItemTemplate>

				</asp:TemplateField>

           <asp:TemplateField HeaderText="Contact" ItemStyle-Width="30%" HeaderStyle-ForeColor="White" HeaderStyle-Font-Bold="True">

					<ItemTemplate>
                       <span class="phone"><asp:Label ID="Phone" runat="server"  Text='<%# Bind("Phone") %>'></asp:Label></span><br />
                       <span class="email"><a href="Mailto:<%# Eval("Email") %>"><%#Eval("Email")%></a></span><br />

                       <asp:HyperLink ID="LibGuides" runat="server" NavigateUrl='<%# Eval("LibGuidesURL") %>'
                            Visible='<%# !string.IsNullOrWhiteSpace(Eval("LibGuides").ToString()) %>'>
                            <span class="home-url"></span>
                            <%# Eval("LibGuides") %><br>
                        </asp:HyperLink>

          
                        
                        <asp:Label ID="AdditionalContactNoURL" runat="server"  Text='<%# Bind("AdditionalContactNoURL") %>'></asp:Label>


                        <asp:HyperLink ID="Twitter" runat="server" NavigateUrl='<%# Eval("TwitterURL") %>'
                            Visible='<%# !string.IsNullOrWhiteSpace(Eval("Twitter").ToString()) %>'>
                            <span class="twitter"></span>
                            <%# Eval("Twitter") %><br>
                        </asp:HyperLink>


                        <b><asp:HyperLink ID="YouCanBookMe" runat="server" NavigateUrl='<%# Eval("YouCanBookMeURL") %>'
                            Visible='<%# !string.IsNullOrWhiteSpace(Eval("YouCanBookMe").ToString()) %>'>
                            <span class="youcanbookme"></span>
                            <%# Eval("YouCanBookMe") %><br>
                        </asp:HyperLink></b>





                    </ItemTemplate>
				</asp:TemplateField>

            <asp:TemplateField HeaderText="Department <img alt='sort by Department' src='img/sort-20px.png' class='sort-image' />" SortExpression="Department"  AccessibleHeaderText="Department Sortable" ItemStyle-Width="30%" HeaderStyle-ForeColor="White" HeaderStyle-Font-Bold="True" >
					<ItemTemplate>
                    <span class="department"><b><asp:Label ID="Department" runat="server"  Text='<%# Bind("Department") %>'></asp:Label></b></span><br />
					<asp:Label ID="Location" runat="server"  Text='<%# Bind("Location") %>'></asp:Label>
                    
                    </ItemTemplate>
			</asp:TemplateField>
        </Columns>

<HeaderStyle VerticalAlign="Top" Font-Size="16px"></HeaderStyle>

<RowStyle VerticalAlign="Top" BorderStyle="None" Font-Size="13px" HorizontalAlign="Left" CssClass="Row"></RowStyle>
    </asp:GridView>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataPortalStaffDirectoryConnectionString %>" SelectCommand="SELECT [StaffFirstName], [StaffLastName], [Title], [LiaisonTo], [Phone], [Email], [URL], [Location], [LibGuides],[LibGuidesURL], [Department], [Twitter], [TwitterURL], [AdditionalContactNoURL], [YouCanBookMe],[YouCanBookMeURL],[AdditionalContact],[AdditionalContactURL]  FROM [StaffDirectory] ORDER BY [StaffLastName] ASC,[Department] ASC"></asp:SqlDataSource>


    <br /> 
 
 







</asp:Content>

