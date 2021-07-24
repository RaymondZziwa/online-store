<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="BABY_COLLECTION.product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inventory Management</title>
     <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
     <style>
      #price::-webkit-outer-spin-button,
      #price::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
      }
         .auto-style1 {
             left: 0px;
             top: 0px;
             height: 40px;
         }
    </style>
</head>
<body  style="background-color: #22303c">
    <form id="form1" runat="server">
   <div class="container-fluid">
      <div class="row">
        <div
          class="card"
          style="
            width: 30%;
            margin-right: 5%;
            height: 500px;
            background-color: #15202b;
            margin-left: 5%;
          "
        >
          <div class="card-header white">
            <h5
              class="font-weight-bold mb-0"
              style="color: white; text-align: center"
            >
              Inventory Category Management
            </h5>
          </div>

          <div class="card-body">
            <div class="auto-style1">
              <asp:TextBox type="text"  class="form-control" ID="categoryname" runat="server"  placeholder="Category Name"></asp:TextBox>
              <label for="categoryname">Category Name</label>
            </div>
          </div>

          <div class="card-footer white">
               &nbsp;&nbsp;
               <br />
&nbsp;&nbsp;
          <asp:Button ID="AddCategory" runat="server" Text="Add"  class="btn btn-success btn-large" OnClick="AddCategory_Click"/> 
          &nbsp; 
          <asp:Button ID="DeleteCategory" runat="server" Text="Delete"  class="btn btn-danger btn-large" OnClick="DeleteCategory_Click"/>
          &nbsp;
          <asp:Button ID="SearchCategory" runat="server" Text="Search"  class="btn btn-primary btn-large" OnClick="SearchCategory_Click"/>
               <br />
&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" style="color:white"></asp:GridView>
          </div>
        </div>
        <!--End of Card-->

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
              Inventory Product Management
            </h5>
          </div>

          <div class="card-body">
            <div class="form-floating mb-3">
             <asp:TextBox type="number"  class="form-control" ID="categoryid" runat="server"  placeholder="Category Id" min="0"></asp:TextBox>
              <label for="categoryid">Category Id</label>
            </div>
            <div class="form-floating mb-3">
             <asp:TextBox type="text"  class="form-control" ID="productname" runat="server"  placeholder="Product Name"></asp:TextBox>
              <label for="productname">Product Name</label>
            </div>
            <div class="form-floating mb-3">
              <asp:TextBox type="text"  class="form-control" ID="desc" runat="server"  placeholder="Product Description" Style="height:100px"></asp:TextBox>
              <label for="desc">Product Description</label>
            </div>
            <div class="form-floating mb-3">
               <asp:TextBox type="text"  class="form-control" ID="productimage" runat="server"  placeholder="Product Image Path"></asp:TextBox>
              <label for="productimage">Product Image Path</label>
            </div>
            <div class="form-floating mb-3">
               <asp:TextBox type="number"  class="form-control" ID="quantity" runat="server"  placeholder="Quantity" min="0"></asp:TextBox>  
              <label for="Quantity">Quantity</label>
            </div>
            <div class="form-floating mb-3">
             <asp:TextBox type="number"  class="form-control" ID="price" runat="server"  placeholder="Price" min="0"></asp:TextBox>    
              <label for="price">Price</label>
            </div>
          </div>

          <div class="card-footer white">
               &nbsp;&nbsp;
          <asp:Button ID="AddProduct" runat="server" Text="Add"  class="btn btn-success btn-large" OnClick="AddProduct_Click"/> 
          &nbsp; 
          <asp:Button ID="DeleteProduct" runat="server" Text="Delete"  class="btn btn-danger btn-large" OnClick="DeleteProduct_Click"/>
          &nbsp;
          <asp:Button ID="UpdateProductInfo" runat="server" Text="Update"  class="btn btn-warning btn-large" OnClick="UpdateProductInfo_Click"/>
          &nbsp;
          <asp:Button ID="SearchProduct" runat="server" Text="Search"  class="btn btn-primary btn-large" OnClick="SearchProduct_Click"/>
               <br />
          </div>
        <div class="grid">
            <asp:GridView ID="GridView2" runat="server" Width="557px">
            </asp:GridView>
        </div>
        </div>
        <!--End of Card-->
          <div class="card-footer" style="text-align:center">
            <a href="Control Panel.aspx"><button type="button" class="btn btn-outline-light">Go back to dashboard</button></a>
        </div>
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
