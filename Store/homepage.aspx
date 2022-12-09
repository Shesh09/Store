<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/WebMasterSite.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="Store.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="Imgs/template3.jpg" class="center" />
    </section>
    <section>
<div class="container">
    <div class="col-12">
        <center>
        <h2>Our features</h2>
        <p><b>Our 3 Primary Features -</b></p>
        </center>
    </div>
    <div class="row">
    <div class="col-md-4">
        <center>
        <img width="150px" img src="Imgs/template4.jpg" />
        <h4>E-Shop Inventory</h4>
        <p class="text-justify">Here you might see what we have on inventory</p>
       </center>
    </div>
        <div class="row">
    <div class="col-md-4">
        <center>
        <img width="150px" <img src="Imgs/template5.jpg" />
        <h4>Search Product</h4>
        <p class="text-justify"> In this section you can search for anything that you might want</p>
       </center>
    </div>
            <div class="row">
    <div class="col-md-4">
        <center>
        <img width="150px" <img src="Imgs/template6.jpg" />
        <h4>Out Of Stock</h4>
        <p class="text-justify">Here uou will find products out of stock, to short your search online</p>
       </center>
    </div>
</div>
            </div>
        </div>
    </div>
    </section>
</asp:Content>
