<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Tour.Master" CodeBehind="Default.aspx.cs" Inherits="Site.WebForm1" %>
<%--LAPTOP-J0FBUPVC\SQLEXPRESS--%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="header">
    <h1 id="pose"> <asp:Label ID="heading" runat="server" Text="Welcome To Our Site"></asp:Label><asp:Label ID="sitename" runat="server" Text=" Travelo"></asp:Label> <asp:Label ID="user" runat="server" Text=" user"></asp:Label><i style="color:white;" class="fa fa-plane fa-lg" aria-hidden="true"></i>
</h1>
            </section>
   
        
        <div style="background-color:aqua;">
            <br />
    <div id="homes1">
        <asp:Label ID="lbuser" runat="server" Text="Welcome "></asp:Label>
        <h2>
            
            <b>
            <asp:Label ID="lbcategory" runat="server" Text="Category : "></asp:Label></b></h2>
        
        <br />

        <asp:Repeater ID="Repeater1" runat="server" >


            <ItemTemplate>
                &nbsp;

               <a href="category.aspx?cat_name=<%#Eval("cat_name") %>">
                   <asp:Image ID="cat1mg" runat="server" Height="200px" Width="230px" ImageUrl='<%#Eval("cat_img") %>' Style="margin-left: 70px; margin-top: 10px; border-radius: 50px; border: 1px solid; border-width: 4px;" AlternateText='<%#Eval("cat_name") %>' />

               </a>&nbsp;
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("cat_name") %>' Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="Medium"></asp:Label>
            </ItemTemplate>

            

        </asp:Repeater>
    </div>
            <br />
            <br />
        </div>
   
    
        <div style="background-color:aquamarine">
                        <br />

    <div class="gallery1">

<h2>
        <asp:Label ID="Label2" runat="server" Text="Gallery"></asp:Label></h2>

   
        <asp:Repeater ID="Repeater2" runat="server">
            <ItemTemplate>
                <%--gallery.aspx?galname=<%#eval("gallery_image_name") %>--%>
                <a href="#">
                    <asp:Image ID="Image1" runat="server" Style="margin-left:70px; margin-top:50px; border-radius:50px; border:1px solid; border-width:4px;"
                        ImageUrl='<%#Eval("gallery_imgpath") %>' Height="350px" Width="350px" />
                </a>&nbsp;
                <asp:Label ID="Label3" runat="server" Text='<%#Eval("gallery_image_name") %>' Font-Bold="True" Font-Italic="True" Font-Size="Medium"></asp:Label>
                &nbsp;Rs. <%#Eval("price") %>
            </ItemTemplate>
            
        </asp:Repeater>
        <br />
        </div>
    <br />
    <br />
        </div>
       
<%--       

</body>
</html>--%>
    </asp:Content>
