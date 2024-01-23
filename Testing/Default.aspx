<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Testing._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row mb-40" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">STL Management System Web</h1>
        </section>

        <div class="row mb-40" id="loginsection">
            <center>
            <section class="col-md-4" id="login">
                    <div class="card" style="width: 20rem; height: 20rem;">
                      <div class="card-body">
                        <h5 class="card-title" id="logintitle">Login</h5>
                        
                        <h6 class="exempt">Username:</h6>
                        <input class="input " id="emailfield" type="email" name="email" placeholder="Email" >
                          <br />
                        <h6 class="exempt">Password:</h6>
					    <input class="input" id="passfield" type="password" name="pswd" placeholder="Password" >

                          <asp:Button ID="loginbutton" runat="server" Text="Login" OnClick="loginbutton_Click"></asp:Button>
                          <br />
                          <br />
                         <!--
                        <h6 class="exempt" style="font-size:12px;">New user? <a href="#" class="card-link">Create Account</a></h6>
                        <h6 class="exempt" style="font-size:12px;">Forgot Password? <a href="#" class="card-link">Click Here</a></h6>
                          -->


                      </div>
                    </div>
            </section>

           </center>

        </div>
    </main>

</asp:Content>
