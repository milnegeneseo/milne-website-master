<%@ Page Language="VB" MasterPageFile="~/Requests-DEV/RequestsMasterPage.master" AutoEventWireup="false" CodeFile="SearchResults.aspx.vb" Inherits="LibRequests_SearchResults" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="" >
<!-- Google CSE Search Box Begins -->

<form id="searchbox_002734845617811589582:ce-duog2ose" action="http://intranetlib.geneseo.edu/dataportal/requests/searchresults.aspx">
  <!--<input type="hidden" name="cx" value="002734845617811589582:ce-duog2ose" />
  <input name="q" type="text" size="20" />
  <input type="submit" name="sa" value="Site Search" />
  <input type="hidden" name="cof" value="FORID:11" />
  -->
  
	<asp:TextBox ID="q" MaxLength="512" Width="275px" AutoPostBack="false" runat="server" />
	<asp:Button ID="_btnSearch" Text="Site Search" OnClick="_btnSearch_Click" runat="server" />
	<asp:RequiredFieldValidator ID="_rfvQ" ControlToValidate="q" runat="server" />

	<asp:HiddenField ID="cx" Value="002734845617811589582:ce-duog2ose" runat="server" />
	<asp:HiddenField ID="cof" Value="FORID:11" runat="server" />
  
</form>
<script type="text/javascript" src="http://www.google.com/coop/cse/brand?form=searchbox_002734845617811589582%3Ace-duog2ose"></script>
<!-- Google CSE Search Box Ends -->

<h2>Milne Library Site Search</h2>
<h4>From Google Custom Search</h4>

<!-- Google Search Result Snippet Begins -->
<div id="results_002734845617811589582:ce-duog2ose"></div>
<script type="text/javascript">
    var googleSearchIframeName = "results_002734845617811589582:ce-duog2ose";
    var googleSearchFormName = "searchbox_002734845617811589582:ce-duog2ose";
    var googleSearchFrameWidth = 720;
    var googleSearchFrameborder = 0;
    var googleSearchDomain = "www.google.com";
    var googleSearchPath = "/cse";
</script>
<script type="text/javascript" src="http://www.google.com/afsonline/show_afs_search.js"></script>
<!-- Google Search Result Snippet Ends -->

</div>
</asp:Content>