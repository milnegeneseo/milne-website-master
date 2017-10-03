<%@ Page Title="" Language="C#" MasterPageFile="~/Requests/RequestsMasterPage.master" AutoEventWireup="true" CodeFile="StaffDirectory.aspx.cs" Inherits="Requests_Consultation" validateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="rightSideContent">
            <div class="breadcrumb" style="margin:20px 0px 0px 0px;"><a href="https://www.geneseo.edu/">SUNY Geneseo</a> &raquo; <a href="https://www.geneseo.edu/library">Milne Library</a> &raquo; <a href="https://www.geneseo.edu/library/about-milne-library">About Milne Library</a> &raquo; <a href="http://intranetlib.geneseo.edu/DataPortal/Requests/StaffDirectory.aspx" style="color:#b85533 !important;">Staff Directory & Contact Information</a></div>
    <h1>Milne Staff Directory</h1>
  


<div style="width:100%;">    

<div class="left-50-percent">
    <fieldset>
<legend>General Information</legend>
    <i class="material-icons" style="vertical-align:text-bottom; color:#345290;">phone</i> <strong>Phone</strong>  585-245-5594 <br /><br />
   <i class="material-icons" style="vertical-align:text-bottom;  color:#345290;">mail</i> <strong>Email <a href="mailto:askus@geneseo.libanswers.com">askus@geneseo.libanswers.com</a></strong><br /><br />

    
   <i class="material-icons" style="vertical-align:text-bottom;  color:#345290;">print</i> <strong>Fax</strong> 585-245-5769<br /><br />

        <a href="https://www.geneseo.edu/library/ask-us"><i class="material-icons" style="vertical-align:text-bottom;">help</i> <strong>Ask Us</strong></a> Reference librarians are available to answer your questions <br /><br />

   <a href="http://www.geneseo.edu/library/webform/make-suggestion"><i class="material-icons" style="vertical-align:text-bottom;">create</i> <strong>Make a suggestion</strong></a> Suggestions &amp; Feedback


        <br />
        <br />


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

