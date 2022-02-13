<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Site.adminlogin" EnableEventValidation="false" %>

<!DOCTYPE html>
<%--LAPTOP-J0FBUPVC\SQLEXPRESS  server name--%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <style>
        #head{
            background-color:black;
            height:70px;
            width:100%;
            border:1px solid;
            border-radius:10px;
            border-width:2px;
            border-color:aqua;
            color:white;



        }
    </style>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div id="head"><h1 align="center">Admin Login Page</h1></div>
            <div class="col-lg-12">
            <br /><br /><br />
                
               
            <h1 align="center"> <asp:Label ID="lgheadinglbl" runat="server" Text="Login Page"></asp:Label></h1>
       <table align="center" class="">
         
           <tr>
               <td>
                   <asp:Label ID="lglbemail" runat="server" Text="Admin Name"></asp:Label>
                  
                   <b><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="lgemail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></b>
                  
               </td>
           </tr>
           <tr>
               <td>
                   <asp:TextBox ID="lgemail" runat="server" width="500px" required=""></asp:TextBox>
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
                                      <asp:LinkButton ID="home" runat="server"  CausesValidation="False" OnClick="home_Click"><h4><u>Goto Home</u></h4></asp:LinkButton>

                   &nbsp;</td>
           </tr>
        
       </table>
               <h1 align="center">
                   <asp:Label ID="lgmsg" runat="server" Text="
                       Your are Loged in" ForeColor="#33CC33"></asp:Label></h1>
               <h1 align="center">
                   <asp:Label ID="lgmsg2" runat="server" Text="
                       Your are not registered " ForeColor="Red"></asp:Label></h1>
</div>

        </div>
         <footer id="footer1"  align="center">
           <br />
            &copy; All Right Reserved By <i><b>Tour Trip</b></i><br /><br />
             </footer>
    </form>
</body>
</html>
