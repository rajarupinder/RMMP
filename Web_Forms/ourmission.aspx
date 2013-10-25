<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ourmission.aspx.cs" Inherits="ourmission" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Rate My MP</title>
<link rel="stylesheet" type="text/css" href="CSS/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="CSS/bootstrap-responsive.min.css" />
<link rel="stylesheet" type="text/css" href="../CSS/style1.css" />
</head>
<body>
    <form id="mission" runat="server">
    <div id="main">
        <div class="main_header">
            <div class="logo_1">
                <a href="Homepage.aspx"><asp:Image ID="Image1" runat="server" ImageUrl="~/images/rmm-logo.png" /> </a>
            </div>
            <div class="main_header_right">
                

               	<ul class="nav1">
                   	<li><a href="aboutus.aspx">About Us</a></li>
                   	<li><a href="ourmission.aspx">Our Mission</a></li>
                   	<li><a href="contactus.aspx">Contact Us</a></li>
    	         </ul>
            </div>
        </div>
      <div class="header_1 ">
          <div class="background_colr">
          <div class="Abt_us">
              <p class="fnt">Our Mission</p>
          </div>
          <p class="p1">
Our mission is to promote dialogue between the Indian government and its citizens so that people’s interests are better represented by our leaders and their policies. We hope to bridge the gaps between the government and citizens, which have inhibited strategic exchange of information that could be used to benefit both parties. We believe that a democracy can only truly flourish when the linkages between the citizens and their representatives are open, safe, and bilateral.          </p>
              </div>
        <p class="p2">
However, we also believe that gaps exist among the Indian people themselves, where there is a lack of consistent communication and exchange of ideas. This is especially true for local issues, which have the greatest impact on our day-to-day lives. Through Rate My MP, we hope to close that divide and foster an environment for healthy and clean political participation within communities on local issues. It is our wish that Rate My MP helps build communities, empower citizens, and inform politicians.       </p>
          
             </div>
        </div>
   </form>
</body>
</html>
