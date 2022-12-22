<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/WebMasterSite.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Store.HomePage.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                <div class="card-body">

                    <div class="row">
                        <div class="col">
                            <center>
                                <img width="150px" src="../Imgs/template11.jpg" />
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                              <h3>Admin Login</h3>
                            </center>
                        </div>
                    </div>
                     <div class="row">
                        <div class="col">
                            <center>
                              <hr />
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                           
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox1"
                                    runat="server" placeholder="Admin ID"></asp:TextBox>
                            </div>
                           
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox2"
                                    runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            </div>
                             <div class="form-group">
                                 <asp:Button class="btn btn-success btn-block btn-lg" style="width:100%"
                                     ID="Button1" runat="server" Text="Login" />
                            </div>
                          
                        </div>
                    </div>
                    </div>
                    <a href="HomePage.aspx">Back to Home</a><br>
                   
                </div>
            </div>
        </div>
    </div>
</asp:Content>
