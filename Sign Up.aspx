<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign Up.aspx.cs" Inherits="BABY_COLLECTION.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
    @font-face {
  font-family: "RobotoRegular";
  src: url(../fonts/RobotoCondensed-Regular_0.ttf);
}
body {
  margin: 0;
  padding: 0;
  background-image:url("imgs/cart.jpg");
  background-size:cover;
  background-repeat:no-repeat;
  font-family: "RobotoRegular";
}
p, h1, h2, h3, h4, h5, h6 {
  padding: 0;
  margin: 0;
}
img {
  max-width: 100%;
  height: auto;
}

/* Container
================================================== */
.container {
  max-width: 1200px;
  margin: 50px auto;
  border-radius: 50px;
  box-shadow: 0 0 20px 0px #909090;
  background-color: #fff;
}
.col-50 {
  width: 50%;
  float: left;
  padding: 100px 40px;
  box-sizing: border-box;
}

/* Sign Up Form
================================================== */
.sign-up-form h1 {
  text-align: center;
  text-transform: uppercase;
}

/* Form Group
================================================== */
.form-group {
  max-width: 100%;
  border-radius: 4px;
  position: relative;
  margin-top: 32px;
}
.input{
  width: 100%;
  box-sizing: border-box;
  height: 52px;
  padding: 0 12px;
  font-size: 17px;
  letter-spacing: 0.25px;
  border-radius: 4px;
  border: 2px solid #cecece;
  color: #cecece;
}
.form-group label {
  pointer-events: none;
  position: absolute;
  margin: 0;
  top: 2px;
  left: 20px;
  line-height: 24px;
  font-size: 16px;
  color: #cecece;
  padding: 12px 0;
  transition: all 0.3s ease;
  text-transform: capitalize;
}
.input:active,
.input:focus {
  outline: none;
  border: 2px solid #efbad3;
}
.form-group input::selection {
  background-color: #cecece;
}
.input:focus + label,
.input:not(:placeholder-shown) + label {
  transform: translate(-20px, -42px);
  font-size: 25px;
  color: deeppink;
}

/* Separate Line
================================================== */
hr {
  border-top: 2px solid #cecece !important;
  width: 100%;
  margin: 40px 0;
}


