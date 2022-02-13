<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editgallery.aspx.cs" Inherits="Site.editgallery" %>

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
&nbsp;<asp:TextBox ID="place_name" runat="server"  class="form-control"  aria-describedby="emailHelp"></asp:TextBox>
  </div>
               <div class="mb-3 col-12">
                       <label for="exampleInputPa`ssword1" class="form-label">Place Image:<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="fileupload2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</label>
                   <asp:FileUpload ID="fileupload2" runat="server" class="form-control" type="file"  />
                   <br /><br />
                   &nbsp;
                   <asp:Button ID="gallery_add" runat="server" Text="Edit" type="submit" class="btn btn-primary" Width="96px" OnClick="gallery_add_Click"  ></asp:Button>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="gallery_clear" runat="server" Text="Clear" class="btn btn-danger" Width="95px" CausesValidation="False" OnClick="gallery_clear_Click"  />

                   <h3 align="center"><asp:Label ID="galmsg" runat="server" Visible="false"></asp:Label></h3>

               </div>
        </div>
    </form>
</body>
</html>
