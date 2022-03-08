<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editcategory.aspx.cs" Inherits="Site.editcategory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <h1 align="center">Edit Category</h1>
            <div class="mb-3 col-12">
    <label for="exampleInputEmail1" class="form-label">Category Name:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="cat_name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="cat_name" runat="server"  class="form-control"  aria-describedby="emailHelp"></asp:TextBox>
  </div>
               <div class="mb-3 col-12">
                       <label for="exampleInputPassword1" class="form-label">Category Image:<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="fileupload" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</label>
                   <asp:FileUpload ID="fileupload" runat="server" class="form-control" type="file"  />
                   &nbsp;

               </div>
  <div class="mb-3 col-12">
    <label for="exampleInputPassword1" class="form-label">Location 1:<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="loc_1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      </label>
    &nbsp;<asp:TextBox ID="loc_1" runat="server"  class="form-control" ></asp:TextBox>
  </div>
               <div class="mb-3 col-12">
    <label for="exampleInputPassword1" class="form-label">location 2:<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="loc_2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                   </label>
    &nbsp;<asp:TextBox ID="loc_2" runat="server"  class="form-control" ></asp:TextBox>
  </div>
             <div class="mb-3 col-12">
    <label for="exampleInputPassword1" class="form-label">location1 Price :<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="loc1_price" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                   </label>
    &nbsp;<asp:TextBox ID="loc1_price" runat="server"  class="form-control" ></asp:TextBox>
  </div>
            <div class="mb-3 col-12">
    <label for="exampleInputPassword1" class="form-label">location2 Price:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="loc2_price" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                   </label>
    &nbsp;<asp:TextBox ID="loc2_price" runat="server"  class="form-control" ></asp:TextBox>
  </div>
                &nbsp;&nbsp;&nbsp;&nbsp

  <asp:Button ID="cat_edit" runat="server" Text="Edit" type="submit" class="btn btn-primary" Width="96px" OnClick="cat_add_Click" ></asp:Button>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="cat_clear" runat="server" Text="Clear" class="btn btn-danger" Width="95px" CausesValidation="False" OnClick="cat_clear_Click" />
        <br /><br />
           <h3 align="center"> <asp:Label ID="catmsg" runat="server" Text="" Visible="false"></asp:Label> <asp:Label ID="imgmsg" runat="server" Visible="False" ForeColor="Red"></asp:Label></h3>
        </div>
    </form>
</body>
</html>
