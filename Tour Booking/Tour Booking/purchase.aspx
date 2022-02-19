<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Tour.Master" CodeBehind="purchase.aspx.cs" Inherits="Site.purchase" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/bootstrap.css" rel="stylesheet" />
    
    <div id="purchase1" runat="server" align="center">
    <asp:Repeater ID="Repeater1" runat="server">
        <HeaderTemplate>
            <h1>Your Bill is:</h1>
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
                <td><asp:Image ID="img" runat="server" ImageUrl='<%#Eval("place_imgpath") %>' /></td>
                <td><%#Eval("price") %></td>
               
            </tr>
        </ItemTemplate>
        <FooterTemplate>
             <td colspan="2" align="left">Total Rs. </td><td colspan="2" align="right"><%#sum() %></td>
            </table>
            </table>
        </FooterTemplate>

    </asp:Repeater>
                   

        </div>
    </asp:Content>