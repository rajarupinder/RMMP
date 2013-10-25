<%@ Page Language="C#" AutoEventWireup="true" CodeFile="usercomment.aspx.cs" Inherits="Web_Forms_usercomment" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
 <head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Rate my MP</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="../css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="../CSS/jquery-te-1.4.0.css"/>
<link rel="stylesheet" type="text/css" href="../css/style1.css" />
<script type="text/javascript" src="../js/jquery.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../JS/jquery.js" charset="utf-8"></script>
<script type="text/javascript" src="../js/jquery-te-1.4.0.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../js/bootstrap.js"></script>
 <script type="text/javascript"> 
   $(document).ready(function () {
     var s = $("#sticker");
     var pos = s.position();
     $(window).scroll(function () {
         var windowpos = $(window).scrollTop();
         //s.html("Distance from top:" + pos.top + "<br />Scroll position: " + windowpos);
         if (windowpos >= pos.top) {
             s.addClass("stick");
         } else {
             s.removeClass("stick");
         }
     });
 });

 </script>


      <!-- script to logout from  google session  -->
    <script>
        function logout() {

         
            document.location.href = " https://www.google.com/accounts/Logout?continue=https://appengine.google.com/_ah/logout?continue=http://ratemymp.venturepact.com";
            return true;
        }

    </script> 
       
    <!-- script to logout from facebook session -->
   <script type="text/javascript" src="/JS/fb.js"></script>
   <script src="http://connect.facebook.net/en_US/all.js" type="text/javascript"></script>
       <script>
           //Load the SDK Asynchronously
           (function (d) {
               var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
               if (d.getElementById(id)) { return; }
               js = d.createElement('script'); js.id = id; js.async = true;
               js.src = "//connect.facebook.net/en_US/all.js";
               ref.parentNode.insertBefore(js, ref);
           }(document));

           // Init the SDK upon load
           var fbl;
           window.fbAsyncInit = function () {
               fb1 = FB.init({
                   appId: '421695167935164', //  final App ID  421695167935164
                   channelUrl: '//' + window.location.hostname + '/channel', // Path to your Channel File
                   status: true, // check login status  
                   cookie: true, // enable cookies to allow the server to access the session
                   xfbml: true  // parse XFBML
               });

               $("#facebookLogout").click(function () {
                   kpfb();

               });
           };

           function kpfb() {
               FB.getLoginStatus(function (response) {
                   if (response.status == 'connected') {
                       //alert(response.status);
                       FB.logout(function (response) {

                           kpredirect();
                       });
                   }
               });
           }

           function kpredirect() {
               window.location.reload();
               // alert("test3");
               document.location.href = "../Default.aspx";
           }

    </script>
     <script>
         function homeredirect() {
             document.localName.href = "Homepage.aspx";
         }
         function validatePostContent() {

             var postText = $("#TXTissue").val();
             if(postText=='')
             {
                 return false;
             }
             else {
                 return true;
         }
         }
     </script>
     </head>
<body>
    <form id="frmusercomment" runat="server" class="formtag"  >
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" EnablePartialRendering="true"/>

