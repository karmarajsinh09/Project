<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Tour.Master" CodeBehind="gallery.aspx.cs" Inherits="Site.gallery" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/bootstrap.css" rel="stylesheet" />
    <style>
        .gall{
             height: 500px;
    border: 1px solid;
    border-width: 2px;
    border-radius: 100px;
    width: 600px;
    margin: 0 auto;
    margin-bottom: 70px;
        }
    </style>
    <h2 align="center">&nbsp;</h2>
    <br /><br /><br />
    <div id="galbook" class="gall" runat="server">
        <br />
        <table align="center" class="">
         
           <tr>
               <td>
                   <asp:Label ID="lbPlace_name" runat="server"  Text="Place Name"></asp:Label>
                  
                 
                  
               </td>
           </tr>
           <tr>
               <td>
                   <asp:TextBox ID="placename" runat="server" class="form-control" width="500px" required="" ReadOnly="True"></asp:TextBox>
               </td>
             
           </tr>
           <tr>
               <td>
                   <asp:Label ID="lbimage" runat="server"  Text="Image: "></asp:Label>
                 

               </td>
           </tr>
           <tr>
               <td>
                   <asp:Image ID="place_image" runat="server"  Height="100px" Width="100px" />
               </td>
           </tr>
           
                  <tr>
               <td>
                   <asp:Label ID="lbprice" runat="server"  Text="Price : "></asp:Label>
                

               </td>
           </tr>
           <tr>
               <td>
                   <asp:TextBox ID="price" runat="server" class="form-control" Width="500px" TextMode="Number" required="" ReadOnly="True"></asp:TextBox>
               </td>
           </tr>
         
           <tr>

               <td align="center">
                  <asp:Button ID="book" runat="server" Text="book" class="form-control" CssClass="btn btn-primary btn-block" Width="500px" OnClick="book_Click"    />
               </td>
           </tr>
           <tr>
             
               <td align="center">
                  <asp:Button ID="cancel" runat="server" class="form-control" Text="cancel" CssClass="btn btn-danger btn-block" Width="500px" Height="49px" CausesValidation="False" UseSubmitBehavior="False" OnClick="cancel_Click"   />
               </td>
           </tr>
       
        </table>

    </div>
    <br /><br /><br />
    <center>
    <h3>  <asp:Label ID="msg1" runat="server" ForeColor="Red"></asp:Label></h3>
        </center>
    <br />
    <center>
    <asp:LinkButton ID="home" runat="server" OnClick="home_Click" Visible="False">Go To Login Page</asp:LinkButton></center>
</asp:Content>