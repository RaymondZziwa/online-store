<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About Us.aspx.cs" Inherits="BABY_COLLECTION.About_Us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
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
    <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDUxp96uCpRJ15h89q5VZv10xQ_NSz9WL8&callback=initMap&libraries=&v=weekly"
      async
    ></script>
    <style>
      h2 {
        text-align: center;
        font-size: 1.8rem;
        font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS",
          sans-serif;
        color: purple;
      }
      #map {
        height: 400px;
        width: 100%;
        justify-content: center;
      }
    </style>
</head>
<body>
   <div class="container-fluid">
          <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
          <a class="navbar-brand" href="Index.aspx"
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
                <a class="nav-link" href="Index.aspx">Home</a>
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
                <a class="nav-link active" aria-current="page" href="#"
                  >About Us</a
                >
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
                <a class="nav-link" href="#">
                  <i class="fa fa-shopping-cart"></i
                ></a>
              </li>
            </ul>
          </div>
        </div>
      </nav>

      <div class="row">
        <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
          <h2>LOCATION</h2>
          <div id="map"></div>
        </div>
      </div>

      <div class="row" style="margin-top: 30px">
        <div
          class="col-sm-12 col-md-4 col-lg-4 col-xl-4"
          style="
            margin: 2px;
            margin-left: 10px;
            margin-right: 5px;
            margin-top: 10px;
            border-radius: 10px;
            box-shadow: 0 4px 16px -8px rgba(0, 0, 0, 0.8);
          "
        >
          <img
            src="imgs/value.svg"
            alt="values"
            style="margin-left: 45%; margin-top: 5px; height: 30px"
          />
          <h4 style="text-align: center">Core Values</h4>
          <p>
            Integrity<br />Efficiency<br />Transparency<br />Accountability<br />Customer
            Service
          </p>
        </div>
        <div
          class="col-sm-12 col-md-4 col-lg-4 col-xl-4"
          style="
            margin: 2px;
            margin-left: 10px;
            margin-right: 5px;
            margin-top: 10px;
            border-radius: 10px;
            box-shadow: 0 4px 16px -8px rgba(0, 0, 0, 0.8);
          "
        >
          <img
            src="imgs/vision.svg"
            alt="vision"
            style="margin-left: 45%; margin-top: 5px; height: 30px"
          />
          <h4 style="text-align: center">Vision</h4>
          <p>To bring authentic and quality baby products next door.</p>
        </div>
        <div
          class="col-sm-12 col-md-3 col-lg-3 col-xl-3"
          style="
            margin: 2px;
            margin-left: 10px;
            margin-right: 5px;
            margin-top: 10px;
            border-radius: 10px;
            box-shadow: 0 4px 16px -8px rgba(0, 0, 0, 0.8);
          "
        >
          <img
            src="imgs/target.svg"
            alt="mission"
            style="margin-left: 45%; margin-top: 5px; height: 30px"
          />
          <h4 style="text-align: center">Mission</h4>
          <p>To be part of your child's growth story.</p>
        </div>
      </div>

      <div
        class="row"
        style="
          color: white;
          margin-left: 1px;
          margin-top: 5%;
          width: 100%;
          background-image: url(imgs/tamanna-rumee-eD1RNYzzUxc-unsplash.jpg);
          background-repeat: no-repeat;
          background-size: cover;
        "
      >
        <div
          class="col-sm-12 col-md-4 col-lg-4 col-xl-4"
          style="margin-top: 50px; margin-bottom: 10px"
        >
          <h4 style="text-align: center; color: yellow">Baby Collection</h4>
          <p>
            Baby Collection is a properly well established and managed Company
            with professional staff.We are the leading baby online shopping
            center in Uganda.
          </p>
          <h4 style="color: yellow">Subscribe to our News Letter</h4>
          <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label"
              >Email address</label
            >
            <input
              type="email"
              class="form-control"
              id="exampleFormControlInput1"
              placeholder="name@example.com"
            />
          </div>
          <button type="button" class="btn btn-outline-success">Submit</button>
        </div>
        <div
          class="col-sm-12 col-md-4 col-lg-4 col-xl-4"
          style="margin-top: 50px"
        >
          <h4 style="text-align: center; color: yellow">Quick Links</h4>
          <a
            href="Index.aspx"
            style="
              text-align: center;
              margin-top: 10px;
              color: white;
              margin-left: 40%;
            "
            >Home</a
          ><br />
          <a
            href="About Us.aspx"
            style="
              text-align: center;
              margin-top: 10px;
              color: white;
              margin-left: 40%;
            "
            >About Us</a
          ><br />
          <a
            href="Contact Us.aspx"
            style="
              text-align: center;
              margin-top: 10px;
              color: white;
              margin-left: 40%;
            "
            >Contact Us</a
          ><br />
          <!--   <h4 style="text-align: center;margin-top: 20px;">Keep Up with Us</h4>
               <a href="#"><img src="/icons/facebook.svg" style="border-radius: 100%;margin-left: 35%;height: 50px;color: white;"></a>
                <a href="#"><img src="/icons/twitter.svg" style="border-radius: 100%;height: 50px;margin-left: 30px;"></a>
             -->
        </div>
        <div
          class="col-sm-12 col-md-4 col-lg-4 col-xl-4"
          style="margin-top: 50px"
        >
          <h5 style="color: yellow">Our Contacts</h5>
          <img src="imgs/telephone.png" alt="phone" style="height: 20px" />
          +256-707-036410<br />
          <img src="imgs/telephone.png" alt="phone" style="height: 20px" />+256
          200903908
          <h5 style="margin-top: 20px; color: yellow">Email Us on</h5>
          <img src="imgs/computer.png" alt="mail" style="height: 20px" />
          babycollectionug@gmail.com
          <h5 style="margin-top: 20px; color: yellow">Location</h5>
          Opposite Bank of Africa<br />
          Ntinda<br />
          P.O BOX 2920<br />
          Kampala-Uganda
        </div>
      </div>
      <div
        class="row"
        style="
          background-color: grey;
          width: 100%;
          height: 50px;
          color: white;
          margin-left: 1px;
        "
      >
        <div
          class="col-sm-12 col-md-12 col-lg-12 col-xl-12"
          style="text-align: center"
        >
          Copyright &copy;2021 Baby Collection
        </div>
      </div>
   </div>
     
       <script>
      function initMap() {
        // The location of umssn
        var mw = { lat: 0.349835, lng: 32.617341 };
        // The map, centered at Umssn
        var map = new google.maps.Map(document.getElementById("map"), {
          zoom: 15,
          center: mw,
        });
        // The marker, positioned at umssn
        var marker = new google.maps.Marker({
          position: mw,
          map: map,
        });
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
</body>
</html>
