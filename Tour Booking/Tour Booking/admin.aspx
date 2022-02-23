<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="admin.aspx.cs" Inherits="Site.admin" EnableEventValidation="false" %>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css"/>
   
    <title></title>
    <style type="text/css">
        #heade {
            height: 10%;
            color:white;
            background-color:orange;
            width:85%;
            float:right;
            border:1px solid;
            border-radius:10px;
            border-width:2px;
            border-color:black;

        }
        #dash{
            float:left;
            width:15%;
            color:white;
            background-color:black;
            
            height:200%;
            border:1px solid;
            border-width:2px;
            border-color:aqua;
            border-radius:10px;
        }
        #img
        {
            border-radius:50%;
        }
        .border{
            border:1px solid;
            border-radius:20px;
            border-block-color:white;
            border-width:1px;
            height:30px;
        }
        #admins1{
            float:right;
            width:85%;
            height:100%;
            background-color:white;
            border-radius:10px;
            /*border:1px solid;
            border-width:2px;*/
            border-color:black;
        }
        #category1{
             float:right;
            width:85%;
            height:90%;
            background-color:white;
            border-radius:10px;
            /*border:1px solid;
            border-width:2px;*/
            border-color:black;
        }
        #contactus{
                float:right;
            width:85%;
            height:90%;
            background-color:white;
            border-radius:10px;
            /*border:1px solid;
            border-width:2px;*/
            border-color:black;
        }
        #gallery1{
              float:right;
            width:85%;
            height:90%;
            background-color:white;
            border-radius:10px;
          /*  border:1px solid;
            border-width:2px;*/
            border-color:black;
        }
    </style>
</head>
<body>
   <form id="form1" runat="server" >
       <div id="dash" runat="server">
           <br />
                 &nbsp;    <img id="img"  src="images/NidhiMam.jpg" height="50px" width="50px" /> &nbsp; <b><i>Travelo&nbsp<i class="fa fa-plane fa-lg" aria-hidden="true"></i>
</i></b>
           <br /><br />
           <h4 align="center"> Dashboard</h4>
           <br />
           <div id="admin1" runat="server" class="border">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-user fa-lg" aria-hidden="true">&nbsp;<asp:LinkButton ID="adminslink" runat="server" ForeColor="White" OnClick="adminslink_Click" CausesValidation="False"> Add Admins</asp:LinkButton></i>
</div>
           <br />
           <div id="admin_category" runat="server" class="border">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-list-alt fa-lg" aria-hidden="true"> <asp:LinkButton ID="categorylink" runat="server" ForeColor="White" OnClick="categorylink_Click" CausesValidation="False">Category</asp:LinkButton></i>
               </div>
           <br />
           <div id="admin_gallery_image" runat="server" class="border">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-picture-o fa-lg" aria-hidden="true">
               <asp:LinkButton ID="gallerylink" runat="server" ForeColor="White" OnClick="gallerylink_Click" CausesValidation="False">Gallery</asp:LinkButton></i>
               </div>
           <br />
             <div id="contact" runat="server" class="border">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-address-book fa-lg" aria-hidden="true">

               <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" CausesValidation="False" OnClick="LinkButton1_Click">Contact detail</asp:LinkButton></i>
               </div>
                <br />
           <div id="logout" runat="server" class="border">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-sign-out fa-lg">
               <asp:LinkButton ID="logoutlink" runat="server" ForeColor="White" OnClick="logoutlink_Click" CausesValidation="False" >Logout</asp:LinkButton></i>
               </div>
               

       </div>
        <div id="heade" runat="server">
            <h1 align="center" runat="server"> Admin Panel</h1>
        </div>
       <div id="admins1" runat="server">
           <br /><br />
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
    &nbsp;<asp:TextBox ID="Retypepassword" runat="server" type="password" class="form-control" ></asp:TextBox>
  </div>
                &nbsp;&nbsp;&nbsp;&nbsp

  <asp:Button ID="add" runat="server" Text="Add" type="submit" class="btn btn-primary" Width="96px" OnClick="add_Click"></asp:Button>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="clear" runat="server" Text="Clear" class="btn btn-danger" Width="95px" CausesValidation="False" OnClick="clear_Click" />
      
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Doesn't Match" ControlToCompare="password" ControlToValidate="Retypepassword" ForeColor="Red"></asp:CompareValidator>
      
           <br />
           <h2 align="center"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></h2>
           <br />
          <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
               <Columns>
                   <asp:BoundField DataField="admin_name" HeaderText="Admin Name"  />
                   <asp:BoundField DataField="admin_role" HeaderText="Admin_Role" />
                   <asp:ButtonField Text="Edit" />
                   <asp:ButtonField Text="Deactive" />
                   
               </Columns>
           </asp:GridView>--%>
           <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
               <HeaderTemplate>
                   <table align="center" border="1" cellpadding="10px">
                       <tr>
                           <th>Admin Name</th>
                           <th>Admin Role</th>
                           <th>Admin Password</th>
                       </tr>
               </HeaderTemplate>
               <ItemTemplate>
                       <tr>
                           <td  ><%#Eval("admin_name") %> </td>
                           <td ><%#Eval("admin_role") %></td>
                           <td><%#Eval("admin_password") %></td>
                           <td><a   href="editadmin.aspx?id=<%#Eval("admin_name") %>"  CausesValidation="False">Edit