<div id="main"> 	
    <div id="main_container">

    	<div id="main_left">
         <div class="logo">
               <a href="Homepage.aspx"><img src="../images/rmm-logo.png"  class="img_1"/></a>
            </div>
          
            <div id="sticker">
          
          <div class="mp_info">
          <div class="heading">
               		<h5>15th Lok Sabha <br />Member of Parliament profile</h5>
               </div>
          	 <div class="mp_info_inner">
              	<div class="mp_img">
                     <asp:Image ID="imgMpProfile" runat="server" />
                  <div class="mp_pic"> 
                  </div>
               </div>
              
           <div class="up_labels">
                   <div class="name1">
                  <h5>Name:</h5><label><asp:Label ID="lblname" runat="server" /></label>
                  </div>
                  <div class="name1">
                  <h5>Constituency:</h5><label><asp:Label ID="lblconstituency" runat="server" /></label>
                  </div>
                  <div class="name3">
                  <h5>Party:</h5><label><asp:Label ID="lblparty" runat="server" /></label>
                  </div>
               </div>
             </div>
          <div class="down_labels">
               <div class="name2">
               <h5>Contact:</h5><label><asp:Label ID="lblcntct" runat="server" /></label>
               </div>
               <div class="name2">
                 <h5>E-mail:</h5><label><asp:Label ID="lblmail" runat="server" /></label>
                 </div>
                 <div class="name2">
                   <h5>Qualification:</h5><label><asp:Label ID="lbleducational_q" runat="server" /></label>
                   </div>
                   <div class="name2">
                 <h5>Profession:</h5><label><asp:Label ID="lblprofession" runat="server" /></label>
                 </div>
                 <div class="name2">
               <h5>Permanent Address:</h5><label><asp:Label ID="lblp_address" runat="server" /></label>
               </div>
               <div class="name2">
             <h5>Present Address:</h5><label><asp:Label ID="lblpresent_address" runat="server" /></label>
             </div>

          </div>
                
                  
                 </div>
                <div class="rating">
              <div class="rating_heading">
                    <h4>Rating</h4>
                </div>
                    <div class="heading_inner">
            <h6>Avg Rating</h6>
           <h6>Your Rating</h6>
           

       </div>
                  <div class="rating_inner">
                      <div class="rating_inner_1">
                         <div class="icon-heart">
                             <asp:Image ID="Imag" runat="server" ImageUrl="~/images/heart.png"/>
                        </div>
                      <div class="rating_star">
                            <asp:Label ID="Label11" runat="server" Text="Health"/>
                      </div>
                          <asp:UpdatePanel ID="UpdatePanel7"  runat="server" UpdateMode="Conditional"><ContentTemplate>
                          <div class="div_stars">
                              <asp:Rating ID="Rating1" runat="server" CurrentRating="0" MaxRating="5" StarCssClass="ratingStar" WaitingStarCssClass="savedRatingStar"
                                 FilledStarCssClass="filledRatingStar" EmptyStarCssClass="emptyRatingStar" OnChanged="Rating1_Changed" AutoPostBack="true" />
                          </div>

                           <div class="rating_avg">
                             <asp:Label ID="LBLrating1" runat="server" Text="0"/>
                           </div>
                        </ContentTemplate>
                              <Triggers>
                                  <asp:AsyncPostBackTrigger ControlID="Rating1" />
                              </Triggers>
                          </asp:UpdatePanel>
                  </div>
                      <div class="rating_inner_1">
                          <div class="icon-heart">
                             <asp:Image ID="Image2" runat="server" ImageUrl="~/images/education.png" />
                         </div>
                     <div class="rating_star">
                         <asp:Label ID="Label22"  runat="server" Text="Education"/>
                     </div>
                          <asp:UpdatePanel ID="UpdatePanel8" runat="server" UpdateMode="Conditional"><ContentTemplate>
                          <div class="div_stars">
                              <asp:Rating ID="Rating2" runat="server" CurrentRating="0" MaxRating="5" StarCssClass="ratingStar" WaitingStarCssClass="savedRatingStar"
                                 FilledStarCssClass="filledRatingStar" EmptyStarCssClass="emptyRatingStar" OnChanged="Rating2_Changed" AutoPostBack="true"  />
                          </div>
                          <div class="rating_avg">
                              <asp:Label ID="LBLrating2" runat="server" Text="0"/>
                          </div>
                          </ContentTemplate>
                              <Triggers>
                                  <asp:AsyncPostBackTrigger ControlID="Rating2" />
                              </Triggers>
                          </asp:UpdatePanel>
                   </div>
                       <div class="rating_inner_1">
                          <div class="icon-heart">
                             <asp:Image ID="Image3" runat="server" ImageUrl="~/images/infrastructure.png" />
                         </div>
                     <div class="rating_star">
                          <asp:Label ID="Label33" runat="server" Text="Infrastructure"/>
                     </div>
                           <asp:UpdatePanel ID="UpdatePanel9" runat="server" UpdateMode="Conditional"><ContentTemplate>
                           <div class="div_stars">
                              <asp:Rating ID="Rating3" runat="server" CurrentRating="0" MaxRating="5" StarCssClass="ratingStar" WaitingStarCssClass="savedRatingStar"
                                 FilledStarCssClass="filledRatingStar" EmptyStarCssClass="emptyRatingStar" OnChanged="Rating3_Changed" AutoPostBack="true"    />
                          </div>
                          <div class="rating_avg">
                            <asp:Label ID="LBLrating3" runat="server" Text="0"/>
                           </div>
                           </ContentTemplate>
                              <Triggers>
                                  <asp:AsyncPostBackTrigger ControlID="Rating3" />
                              </Triggers>
                          </asp:UpdatePanel>
                   </div>

                  </div>
                 <div class="clear"></div>
                          </div>
                    
            </div>
             
                </div>

             
            
            <%--<div class="main_left_links">
            	<ul class="nav nav_inner">
                	<li><a href="javascript:void(0);">About Us</a></li>
                    <li><a href="javascript:void(0);">Our Mission</a></li>
                    <li><a href="javascript:void(0);">Contact Us</a></li>
                </ul>
            </div>--%>
           
        <div id="main_right">
            <div id="home_container">
            	<div class="home_right">
                	<label  class="user_outr"> <asp:Label ID="LBLuserName" runat="server" Text="Label"></asp:Label></label>
                	<%--<input  id="homeRedirect" type ="button" class="btn btn_home" onclick="homeredirect()"  value="Home" />--%>
                    <asp:Button ID="Buttonredirect" class="btn btn_home" runat="server" Text="Home" OnClick="Buttonredirect_Click" />
                    <%--<input id="homeRedirect" class="btn btn_home" type="button"   value ="Home" />--%>
                    <input type="button" id="facebookLogout" class="btn btn_home" value="Logout"  runat="server"/>
                    <asp:Button ID="googleLogout" class="btn btn_home" runat="server" Text="Logout" Visible="false" OnClick="googleLogout_Click" />
                    <asp:Button ID="localLogout" class="btn btn_home" runat="server" Text="Logout"  Visible="false" OnClick="localLogout_Click"/>
                
                </div>
                <div class="text_editor_container">
                <asp:UpdatePanel runat="server" UpdateMode="Conditional"><ContentTemplate>
                
                    <div class="text_editor_outr">
                    
                	<%--<textarea name="textarea" class="jqte-test"></textarea>--%>
                    <asp:TextBox ID="TXTissue" runat="server" CssClass=" txteditor " TextMode="MultiLine" PlaceHolder="Post Issue Here" Height="100px"/>
                        <asp:HtmlEditorExtender ID="HtmlEditorExtender1" runat="server" TargetControlID="TXTissue" EnableSanitization="false">
                          <Toolbar> 
                            <asp:Undo />
                            <asp:Redo />
                            <asp:Bold />
                            <asp:Italic />
                            <asp:Underline />
                            <asp:StrikeThrough />
                            <asp:Subscript />
                            <asp:Superscript />
                            <asp:JustifyLeft />
                            <asp:JustifyCenter />
                            <asp:JustifyRight />
                            <asp:JustifyFull />
                            <asp:RemoveFormat />
                            <asp:Cut />
                            <asp:Copy />
                            <asp:Paste />
                            <asp:ForeColorSelector />
                            <asp:FontNameSelector />
                            <asp:FontSizeSelector />
                        </Toolbar>
                        </asp:HtmlEditorExtender>
                </div>
                       <div class="attach_file">
                    <asp:Button ID="BTNissuePost" runat="server" Text="Post" OnClick="BTNissuePost_Click" />
                    <asp:FileUpload ID="FileUploadIssue" runat="server" Enabled="false" Visible="false"  />
                </div>               
               </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="BTNissuePost" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
                </div>
              </div>
              
               
                  
                
                 <%-- Issues start--%>
             <div class="random_issue">
 <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional"><ContentTemplate>
 <asp:Repeater runat="server" ID="ListIssues" OnItemDataBound="ListIssues_ItemDataBound" OnItemCommand="ListIssues_ItemCommand"><ItemTemplate>    
 <asp:HiddenField ID="HFIssueId" runat="server" Value='<%# Eval("issueId") %>' />                   	
<asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional"><ContentTemplate> 
                  <div class="home_issue_outr">
                	<div class="home_left_pic"><asp:Image ID="IMGprofilePic" runat="server" /></div>
                    <div class="home_right_detail">
                    	<div class="home_right_top">
                            <asp:Label ID="LBLpostedBy" runat="server"/>
                            <asp:Label ID="LBLpstate" runat="server" /> 
                            <asp:Label ID="LBLdt" CssClass="date_time" runat="server" />
                        </div>
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional"><ContentTemplate>  
                            <div class="home_right_top">
                        	<p>Votes By</p>
                            <label><asp:Label ID="LBLfpname" runat="server"/></label>
                            <label><asp:Label ID="LBLspname" runat="server"/></label>
                            <asp:LinkButton ID="LBmore" runat="server" Text="more.." Visible="false" CommandName="more" />
                        </div>
                             <asp:HoverMenuExtender ID="HoverMenuExtender1" runat="server"
                                TargetControlID="LBmore"
                                PopupControlID="PopupMenu"
                                HoverCssClass="popupHover"
                                PopupPosition="Right"
                                OffsetX="0"
                                OffsetY="0"
                                PopDelay="50"
                                 />
                             
                            <asp:Panel CssClass="popupMenu" style="background-color:black;color:white;padding:4px;" ID="PopupMenu"  runat="server" Visible="false">
                              <asp:Label ID="votersName" runat="server" />
                             </asp:Panel>
                        </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="LBmore" EventName="Click" />
                            </Triggers>
                        </asp:UpdatePanel>

                    </div>
                    <div class="issue_outr">
                        <asp:Label ID="LBLIssue" runat="server"/>
                    </div>
                    <div class="likebutton">
                        <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional"><ContentTemplate>
                        <div class="bound1">
                        <%--<i class="icon-thumbs-up"></i>--%><img src="../images/up.png" class="pull-left mg-top5" /><label><asp:Label ID="LBLsupportCount" runat="server"/></label><asp:LinkButton ID="LBsupport" runat="server" Text="Support" CommandName="support"/>
                        <%--<i class="icon-thumbs-down"></i>--%><img src="../images/down.png" class="pull-left mg-top5" /><label><asp:Label ID="LBLdenyCount" runat="server"/></label><asp:LinkButton ID="LBdeny" runat="server" Text="Deny" CommandName="deny"/>
                        <%--<i class="icon-comment"></i>--%><img src="../images/comment.png" class="pull-left mg-top5" /><label><asp:Label ID="LBLcommentCount" runat="server"/></label>
                        </div>
                           </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger EventName="Click" ControlID="LBsupport" />
                                <asp:AsyncPostBackTrigger EventName="Click" ControlID="LBdeny" />
                                <asp:AsyncPostBackTrigger EventName="Click" ControlID="btnPost" />
                            </Triggers>
                        </asp:UpdatePanel>
                            <div class="bound2">
                                <asp:LinkButton ID="LBcomment" runat="server" Text="Comment"/>
                            </div>
                        <asp:UpdatePanel runat="server" UpdateMode="Conditional"><ContentTemplate>
                        <div class="flag">
                            <asp:Image ID="IMG_Report" runat="server" CssClass="pull-left mg-top5" />

                            <asp:LinkButton ID="Report_Abuse" runat="server" CommandName="report" Text="Report Abuse" />
                        </div>
                       </ContentTemplate><Triggers>
                           <asp:AsyncPostBackTrigger ControlID="Report_Abuse" EventName="Click" />
                                         </Triggers></asp:UpdatePanel>

                    </div>
    <%-- Comments start--%>              
          <div class="comment_cont">
                    <asp:Panel ID="Panel1" runat="server">    
     		   <asp:UpdatePanel ID="UpdatePanel5" runat="server" UpdateMode="Conditional"><ContentTemplate>     
                          <div class="user_outer">
                                <asp:Repeater runat="server" ID="ListComments" OnItemCommand="ListComments_ItemCommand" OnItemDataBound="ListComments_ItemDataBound" > <ItemTemplate>     
                                 <div class="img_outer">
                              <asp:Image ID="Image1" runat="server" ImageUrl='<%# DataBinder.Eval(Container.DataItem,"profilePic") %>'/>
                          </div>	
                                      <div class="comm_section">
                                    <div class="name_label">
                                       <asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"firstName") + " " %> '/><asp:Label ID="Label2" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"lastName") %>'/> 
                                     </div>
                             <div class="date_label">
                                 <asp:Label ID="Label3" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"postedOn","{0:d/MMM/yyyy hh:mm tt}") %>'/>
                               </div>
                       <div class="comment_label">
                           <asp:Label ID="Label4" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"comment") %>'/>
                         </div>
                      </div>
                    <asp:HiddenField runat="server" ID="HFcommentId" Value='<%# DataBinder.Eval(Container.DataItem,"commentId") %>' />
                     <asp:UpdatePanel ID="UpdatePanel6" runat="server" UpdateMode="Conditional"><ContentTemplate>
                        <div class="sub_icons"> 
                               <%--<i class="icon icon-thumbs-up"></i>--%><img src="../images/up.png" class="pull-left mg-top5" /><asp:Label runat="server" ID="LBLlikeCount"/><asp:LinkButton ID="LBlike" runat="server" Text="Like" CommandName="like"/> 
                               <%--<i class="icon icon-thumbs-down"></i>--%><img src="../images/down.png" class="mg-top5" /><asp:Label runat="server" ID="LBLdislikeCount"/> <asp:LinkButton ID="LBdislike" runat="server" Text="Dislike" CommandName="dislike"/>
                            <asp:Image ID="IMG_ReportComment" runat="server"/>
                            <asp:LinkButton ID="Report_Abuse_Comment" runat="server" CommandName="reportcomment" Text="Report Abuse" class="mg-left3" />
                        </div>
                    </ContentTemplate>
                         <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="LBlike" EventName="Click" />
                             <asp:AsyncPostBackTrigger ControlID="LBdislike" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="btnPost" EventName="Click" />
                              <asp:AsyncPostBackTrigger ControlID="Report_Abuse_Comment" EventName="Click" />
                         </Triggers>
                     </asp:UpdatePanel>
                   </ItemTemplate></asp:Repeater> 
                    
                    <div class="text_comment">
                            <asp:TextBox ID="txtcomment" runat="server" TextMode="MultiLine" style="width:95%" />
                             <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="txtComment" WatermarkText="Type Comment Here"/>
                        </div>
                       <div class="post_button">
                           <asp:Button ID="btnPost" runat="server" Text="Post" CommandName="post" style=" padding:  3px 15px 3px 15px;" />
                       </div> 
                        
                   
               </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="LBcomment" EventName="Click" />
                    </Triggers>
            	</asp:UpdatePanel>
                         <asp:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="Server"
                         TargetControlID="Panel1"
                         ExpandControlID="LBComment"
                         CollapseControlID="LBComment" 
                         Collapsed="True"
                         SuppressPostBack="true"
                           />        
              </asp:Panel>
              </div>
      </div>
    <%-- Comments end--%>
</ContentTemplate>
</asp:UpdatePanel> 
</ItemTemplate></asp:Repeater>
</ContentTemplate>
 </asp:UpdatePanel> 
               </div>
           
            <%-- Issues end--%>

     
   </div>
         
   </div>
</div>
  
  

    <script>
    $('.jqte-test').jqte();

    // settings of status
    var jqteStatus = true;
    $(".status").click(function () {
        jqteStatus = jqteStatus ? false : true;
        $('.jqte-test').jqte({ "status": jqteStatus })
    });
</script>
        
    </form>
</body>

</html>
