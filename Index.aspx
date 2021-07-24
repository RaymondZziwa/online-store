<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="BABY_COLLECTION.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
        <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <link
      href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
      rel="stylesheet"
    />
    <style>
      .container {
        width: 100%;
        margin-top: 10%;
        font-family: sans-serif;
        letter-spacing: 1px;
      }
      .container h2 {
        background-color: blue;
        color: #fff;
        width: 200px;
        font-size: 24px;
        padding: 5px;
        height: 40px;
      }
      .container h2::after {
        content: "";
        border-top: 40px solid blue;
        border-right: 45px solid;
        position: relative;
        left: 48px;
        top: 34px;
      }
      .row {
        margin-top: 30px;
      }

      .product-bottom .fa {
        color: yellow;
        font-size: 10px;
      }
      .product-bottom h3 {
        font-size: 20px;
        font-weight: bold;
      }
      .product-bottom h5 {
        font-size: 15px;
        padding-bottom: 10px;
      }
      .uname{
          height:40px;
          width:100%;
          font-family:sans-serif;
          text-align:center;
          font-size:1.6rem;
          color:purple;
      }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid">
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
          <a class="navbar-brand" href="#"
            ><img src="imgs/logo.PNG" height="50"
          /></a>
          <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarNavDropdown"
            aria-controls="navbarNavDropdown"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
          <div
            class="collapse navbar-collapse d-flex justify-content-end"
            id="navbarNavDropdown"
          >
            <ul class="navbar-nav navbar-right">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Home</a>
              </li>
              <li class="nav-item dropdown">
                <a
                  class="nav-link dropdown-toggle"
                  href="#"
                  id="navbarDropdownMenuLinkP"
                  role="button"
                  data-bs-toggle="dropdown"
                  aria-expanded="false"
                >
                  Products
                </a>
                <ul
                  class="dropdown-menu"
                  aria-labelledby="navbarDropdownMenuLink"
                >
                  <li><a class="dropdown-item" href="#">Toys</a></li>
                  <li><a class="dropdown-item" href="#">Clothes</a></li>
                  <li>
                    <a class="dropdown-item" href="#">Growth Equipment</a>
                  </li>
                  <li><a class="dropdown-item" href="#">Shoes</a></li>
                </ul>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="About Us.aspx">About Us</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="Contact Us.aspx">Contact Us</a>
              </li>
              <li class="nav-item dropdown">
                <a
                  class="nav-link dropdown-toggle"
                  href="#"
                  id="navbarDropdownMenuLink"
                  role="button"
                  data-bs-toggle="dropdown"
                  aria-expanded="false"
                >
                  User Actions
                </a>
                <ul
                  class="dropdown-menu"
                  aria-labelledby="navbarDropdownMenuLink"
                >
                  <li><a class="dropdown-item" href="Sign Up.aspx">Sign Up</a></li>
                  <li><a class="dropdown-item" href="Log In.aspx">Log In</a></li>   
                </ul>
              </li>
              <li class="nav-item">
                 <a href="cart.aspx"><i class="fa fa-shopping-cart"></i
                ></a> 
              </li>
            </ul>
          </div>
        </div>
      </nav>
    <div class="uname">
             <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
    </div>
      <div
        id="carouselExampleIndicators"
        class="carousel slide"
        data-bs-ride="carousel"
      >
        <div class="carousel-indicators">
          <button
            type="button"
            data-bs-target="#carouselExampleIndicators"
            data-bs-slide-to="0"
            class="active"
            aria-current="true"
            aria-label="Slide 1"
          ></button>
          <button
            type="button"
            data-bs-target="#carouselExampleIndicators"
            data-bs-slide-to="1"
            aria-label="Slide 2"
          ></button>
          <button
            type="button"
            data-bs-target="#carouselExampleIndicators"
            data-bs-slide-to="2"
            aria-label="Slide 3"
          ></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img
              src="imgs/ashkan-forouzani-sUlR4Iul-9c-unsplash.jpg"
              class="d-block w-100"
              alt="..."
              height="600"
              width="500"
            />
          </div>
          <div class="carousel-item">
            <img
              src="imgs/tamanna-rumee-mIqyYpSNq3o-unsplash.jpg"
              class="d-block w-100"
              alt="..."
              height="600"
              width="500"
            />
          </div>
          <div class="carousel-item">
            <img
              src="imgs/tamanna-rumee-mIqyYpSNq3o-unsplash.jpg"
              class="d-block w-100"
              alt="..."
              height="600"
              width="500"
            />
          </div>
        </div>
        <button
          class="carousel-control-prev"
          type="button"
          data-bs-target="#carouselExampleIndicators"
          data-bs-slide="prev"
        >
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button
          class="carousel-control-next"
          type="button"
          data-bs-target="#carouselExampleIndicators"
          data-bs-slide="next"
        >
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
      <div class="container">
        <h2>Products</h2>
        <div class="row">
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" Width="901px">
                <ItemTemplate>
             <div class="col-md-3">
            <div class="product-top">
              <img src="<%#Eval("ProductImage") %>" id="prod" height="240" width="220"/>
                
            </div>
            <div class="product-bottom text-center">
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star-half-o"></i>
              <i class="fa fa-star-o"></i>
              <h3><%# Eval("ProductName") %></h3>
              <h5>UGX:<%#Eval("price") %></h5>
                <button type="button" class="btn btn-warning" style="margin-top:10px" onclick="anchor()">Add to Cart</button>
            </div>
          </div>

                </ItemTemplate>
            </asp:DataList>
             
