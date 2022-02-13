<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Tour.Master" CodeBehind="category.aspx.cs" Inherits="Site.category" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/bootstrap.css" rel="stylesheet" />
    <style>
        .catego{
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
    <div id="catbook" class="catego" runat="server">
        <br />
        <table align="center" class="">
         
           <tr>
               <td>
                   <asp:Label ID="lbPlace_name" runat="server"  Text="Category Name"></asp:Label>
                  
                 
                  
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
                <td><asp:Label ID="tou_name" runat="server"  Text="Place Name "></asp:Label></td>
            </tr>
           <tr>
               <td>
                   <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" ViewStateMode="Enabled" AutoPostBack="True">

                   </asp:DropDownList>
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
        <h1> <asp:Label ID="msgcate" runat="server" Text="You are Not Login" ForeColor="Red" Visible="false"></asp:Label></h1>
    </center>
</asp:Content>