<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deletecategory.aspx.cs" Inherits="Site.deletecategory" %>

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
    <label for="exampleInputEmail1" class="form-label">Category Name:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="cat_name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="cat_name" runat="server"  class="form-control"  aria-describedby="emailHelp" ReadOnly="true"></asp:TextBox>
  </div>
               <div class="mb-3 col-12">
                       
                   <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
                   &nbsp;

               </div>
  <div class="mb-3 col-12">
    <label for="exampleInputPassword1" class="form-label">Location 1:<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="loc_1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      </label>
    &nbsp;<asp:TextBox ID="loc_1" runat="server"  class="form-control" ReadOnly="true" ></asp:TextBox>
  </div>
               <div class="mb-3 col-12">
    <label for="exampleInputPassword1" class="form-label">location 2:<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="loc_2" ErrorMessage="*" ForeColor="Red" ></asp:RequiredFieldValidator>
                   </label>
    &nbsp;<asp:TextBox ID="loc_2" runat="server"  class="form-control" ReadOnly="true" ></asp:TextBox>
  </div>
             <div class="mb-3 col-12">
    <label for="exampleInputPassword1" class="form-label">location1  Price:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="loc1_price" ErrorMessage="*" ForeColor="Red" ></asp:RequiredFieldValidator>
                   </label>
    &nbsp;<asp:TextBox ID="loc1_price" runat="server"  class="form-control" ReadOnly="true" ></asp:TextBox>
  </div>
            <br />
            <div class="mb-3 col-12">
    <label for="exampleInputPassword1" class="form-label">location2  Price:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="loc2_price" ErrorMessage="*" ForeColor="Red" ></asp:RequiredFieldValidator>
                   </label>
    &nbsp;<asp:TextBox ID="loc2_price" runat="server"  class="form-control" ReadOnly="true" ></asp:TextBox>
  </div>
            <br />
                &nbsp;&nbsp;&nbsp;&nbsp
             <asp:Button ID="cat_delete" runat="server" Text="Delete" class="btn btn-danger" Width="95px" CausesValidation="False" OnClick="cat_delete_Click"  />
          <h2 align="center">  <asp:Label ID="delmsg" runat="server" Visible="false"></asp:Label></h2>
        </div>
    </form>
</body>
</html>
