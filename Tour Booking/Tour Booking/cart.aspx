<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Tour.Master" CodeBehind="cart.aspx.cs" Inherits="Site.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/bootstrap.css" rel="stylesheet" />
    
    <div id="cart" runat="server" align="center">
        <br /><br /><br />
    <asp:Repeater ID="Repeater1" runat="server">
        <HeaderTemplate>
            <h1 align="center"> Cart Page</h1>
            <table border="1" align="center">
              <tr>
                  <th>Place Name</th>
            <th>Place Image</th>
            <th>Price</th>
              </tr>
                </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%#Eval("place_name") %></td>
                <td><asp:Image ID="img" runat="server" ImageUrl='<%#Eval("place_imgpath") %>' Height="70px" Width="70px" /></td>
                <td>Rs. <%#Eval("price") %> </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
         <td>  <asp:Button ID="purchase" align="left" Text="Purchase" runat="server" class="btn btn-warning" OnClick="purchase_Click" CausesValidation="False" /></td> <td colspan="2" align="Right">Total Rs. </td><td colspan="2" align="right"><%#sum() %></td>
            </table>
        </FooterTemplate>

    </asp:Repeater>
         
    
        <br />
        <br />
        
    
</div>
    <br /><br /><br />
  <h1> <center> <asp:Label ID="msgcart"  runat="server" Text="You are not login " Visible="false" ForeColor="Red"></asp:Label>
    <asp:Label ID="msgcart1"  runat="server" Text="Your cart is empty  " Visible="false" ForeColor="Red"></asp:Label></center></h1>
</asp:Content>
