<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/WebMasterSite.Master" AutoEventWireup="true" CodeBehind="UserSignUp.aspx.cs" Inherits="Store.HomePage.UserSignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                <div class="card-body">

                    <div class="row">
                        <div class="col">
                            <center>
                                <img width="100ph" src="../Imgs/template10.jpg" />
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                              <h4>User Registration</h4>
                            </center>
                        </div>
                    </div>


                     <div class="row">
                        <div class="col-md-6">
                            <center>
                               <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox5"
                                    runat="server" placeholder="Full Name"></asp:TextBox><br />
                            </div>
                            </center>
                        </div>
                   

                        <div class="col-md-6">
                            <center>
                               <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox4"
                                    runat="server" placeholder="Data of Birth" TextMode="Date"></asp:TextBox><br />
                                   </div>
                            </div>
                        </div>
                   
                     <div class="row">
                        <div class="col-md-6">
                            <center>
                              <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox3"
                                    runat="server" placeholder="Contact Number" TextMode="Number"></asp:TextBox>
                            </div>
                            </center>
                        </div>
                     <div class="col-md-6">
                            <center>
                               <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox6"
                                    runat="server" placeholder="Email Address"></asp:TextBox><br />
                                   </div>
                            </div>
                        </div>
                    <div class="row">
                        <div class="col-md-4">
                            <center>
                              <div class="form-group">
                                  <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                      <asp:ListItem Text="Select" Value="select" />
                                      <asp:ListItem Text="Banat" Value="select" />
                                      <asp:ListItem Text="Bucovina" Value="select" />
                                      <asp:ListItem Text="Crisana" Value="select" />
                                      <asp:ListItem Text="Dobrogea" Value="select" />
                                      <asp:ListItem Text="Maramures" Value="select" />
                                      <asp:ListItem Text="Muntenia" Value="select" />
                                      <asp:ListItem Text="Moldova" Value="select" />
                                      <asp:ListItem Text="Oltenia" Value="select" />
                                      <asp:ListItem Text="Transilvania" Value="select" />


                                  </asp:DropDownList>
                            </div>
                            </center>
                        </div>
                     <div class="col-md-4">
                            <center>
                               <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox8"
                                    runat="server" placeholder="City "></asp:TextBox><br />
                                   </div>
                            </div>
                        <div class="col-md-4">
                            <center>
                               <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox9"
                                    runat="server" placeholder="Pin Code" TextMode="Number"></asp:TextBox><br />
                                   </div>
                            </div>
                        </div>
                    <div class="row">
                        <div class="col">
                            <center>
                              <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox7"
                                    runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox><br>
                            </div>
                            </center>
                        </div>
                        </div>

                     <div class="row">
                        <div class="col">
                            <center>
                                <img width="100px" src="../Imgs/Template12.jpg" />
                            </center>
                        </div>
                         </div>


                    <div class="row">
                        <div class="col-md-6">
                          <center>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox1"
                                    runat="server" placeholder="Password" TextMode="Password"></asp:TextBox><br />
                            </div>
                              </center> 
                              </div>
                           <div class="col-md-6">
                                <center>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox2"
                                    runat="server" placeholder="Verify Password" TextMode="Password"></asp:TextBox><br />
                            </div>
                              </center> 
                            </div>
                        </div>
                        <div class="row">
                             <div class="form-group">
                                 <asp:Button class="btn btn-success btn-block btn-lg" style="width:100%"
                                     ID="Button1" runat="server" Text="Sign Up" />
                            </div>
                            
                        </div>
                    </div>
                    </div>
                    <a href="HomePage.aspx">Back to Home</a><br>
                   
                </div>
            </div>
        </div>

</asp:Content>