<!--
        
          <div class="col-md-3">
            <div class="product-top">
              <img src="imgs/hulk.jpg" id="prod" />
              <div class="overlay">
                <button type="button" class="btn btn-secondary" title="Shop">
                  <i class="fa fa-eye"></i>
                </button>
                <button
                  type="button"
                  class="btn btn-secondary"
                  title=" add to cart"
                >
                  <i class="fa fa-shopping-cart"></i>
                </button>
              </div>
            </div>
            <div class="product-bottom text-center">
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star-half-o"></i>
              <i class="fa fa-star-o"></i>
              <h3>Hulk</h3>
              <h5>UGX 10,000</h5>
            </div>
          </div>

          <div class="col-md-3">
            <div class="product-top">
              <img src="imgs/robot.jpg" id="prod" />
              <div class="overlay">
                <button type="button" class="btn btn-secondary" title="Shop">
                  <i class="fa fa-eye"></i>
                </button>
                <button
                  type="button"
                  class="btn btn-secondary"
                  title=" add to cart"
                >
                  <i class="fa fa-shopping-cart"></i>
                </button>
              </div>
            </div>
            <div class="product-bottom text-center">
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star-half-o"></i>
              <i class="fa fa-star-o"></i>
              <h3>Robot Toy</h3>
              <h5>UGX 6,000</h5>
            </div>
          </div>

          <div class="col-md-3">
            <div class="product-top">
              <img src="imgs/goku.jpg" id="prod" height="200" width="200" />
              <div class="overlay">
                <button type="button" class="btn btn-secondary" title="Shop">
                  <i class="fa fa-eye"></i>
                </button>
                <button
                  type="button"
                  class="btn btn-secondary"
                  title=" add to cart"
                >
                  <i class="fa fa-shopping-cart"></i>
                </button>
              </div>
            </div>
            <div class="product-bottom text-center">
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star-half-o"></i>
              <i class="fa fa-star-o"></i>
              <h3>Dragon Ballz Goku</h3>
              <h5>UGX 14,000</h5>
            </div>
          </div>-->
        </div>
      </div>
        <div style="text-align:center">
            <asp:Button ID="LogOut" class="btn btn-danger" runat="server" Text="Log Out" OnClick="LogOut_Click" />
        </div> 
    </div>
        <script>
        //Function which will fire when user click on anchor tag
        function anchor() {
            //Get the Button reference and trigger the click event
            document.getElementById("btnSubmit").click();
        }
        </script>
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
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="Addtocart" Style="display: none" />
    </form>
</body>
</html>
