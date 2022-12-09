<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/WebMasterSite.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="Store.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="Imgs/template3.jpg" class="center" />
    </section>
  
    <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2>Our Features</h2>
                  <p><b>Our 3 Primary Features -</b></p>
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4">
               <center>
                  <img width="290px" src="Imgs/template4.jpg" />
                  <h4>E-Shop Inventory</h4>
                  <p class="text-justify">Here you might see what we have on inventory</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                 <img width="113px" < src="Imgs/template5.jpg" />
                  <h4>Search Product</h4>
                  <p class="text-justify"> In this section you can search for anything that you might want</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                 <img width="150px"  src="Imgs/template6.jpg" />
                  <h4>Out Of Stock</h4>
                  <p class="text-justify">Here you will find products out of stock, to short your search online</p>
               </center>
            </div>
         </div>
      </div>
   </section>

      <section>
          <img src="Imgs/template7.jpg" class="center"/>
    </section>

    <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2>Our Process</h2>
                  <p><b>We have a Simple 2 Step Process -</b></p>
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-6">
               <center>
                  <img width="175px" src="Imgs/template8.jpg" />
                  <h4>Sign Up</h4>
                  <p class="text-justify">Create an account that would help you to buy or sell products on the platform</p>
               </center>
            </div>
            <div class="col-md-6">
               <center>
                 <img width="200px" src="Imgs/template9.jpg" />
                  <h4>Search for what you want</h4>
                  <p class="text-justify"> Use all the features that our platform give you to find whatever you are looking for,
                      or to sell whatever you don't use around your home</p>
               </center>
            </div>
         </div>
      </div>
   </section>


</asp:Content>
