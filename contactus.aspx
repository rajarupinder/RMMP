<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Welcome to Rate My MP</title>
<link rel="stylesheet" type="text/css" href="CSS/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="CSS/bootstrap-responsive.min.css" />
<link rel="stylesheet" type="text/css" href="CSS/style1.css" />
</head>
<body>
   <form id="mission" runat="server">
    <div id="main">
        <div class="main_header">
            <div class="logo_1">
                <a href="Homepage.aspx"><asp:Image ID="Image1" runat="server" ImageUrl="~/images/LOG.png" /> </a>
            </div>
            <div class="main_header_right">
                <nav class="nav">
               	<ul class="nav nav-tabs padding-top20 span3 bottom-border-none mg-left10">
                   	<li><a href="#" class="transition color-white">About Us</a></li>
                   	<li><a href="#" class="transition color-white">Our Mission</a></li>
                   	<li><a href="#" class="transition color-white">Contact Us</a></li>
    	         </ul>
                    </nav>
            </div>
        </div>
      <div class="header">
          <div class="message_box" >
              <div class="name4">
                  <asp:Label ID="Label1" runat="server" Text="">Name</asp:Label>
                  <div class="text_box1">
                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  </div>    
              </div>
              <div class="email_id">
                  <div class="name5">
                  <asp:Label ID="Label2" runat="server" Text="">Email-Id</asp:Label>
                  <div class="text_box1">
                      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                  </div>    
              </div>
              </div>
              <div class="message">
                  <asp:Label ID="Label3" runat="server" Text="Message"></asp:Label>
                  <div class="message_box1">
                      <asp:TextBox ID="TextBox3" placeholder="Type your Message here" runat="server" TextMode="MultiLine" Style="width:100%;height:257px;" />
                  </div>
              </div>
          </div>
          <div class="right_contact">

          </div>
      </div>
    
    </div>
   </form>
</body>
</html>
