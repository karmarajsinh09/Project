<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editadmin.aspx.cs" Inherits="Site.editadmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="mb-3 col-12">
    <label for="exampleInputEmail1" class="form-label">Admin Name:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="admin_name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="admin_name" runat="server"  class="form-control"  aria-describedby="emailHelp"></asp:TextBox>
  </div>
               <div class="mb-3 col-12">
                       <label for="exampleInputPassword1" class="form-label">Admin Role:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="admin_role" ErrorMessage="*" ForeColor="Red" InitialValue="Select Admin Role"></asp:RequiredFieldValidator>
                       </label>
                   &nbsp;<asp:DropDownList ID="admin_role" runat="server" class="form-control">
                       <asp:ListItem>Select Admin Role</asp:ListItem>
                       <asp:ListItem>Super Admin</asp:ListItem>
                       <asp:ListItem>Admin</asp:ListItem>
                       <asp:ListItem>Editor</asp:ListItem>
                       <asp:ListItem>Reader</asp:ListItem>
                       </asp:DropDownList>

               </div>
  <div class="mb-3 col-12">
    <label for="exampleInputPassword1" class="form-label">Password:<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      </label>
    &nbsp;<asp:TextBox ID="password" runat="server"  class="form-control" ></asp:TextBox>
  </div>
               <div class="mb-3 col-12">
    <label for="exampleInputPassword1" class="form-label">Retype Password:<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Retypepassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                   </label>
    &nbsp;<asp:TextBox ID="Retypepassword" runat="server"  class="form-control" ></asp:TextBox>
  </div>
                &nbsp;&nbsp;&nbsp;&nbsp

  <asp:Button ID="add" runat="server" Text="Edit" type="submit" class="btn btn-primary" Width="96px" OnClick="add_Click"></asp:Button>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="clear" runat="server" Text="Clear" class="btn btn-danger" Width="95px" CausesValidation="False" OnClick="clear_Click" />
      
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Doesn't Match" ControlToCompare="password" ControlToValidate="Retypepassword" ForeColor="Red"></asp:CompareValidator>
      
        </div>
    </form>
</body>
</html>
