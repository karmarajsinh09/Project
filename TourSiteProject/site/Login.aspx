<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Tour.Master"  CodeBehind="Login.aspx.cs" Inherits="Site.Login" %>


 
       <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
           <div class="col-lg-12">
            <br /><br /><br />
            <h1 align="center"> <asp:Label ID="lgheadinglbl" runat="server" Text="Login Page"></asp:Label></h1>
       <table align="center" class="">
         
           <tr>
               <td>
                   <asp:Label ID="lglbemail" runat="server" Text="Email Address:"></asp:Label>
                  
                   <b><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="lgemail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></b>
                  
               </td>
           </tr>
           <tr>
               <td>
                   <asp:TextBox ID="lgemail" runat="server" width="500px" TextMode="Email" required=""></asp:TextBox>
               </td>
             
           </tr>
           <tr>
               <td>
                   <asp:Label ID="lglbpassword" runat="server" Text="Password: "></asp:Label>
                  <b> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="lgpassword" ForeColor="Red"></asp:RequiredFieldValidator></b>

               </td>
           </tr>
           <tr>
               <td>
                   <asp:TextBox ID="lgpassword" runat="server" Width="500px" TextMode="Password" required=""></asp:TextBox>
               </td>
           </tr>
           <tr>

               <td align="center">
                  <asp:Button ID="lgbtnlogin" runat="server" Text="Login" CssClass="btn btn-primary btn-block" Width="500px" OnClick="lgbtnlogin_Click" />
               </td>
           </tr>
           <tr>
             
               <td align="center">
                  <asp:Button ID="lgbtnClear" runat="server" Text="Clear" CssClass="btn btn-danger btn-block" Width="500px" Height="49px" CausesValidation="False" UseSubmitBehavior="False" OnClick="lgbtnClear_Click" />
               </td>
           </tr>
           <tr>
               <td colspan="2" align="center">
                   <asp:LinkButton ID="reglink" runat="server" OnClick="reglink_Click" CausesValidation="False"><h4><u>Register Here</u></h4></asp:LinkButton>
               </td>
           </tr>
        
       </table>
               <h1 align="center">
                   <asp:Label ID="lgmsg" runat="server" Text="
                       Your are Loged in" ForeColor="#33CC33"></asp:Label></h1>
               <h1 align="center">
                   <asp:Label ID="lgmsg2" runat="server" Text="
                       Your are not registered " ForeColor="Red"></asp:Label></h1>
</div>
            <div id="logs"></div>
            </asp:Content>
  
   