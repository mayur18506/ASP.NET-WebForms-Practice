<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="Default.aspx.cs"
    Inherits="_32.Bootstap_With_ASP.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .carousel-item img {
            height: 500px;
            object-fit: cover;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container mt-4">

        <div id="myCarousel"
             class="carousel slide"
             data-bs-ride="carousel">

            <!-- Indicators -->
            <div class="carousel-indicators">

                <button type="button"
                        data-bs-target="#myCarousel"
                        data-bs-slide-to="0"
                        class="active">
                </button>

                <button type="button"
                        data-bs-target="#myCarousel"
                        data-bs-slide-to="1">
                </button>

                <button type="button"
                        data-bs-target="#myCarousel"
                        data-bs-slide-to="2">
                </button>

            </div>

            <!-- Carousel Images -->
            <div class="carousel-inner">

                <!-- Slide 1 -->
                <div class="carousel-item active">
                    <img src="Images/25454.jpg"
                         class="d-block w-100"
                         alt="Slide 1">
                </div>

                <!-- Slide 2 -->
                <div class="carousel-item">
                    <img src="Images/26919.jpg"
                         class="d-block w-100"
                         alt="Slide 2">
                </div>

                <!-- Slide 3 -->
                <div class="carousel-item">
                    <img src="Images/pexels-jay-soundo-2148060180-31109934.jpg"
                         class="d-block w-100"
                         alt="Slide 3">
                </div>

            </div>

            <!-- Previous Button -->
            <button class="carousel-control-prev"
                    type="button"
                    data-bs-target="#myCarousel"
                    data-bs-slide="prev">

                <span class="carousel-control-prev-icon"></span>

                <span class="visually-hidden">
                    Previous
                </span>

            </button>

            <!-- Next Button -->
            <button class="carousel-control-next"
                    type="button"
                    data-bs-target="#myCarousel"
                    data-bs-slide="next">

                <span class="carousel-control-next-icon"></span>

                <span class="visually-hidden">
                    Next
                </span>

            </button>

        </div>

    </div>

    <div class="row">
        <div class="col-md-6">
            <p class="text-primary">THIS IS MY HOME PAGE</p>
            <p class="text-danger">THIS IS MY HOME PAGE</p>
            <p class="text-info">THIS IS MY HOME PAGE</p>
            <p class="text-warning">THIS IS MY HOME PAGE</p>
            <p class="text-success">THIS IS MY HOME PAGE</p>
        
        </div>
          <div class="col-md-6">
      <p class="bg-primary">THIS IS MY HOME PAGE</p>
      <p class="bg-danger">THIS IS MY HOME PAGE</p>
      <p class="bg-info">THIS IS MY HOME PAGE</p>
      <p class="bg-warning">THIS IS MY HOME PAGE</p>
      <p class="bg-success">THIS IS MY HOME PAGE</p>
     
  </div>
    </div>

</asp:Content>