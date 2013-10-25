<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Welcome to Rate My MP</title>
<link rel="stylesheet" type="text/css" href="CSS/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="CSS/bootstrap-responsive.min.css" />
<link rel="stylesheet" type="text/css" href="../CSS/style1.css" />
</head>
<body>
      <form id="about" runat="server">
    <div id="main">
        <div class="main_header">
            <div class="logo_1">
                <a href="Homepage.aspx"><asp:Image ID="Image1" runat="server" ImageUrl="~/images/rmm-logo.png" /> </a>
            </div>
            <div class="main_header_right">
                <%--<nav class="nav1 nav" >--%>

               	<ul class="nav1" >
                   	<li><a href="aboutus.aspx" >About Us</a></li>
                   	<li><a href="ourmission.aspx" >Our Mission</a></li>
                   	<li><a href="contactus.aspx">Contact Us</a></li>
    	         </ul>
                   <%-- </nav>--%>
            </div>
        </div>
      <div class="header_1 ">
          <div class="background_colr">
          <div class="Abt_us">
              <p class="fnt">About Us</p>
          </div>
          <p class="p1">
              Rate My MP is a tool that provides citizens in India a public platform to share their ideas and concerns with their government representatives and each other. Through words, pictures, or video testimony, you can bring to light prominent issues facing your community and communicate them directly with your MPs on an open forum.
          </p>
              </div>
        <p class="p2">
            At the core of Rate My MP is the crowdsourcing model. In a country as large and diverse as India, with so many unique views and beliefs, the best result is obtained when everyone pitches in. That’s why Rate My MP needs you to contribute to your constituency’s page on issues that matter to YOU. Discuss the increasing prices of basic needs, the lack of job opportunities, or the growth of corruption. Or take a picture or video of the bad conditions of roads in your constituency, or the heap of garbage lying across the street, uncollected for weeks. Check out what other people are saying in your community and connect with them by commenting on their posts or supporting their posts.
       </p>
          <p class="p2">
              For the politician, Rate My MP provides a means of gaining valuable information about your constituents’ beliefs so that you can take better and more well informed decisions. Find out what your constituents are thinking and feeling about certain policies, interact with them individually or in groups, and answer their questions, and address their concerns.
              </p>

          <p class="p2">
              For the people, Rate My MP is an opportunity for you to participate in your government, learn about your constituency, and meet other motivated people who are invested in positively changing the country.
              </p>
             </div>
        </div>
   </form>
</body>
</html>
