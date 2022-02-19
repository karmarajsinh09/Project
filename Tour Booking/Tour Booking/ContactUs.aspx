<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Tour.Master" CodeBehind="ContactUs.aspx.cs" Inherits="Site.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
            <h1 align="center" style="padding:100px;"> This is Contact Us Page </h1>
<div class="us">
   <br /><br /><br />
    
    <table align="center" class="">
         
           <tr>
               <td>
                   <asp:Label ID="lglbemail" runat="server" Text="User Name"></asp:Label>
                  
                   <b><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="unm" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></b>
                  
               </td>
           </tr>
           <tr>
               <td>
                   <asp:TextBox ID="unm" runat="server" width="500px" required=""></asp:TextBox>
               </td>
             
           </tr>
           <tr>
               <td>
                   <asp:Label ID="lglbpassword" runat="server" Text="Email: "></asp:Label>
                  <b> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator></b>

               </td>
           </tr>
           <tr>
               <td>
                   <asp:TextBox ID="email" runat="server" Width="500px" TextMode="Email" required=""></asp:TextBox>
               </td>
           </tr>
           
                  <tr>
               <td>
                   <asp:Label ID="Label1" runat="server" Text="Contact Number: "></asp:Label>
                  <b> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="number" ForeColor="Red"></asp:RequiredFieldValidator></b>

               </td>
           </tr>
           <tr>
               <td>
                   <asp:TextBox ID="number" runat="server" Width="500px" TextMode="Number" required=""></asp:TextBox>
               </td>
           </tr>
         <tr>
               <td>
                   <asp:Label ID="Label2" runat="server" Text="Message: "></asp:Label>
                  <b> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="msg" ForeColor="Red"></asp:RequiredFieldValidator></b>

               </td>
           </tr>
           <tr>
               <td>
                   <asp:TextBox ID="msg" runat="server" Width="500px" height="80px" required="" TextMode="MultiLine"></asp:TextBox>
               </td>
           </tr>
           <tr>

               <td align="center">
                  <asp:Button ID="lgbtnlogin" runat="server" Text="Submit" CssClass="btn btn-primary btn-block" Width="500px" OnClick="lgbtnlogin_Click"  />
               </td>
           </tr>
           <tr>
             
               <td align="center">
                  <asp:Button ID="lgbtnClear" runat="server" Text="Clear" CssClass="btn btn-danger btn-block" Width="500px" Height="49px" CausesValidation="False" UseSubmitBehavior="False" OnClick="lgbtnClear_Click"  />
               </td>
           </tr>
        <tr><td align="center">
           <h3> <asp:Label ID="msg1" runat="server" ForeColor="Red"></asp:Label></h3></td></tr>
        </table>
    </div>
    
  
</asp:Content>