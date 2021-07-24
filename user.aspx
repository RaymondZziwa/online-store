<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="BABY_COLLECTION.user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Users</title>
     <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <style>
      #contact::-webkit-outer-spin-button,
      #contact::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
      }
        .auto-style1 {
            margin-left: 88px;
        }
    </style>
</head>
<body style="background-color: #22303c">
    <form id="form1" runat="server">
        <div class="container-fluid">
      <div
        class="card"
        style="
          width: 30%;
          margin-right: 5%;
          background-color: #15202b;
          margin-left: 5%;
        "
      >
        <div class="card-header white">
          <h5
            class="font-weight-bold mb-0"
            style="color: white; text-align: center"
          >
            Manage Registered UsersInfo
          </h5>
        </div>

        <div class="card-body">
          <div class="form-floating mb-3">
            <asp:TextBox type="text"  class="form-control" ID="uname" runat="server"  placeholder="UserName"></asp:TextBox>
            <label for="uname">UserName</label>
          </div>
          <div class="form-floating mb-3">
            <asp:TextBox type="text"  class="form-control" ID="fname" runat="server"  placeholder="First Name"></asp:TextBox>
            <label for="fname">First Name</label>
          </div>
          <div class="form-floating mb-3">
             <asp:TextBox type="text"  class="form-control" ID="lname" runat="server"  placeholder="Last Name"></asp:TextBox>
            <label for="lname">Last Name</label>
          </div>
          <div class="form-floating mb-3">
            <asp:TextBox type="email"  class="form-control" ID="email" runat="server"  placeholder="name@example.com"></asp:TextBox>
            <label for="email">Email address</label>
          </div>
          <div class="form-floating mb-3">
            <asp:TextBox type="number"  class="form-control" ID="contact" runat="server"  placeholder="PhoneNumber" minlength="10" MaxLength="10"></asp:TextBox>
            <label for="contact">PhoneNumber</label>
          </div>
          <div class="form-floating mb-3">
            <asp:TextBox type="text"  class="form-control" ID="city" runat="server"  placeholder="City"></asp:TextBox>
            <label for="city">City</label>
          </div>
          <div class="form-floating mb-3">
            <asp:TextBox type="text"  class="form-control" ID="address" runat="server"  placeholder="Address"></asp:TextBox>
            <label for="address">Address</label>
          </div>
          <div class="form-floating mb-3">
            <asp:TextBox type="password"  class="form-control" ID="pwd" runat="server"  placeholder="Password"></asp:TextBox>
            <label for="pwd">Password</label>
          </div>
        </div>

        <div class="card-footer white">
          &nbsp;&nbsp;
          <asp:Button ID="AddUser" runat="server" Text="Add"  class="btn btn-success btn-large" OnClick="AddUser_Click"/> 
          &nbsp; 
          <asp:Button ID="DeleteUser" runat="server" Text="Delete"  class="btn btn-danger btn-large" OnClick="DeleteUser_Click"/>
          &nbsp;
          <asp:Button ID="UpdateUserInfo" runat="server" Text="Update"  class="btn btn-warning btn-large" OnClick="UpdateUserInfo_Click"/>
          &nbsp;
          <asp:Button ID="SearchUser" runat="server" Text="Search"  class="btn btn-primary btn-large" OnClick="SearchUser_Click"/>
        </div>
      </div>
            <br />
            <br />
       <div class="records" style="color:white;text-align:center">
           <asp:GridView ID="GridView1" runat="server"></asp:GridView>
       </div>
      <!--End of Card-->
        <div class="card-footer" style="text-align:center">
            <a href="Control Panel.aspx"><button type="button" class="btn btn-outline-light">Go back to dashboard</button></a>
        </div>
    </div>
    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
      integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
      integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
      crossorigin="anonymous"
    ></script>
    </form>    
</body>
</html>
