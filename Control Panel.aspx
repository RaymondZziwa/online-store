<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Control Panel.aspx.cs" Inherits="BABY_COLLECTION.Control_Panel" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Control Panel</title>
      <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <style>
         /* The sidebar menu */
      .sidebar {
        height: 100%; /* 100% Full-height */
        width: 0; /* 0 width - change this with JavaScript */
        position: fixed; /* Stay in place */
        z-index: 1; /* Stay on top */
        top: 0;
        left: 0;
        background-color: #15202b; /* Black*/
        overflow-x: hidden; /* Disable horizontal scroll */
        padding-top: 60px; /* Place content 60px from the top */
        transition: 0.5s; /* 0.5 second transition effect to slide in the sidebar */
      }

      /* The sidebar links */
      .sidebar a {
        padding: 8px 8px 8px 32px;
        text-decoration: none;
        font-size: 25px;
        color: #818181;
        display: block;
        transition: 0.3s;
      }

      /* When you mouse over the navigation links, change their color */
      .sidebar a:hover {
        color: #f1f1f1;
      }

      /* Position and style the close button (top right corner) */
      .sidebar .closebtn {
        position: absolute;
        top: 0;
        right: 25px;
        font-size: 36px;
        margin-left: 50px;
      }

      /* The button used to open the sidebar */
      .openbtn {
        font-size: 20px;
        cursor: pointer;
        background-color: #22303c;
        color: white;
        padding: 10px 15px;
        border: none;
      }

      .openbtn:hover {
        background-color: #444;
      }

      /* Style page content - use this if you want to push the page content to the right when you open the side navigation */
      #main {
        transition: margin-left 0.5s; /* If you want a transition effect */
        padding: 20px;
      }

      /* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
      @media screen and (max-height: 450px) {
        .sidebar {
          padding-top: 15px;
        }
        .sidebar a {
          font-size: 18px;
        }
      }
    </style>
</head>
<body  style="background-color: #22303c">
    <div class="container-fluid">
         <div id="mySidebar" class="sidebar">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"
          >&times;</a
        >
        <div style="color: white; text-align: center">
          <img
            src="dash/profile.jpg"
            height="80"
            style="border-radius: 100%"
          />
          <h4>Zziwa Raymond Ian</h4>
          <p>Admin</p>
        </div>
        <a href="Control Panel.aspx" data-target="Control Panel.aspx">
          <img src="dash/home.png" height="30" />
          Dashboard
        </a>
        <a href="product.aspx" data-target="product.aspx">
          <img src="dash/received.png" height="30" />
          Inventory
        </a>
        <a href="user.aspx" data-target="user.aspx">
          <img src="dash/user.png" height="30" />
          Users
        </a>
        <a href="mail.aspx" data-target="mail.aspx">
          <img src="dash/mail.png" height="30" />
          Mail
        </a>
        <a href="#" onClick="anchor()">
         <img src="dash/logout.png" height="30"/>
          Log Out
        </a>
      </div>

      <div id="main">
        <button class="openbtn" onclick="openNav()">&#9776;</button>
        <h1 style="text-align: center; color: white">Control Panel</h1>
        <div class="row" style="width: 100%">

          <div
            class="card"
            style="
              width: 25%;
              margin-right: 5%;
              height: 250px;
              background-color: #15202b;
              margin-left: 30px;
            "
          >
            <div class="card-header white">
              <h5
                class="font-weight-bold mb-0"
                style="color: white; text-align: center"
              >
                Registered Users
              </h5>
            </div>

            <div class="card-body">
              <div class="div" style="float: left">
                <p style="font-size: 3.5rem; color: white"><asp:Label ID="numusers" runat="server" /></p>
              </div>
              <div class="div" style="float: right">
                <img
                  src="dash/user.png"
                  height="100"
                  style="border-radius: 100%; background-color: white"
                />
              </div>
            </div>

            <div class="card-footer white">
              <a href="user.html"
                ><button type="button" class="btn btn-outline-light btn-large">
                  Manage Users
                </button></a
              >
            </div>
          </div>
          <!--End of Card-->
          <div
            class="card"
            style="
              width: 25%;
              margin-right: 5%;
              height: 250px;
              background-color: #15202b;
            "
          >
            <div class="card-header white">
              <h5
                class="font-weight-bold mb-0"
                style="color: white; text-align: center"
              >
                Visitors
              </h5>
            </div>

            <div class="card-body">
               <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2" Height="180px" Width="410px">
                    <Series>
                        <asp:Series ChartType="Line" Name="Series1" XValueMember="Createdat" YValueMembers="SessionId">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:babycollectionConnectionString %>" SelectCommand="SELECT [SessionId], [Createdat] FROM [shopping_session]"></asp:SqlDataSource>  
                     
             </div>
          </div>
          <!--End of Card-->
          <div
            class="card"
            style="
              width: 25%;
              margin-right: 5%;
              height: 250px;
              background-color: #15202b;
            "
          >
            <div class="card-header white">
              <h5
                class="font-weight-bold mb-0"
                style="color: white; text-align: center"
              >
                Messages
              </h5>
            </div>

            <div class="card-body">
              <div class="div" style="float: left">
                <p style="font-size: 3.5rem; color: white"><asp:Label ID="msgs" runat="server" /></p>
              </div>
              <div class="div" style="float: right">
                <img
                  src="/dash/mail.png"
                  height="100"
                  style="border-radius: 100%; background-color: white"
                />
              </div>
            </div>

            <div class="card-footer white">
              <button type="button" class="btn btn-outline-light btn-large">
                Manage Messages
              </button>
            </div>
          </div>
          <!--End of Card-->
        </div>
        <div class="row" style="height: 300px; width: 100%; margin-top: 5%">
          <div
            class="card"
            style="
              width: 50%;
              margin-left: 25%;
              height: 300px;
              background-color: #15202b;
            "
          >
            <div class="card-header white">
              <h5
                class="font-weight-bold mb-0"
                style="color: white; text-align: center"
              >
                Sales
              </h5>
            </div>

            <div class="card-body">
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="230px" Width="880px">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="CreatedAt" YValueMembers="SalesId">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:babycollectionConnectionString %>" SelectCommand="SELECT [CreatedAt], [SalesId] FROM [sales]"></asp:SqlDataSource>
             
            </div>
          </div>
          <!--End of Card-->
        </div>
      </div>
    </div>
    <script>
        //Function which will fire when user click on anchor tag
        function anchor() {
            //Get the Button reference and trigger the click event
            document.getElementById("btnSubmit").click();
        }
    </script>
       <script>
           /* Set the width of the sidebar to 250px and the left margin of the page content to 250px */
           function openNav() {
               document.getElementById("mySidebar").style.width = "250px";
               document.getElementById("main").style.marginLeft = "250px";
           }

           /* Set the width of the sidebar to 0 and the left margin of the page content to 0 */
           function closeNav() {
               document.getElementById("mySidebar").style.width = "0";
               document.getElementById("main").style.marginLeft = "0";
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script>
      $(document).ready(function () {
        var trigger = $(".container-fluid .sidebar a"),
          container = $("#main");

        trigger.on("click", function () {
          var pageURL = $(this).attr("href");
          history.pushState(null, "", pageURL);
          var $this = $(this),
          target = $this.data("target");
          container.load(target);
          return false;
        });
      });
    </script>
    <form runat="server">
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="quit_Click" Style="display: none" />
    </form>
</body>
</html>
