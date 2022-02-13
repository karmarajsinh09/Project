<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deletegallery.aspx.cs" Inherits="Site.deletegallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 align="center">Edit Places</h1>
            <div class="mb-3 col-12">
    <label for="exampleInputEmail1" class="form-label">Place Name:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="place_name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="place_name" runat="server"  class="form-control"  aria-describedby="emailHelp" ReadOnly="true"></asp:TextBox>
  </div>
               <div class="mb-3 col-12">
                       
                   <asp:Image ID="Image1" runat="server" height="100px" Width="100px" />
                    <div class="mb-3 col-12">
    <label for="exampleInputEmail1" class="form-label">Place Name:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="price" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="price" runat="server"  class="form-control"  aria-describedby="emailHelp" ReadOnly="true"></asp:TextBox>
                   <br /><br />
                   &nbsp;
                 
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="gallery_clear" runat="server" Text="Delete" class="btn btn-danger" Width="95px" CausesValidation="False" OnClick="gallery_clear_Click"  />

                   <h3 align="center"><asp:Label ID="galmsg" runat="server" Visible="false"></asp:Label></h3>

               </div>
                   </div>
        </div>
    </form>
</body>
</html>