</a></td>
                           <td><a href="deactive.aspx?deactive=<%#Eval("admin_name") %>"  >Deactive</a></td>
                           
                       </tr>
                  
               </ItemTemplate>
               <FooterTemplate>
                   </table>
               </FooterTemplate>
           </asp:Repeater>

      
      </div>
           
       <div id="category1" runat="server">
           <h1 align="center">Add Category</h1>
            <div class="mb-3 col-12">
    <label for="exampleInputEmail1" class="form-label">Category Name:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="admin_name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
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
    <label for="exampleInputPassword1" class="form-label">location1 Price:<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="loc1_price" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                   </label>
    &nbsp;<asp:TextBox ID="loc1_price" runat="server"  class="form-control" ></asp:TextBox>
  </div>
           <div class="mb-3 col-12">
    <label for="exampleInputPassword1" class="form-label">location2 Price:<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="loc2_price" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                   </label>
    &nbsp;<asp:TextBox ID="loc2_price" runat="server"  class="form-control" ></asp:TextBox>
  </div>
                &nbsp;&nbsp;&nbsp;&nbsp

  <asp:Button ID="cat_add" runat="server" Text="Add" type="submit" class="btn btn-primary" Width="96px" OnClick="cat_add_Click" ></asp:Button>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="cat_clear" runat="server" Text="Clear" class="btn btn-danger" Width="95px" CausesValidation="False" OnClick="cat_clear_Click" />
      
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
           <br /><br />
           <h3 align="center"> <asp:Label ID="catmsg" runat="server" Text="" Visible="false"></asp:Label> <asp:Label ID="imgmsg" runat="server" Visible="False" ForeColor="Red"></asp:Label></h3>

           <asp:Repeater ID="Repeater2" runat="server" OnItemCommand="Repeater1_ItemCommand">
               <HeaderTemplate>
                   <table align="center" border="1" cellpadding="10px" >
                       <tr>
                           <th>Category Name</th>
                           <th>Category Image</th>
                           <th>Location 1</th>
                           <th>Location 2</th>
                           <th>Price of Location1</th>
                           <th>Price of Location2</th>
                            
                       </tr>
               </HeaderTemplate>
               <ItemTemplate>
                       <tr>
                           <td  ><%#Eval("cat_name") %> </td>
                           <td >
                               <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("cat_img") %>' Height="50px" Width="50px"/></td>
                           <td><%#Eval("location_1") %></td>
                           <td><%#Eval("location_2") %></td>
                           <td><%#Eval("location1_price") %></td>
                           <td><%#Eval("location2_price") %></td>
                           <td><a   href="editcategory.aspx?id=<%#Eval("cat_name")%>"  CausesValidation="False">Edit
