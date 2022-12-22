<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/WebMasterSite.Master" AutoEventWireup="true" CodeBehind="UsersLogin.aspx.cs" Inherits="Store.HomePage.UsersLogin" %>
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
                                <img width="150ph" src="../Imgs/template10.jpg" />
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                              <h3>Member Login</h3>
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
                                    runat="server" placeholder="Email Address"></asp:TextBox>
                            </div>
                           
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox2"
                                    runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            </div>
                             <div class="form-group">
                                 <asp:Button class="btn btn-success btn-block btn-lg" style="width:100%"
                                     ID="Button1" runat="server" Text="Login" /><br />
                            </div>
                            <div class="form-group">
                                <a href="UserSignUp.aspx"><input class="btn btn-info btn-block btn-lg" style="width:100%"
                                    ID="Button2" type="button" value="Sign Up" /></a><br />
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