/* Submit Button
================================================== */
.submit-btn {
  margin-top: 30px;
}
.submit-btn .sign-up-btn {
  width: 100%;
  font-size: 22px;
  text-transform: uppercase;
  background: linear-gradient(to right, #a254f2, #efbad3);
  border: 0;
  border-radius: 8px;
  color: #fff;
  padding: 10px 0;
  position: relative;
  cursor: pointer;
}
.submit-btn .sign-up-btn:focus {
  outline: none;
}
.submit-btn .sign-up-btn:after {
  content: "\27A1";
  font-size: 38px;
  line-height: 26px;
  position: absolute;
  right: 40px;
  transition: all 0.3s ease;
}
.submit-btn .sign-up-btn:hover:after {
  right: 30px;
}

/* Image Section
================================================== */
.img-section {
  padding: 0;
  overflow: hidden;
  height: 780px;
  border-top-right-radius: 50px;
  border-bottom-right-radius: 50px;
}



@media screen and (max-width: 1024px) {
  .container {
    margin: 50px;
  }
}
@media screen and (max-width: 768px) {
  .google-btn p {
    font-size: 22px;
    top: -3px;
    position: relative;
  }
  .container {
    margin: 20px;
  }
  .img-section {
    height: 728px;
  }
  .col-50:first-of-type {
    padding: 70px 40px;
  }
}
@media screen and (max-width: 425px) {
  .img-section {
    display: none;
  }
  .container .col-50:first-of-type {
    width: 100%;
  }
}
@media screen and (max-width: 375px) {
  .google-btn p {
    font-size: 20px;
  }
}
@media screen and (max-width: 320px) {
  .google-btn p {
    font-size: 15px;
    top: -6px;
  }
  .submit-btn .sign-up-btn:after {
    display: none;
  }
}

    .auto-style1 {
        width: 57%;
        float: left;
        padding: 100px 40px;
        box-sizing: border-box;
    }

    .auto-style2 {
        left: -40px;
        top: 95px;
    }

</style>
</head>
<body>
    <h1 id="heading" style="font-family:'Brush Script MT';font-size:5.8rem;font-weight:bolder;text-align:center;margin-top:50px;color:deeppink">Baby Collection................</h1>
    <form id="form1" method="post" runat="server">
       <div class="container" style="background-color:white;">
      <div class="auto-style1">
        <div class="sign-up-form">
          <h2 style="font-family:'Brush Script MT';font-weight:bolder;text-align:center;margin-top:50px">Sign Up</h2>
        </div>
           <div class="form-group">
           <asp:TextBox ID="username" runat="server" type="text" placeholder=" " class="input"></asp:TextBox>
          <label for="username" class="auto-style2">UserName</label>
         <div>
                <asp:RequiredFieldValidator ID="uname" runat="server" BackColor="Yellow" ControlToValidate="username" ErrorMessage="Please enter a username" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>
        </div><!--End Form Group-->
        <div class="form-group">
          <asp:TextBox ID="fname" runat="server" type="text" placeholder=" " class="input"></asp:TextBox>
          <label for="fname">first name</label>
              <div>
                  <asp:RequiredFieldValidator ID="name1" runat="server" BackColor="Yellow" ControlToValidate="fname" ErrorMessage="Please enter your first name" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div><!--End Form Group-->
           <div class="form-group">
          <asp:TextBox ID="lname" runat="server" type="text" placeholder=" " class="input"></asp:TextBox>
          <label for="lname">last name</label>
                     <div>
                         <asp:RequiredFieldValidator ID="name2" runat="server" BackColor="Yellow" ControlToValidate="lname" ErrorMessage="Please enter your second name" ForeColor="Red"></asp:RequiredFieldValidator>
               </div>
        </div>
        <div class="form-group">
          <asp:TextBox ID="email" runat="server" type="text" placeholder=" " class="input"></asp:TextBox>
          <label for="email">email</label>
                  <div>
                      <asp:RequiredFieldValidator ID="mail" runat="server" BackColor="Yellow" ControlToValidate="email" ErrorMessage="Enter your email" ForeColor="Red"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="mail2" runat="server" BackColor="White" ControlToValidate="email" ErrorMessage="Enter a valid email address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
        </div><!--End Form Group-->
           <div class="form-group">
          <asp:TextBox ID="contact" runat="server" type="number" placeholder=" " min="0" class="input"></asp:TextBox>
          <label for="number">Phone number</label>
                     <div>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="Yellow" ControlToValidate="contact" ErrorMessage="Enter contact" ForeColor="Red"></asp:RequiredFieldValidator>
               </div>
        </div>
            <div class="form-group">
          <asp:TextBox ID="city" runat="server" type="text" placeholder=" " class="input"></asp:TextBox>
          <label for="city">City</label>
                      <div>
                          <asp:RequiredFieldValidator ID="town" runat="server" BackColor="Yellow" ControlToValidate="city" ErrorMessage="Enter your city" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
        </div>
            <div class="form-group">
          <asp:TextBox ID="address" runat="server" type="text" placeholder=" " class="input"></asp:TextBox>
          <label for="address">Address</label>
                 <div>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BackColor="Yellow" ControlToValidate="address" ErrorMessage="Enter your address" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
        </div>
          <div class="form-group">
          <asp:TextBox ID="password" runat="server" type="text" placeholder=" " class="input" TextMode="Password"></asp:TextBox>
          <label for="password">password</label>
        </div><!--End Form Group-->
        <div class="form-group">
          <asp:TextBox ID="pwd" runat="server" type="text" placeholder=" " class="input" TextMode="Password"></asp:TextBox>
          <label for="pwd">Confirm password</label>
                  <div>
                      <asp:CompareValidator ID="pwd2" runat="server" BackColor="Yellow" ControlToCompare="password" ControlToValidate="pwd" ErrorMessage="Passwords entered donot match" ForeColor="Red"></asp:CompareValidator>
            </div>
        </div><!--End Form Group-->
        <div class="submit-btn">
            <asp:Button ID="signup" type="submit" runat="server" Text="Register"  class="sign-up-btn" OnClick="signup_Click" />
           <p style="font-size:40px;color:white;font-family:'Script MT'">Already a user?<a href="Log In.aspx" style="color:deeppink">Login</a></p>
        </div>
      </div>
    </div><!--End Container-->
    </form>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>