</a></td>
                           <td><a href="deletecategory.aspx?name=<%#Eval("cat_name") %>"  >Deactive</a></td>
                           
                       </tr>
                  
               </ItemTemplate>
               <FooterTemplate>
                   </table>
               </FooterTemplate>
           </asp:Repeater>

       </div>
       <div id="gallery1" runat="server">

            <h1 align="center">Add Places</h1>
            <div class="mb-3 col-12">
    <label for="exampleInputEmail1" class="form-label">Place Name:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="place_name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="place_name" runat="server"  class="form-control"  aria-describedby="emailHelp"></asp:TextBox>
  </div>
               <div class="mb-3 col-12">
                       <label for="exampleInputPa`ssword1" class="form-label">Place Image:<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="fileupload2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</label>
                   <asp:FileUpload ID="fileupload2" runat="server" class="form-control" type="file"  />
                    <div class="mb-3 col-12">
    <label for="exampleInputEmail1" class="form-label">Price :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="price" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="price" runat="server"  class="form-control"  aria-describedby="emailHelp"></asp:TextBox>
  </div>
                   <br /><br />
                   &nbsp;
                   <asp:Button ID="gallery_ad" runat="server" Text="Add" type="submit" 
                           class="btn btn-primary" Width="96px" onclick="gallery_ad_Click"  ></asp:Button>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="gallery_clear" runat="server" Text="Clear" class="btn btn-danger" Width="95px" CausesValidation="False" OnClick="gallery_clear_Click"  />

                   <h3 align="center"><asp:Label ID="galmsg" runat="server" Visible="false"></asp:Label><asp:Label ID="imgmsg1" runat="server" Visible="False" ForeColor="Red"></asp:Label></h3>

               </div>
            <asp:Repeater ID="Repeater3" runat="server" OnItemCommand="Repeater1_ItemCommand">
               <HeaderTemplate>
                   <table align="center" border="1" cellpadding="10px" >
                       <tr>
                           <th>Places Name</th>
                           <th>Places Image</th>
                           <th>Price </th>
                          
                       </tr>
               </HeaderTemplate>
               <ItemTemplate>
                       <tr>
                           <td  ><%#Eval("gallery_image_name") %> </td>
                           <td >
                               <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("gallery_imgpath") %>' Height="50px" Width="50px"/></td>
                           <td><%#Eval("price") %></td>
                          
                           <td><a   href="editgallery.aspx?id=<%#Eval("gallery_image_name")%>"  CausesValidation="False">Edit
</a></td>
                           <td><a href="deletegallery.aspx?name=<%#Eval("gallery_image_name") %>"  >Delete</a></td>
                           
                       </tr>
                  
               </ItemTemplate>
               <FooterTemplate>
                   </table>
               </FooterTemplate>
           </asp:Repeater>
       </div>
       <div id="contactus" runat="server">
                      <h2 align="center">Contact Form Detail </h2>
                      <br /><br />

           <asp:Repeater ID="Repeater4" runat="server">
               <HeaderTemplate>
                   <table align="center" border="1" cellpadding="20px" >
                    <tr>
                        <th>Username</th>
                        <th>User's Email</th>
                        <th>User's Contact Number</th>
                        <th>User's Message</th>
                    </tr>

               </HeaderTemplate>
               <ItemTemplate>
                   <tr>
                       <td><%#Eval("unm") %></td>
                       <td><%#Eval("email") %></td>
                       <td><%#Eval("number") %></td>
                       <td><%#Eval("msg") %></td>
                   </tr>

               </ItemTemplate>
               <FooterTemplate>
                   </table>
               </FooterTemplate>

           </asp:Repeater>
           

       </div>
   </form>
</body>
</html>
