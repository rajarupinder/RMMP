<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" type="text/css" href="css/style1.css" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
     

    <div class="rating">
      <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always"><ContentTemplate>
                <div class="rating_heading">
                    <h4>Rating</h4>
                </div>
                  <div class="rating_inner">
                      <div class="rating_inner_1">
                         <div class="icon-heart">
                             <asp:Image ID="Imag" runat="server" ImageUrl="~/images/heart.png"/>
                        </div>
                      <div class="rating_star">
                            <asp:Label ID="Label1" runat="server" Text="Health"/>
                      </div>
                          <div class="div_stars">
                              <asp:Rating ID="Rating1" runat="server" CurrentRating="0" MaxRating="5" StarCssClass="ratingStar" WaitingStarCssClass="savedRatingStar"
                                 FilledStarCssClass="filledRatingStar" EmptyStarCssClass="emptyRatingStar" OnChanged="Rating1_Changed" AutoPostBack="true" />
                          </div>

                      <div class="rating_avg">
                            <asp:Label ID="LBLrating1" runat="server" Text="0"/>
                      </div>
                  </div>
                      <div class="rating_inner_1">
                          <div class="icon-heart">
                             <asp:Image ID="Image2" runat="server" ImageUrl="~/images/education.png" />
                         </div>
                     <div class="rating_star">
                         <asp:Label ID="Label2"  runat="server" Text="Education"/>
                     </div>
                          <div class="div_stars">
                              <asp:Rating ID="Rating2" runat="server" CurrentRating="0" MaxRating="5" StarCssClass="ratingStar" WaitingStarCssClass="savedRatingStar"
                                 FilledStarCssClass="filledRatingStar" EmptyStarCssClass="emptyRatingStar" OnChanged="Rating2_Changed" AutoPostBack="true"  />
                          </div>
                     <div class="rating_avg">
                          <asp:Label ID="LBLrating2" runat="server" Text="0"/>
                     </div>
                   </div>
                       <div class="rating_inner_1">
                          <div class="icon-heart">
                             <asp:Image ID="Image3" runat="server" ImageUrl="~/images/infrastructure.png" />
                         </div>
                     <div class="rating_star">
                          <asp:Label ID="Label3" runat="server" Text="Infrastructure"/>
                     </div>
                           <div class="div_stars">
                              <asp:Rating ID="Rating3" runat="server" CurrentRating="0" MaxRating="5" StarCssClass="ratingStar" WaitingStarCssClass="savedRatingStar"
                                 FilledStarCssClass="filledRatingStar" EmptyStarCssClass="emptyRatingStar" OnChanged="Rating3_Changed" AutoPostBack="true"    />
                          </div>
                     <div class="rating_avg">
                          <asp:Label ID="LBLrating3" runat="server" Text="0"/>
                     </div>
                   </div>

                  </div>
     </ContentTemplate>
          <Triggers>
               <asp:AsyncPostBackTrigger ControlID="Rating1" />
                 <asp:AsyncPostBackTrigger ControlID="Rating2" />
                 <asp:AsyncPostBackTrigger ControlID="Rating3" />
          </Triggers>
      </asp:UpdatePanel>
   </div>
    </form>
</body>
</html>
