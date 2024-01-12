<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Catalogue.aspx.cs" Inherits="Testing.Catalogue" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 
<head runat="server">
   
    <title></title>
    <webopt:bundlereference runat="server" path="~/Content/css" />
    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
            <div id="catalogtitle"><center><h1>Catalog</h1></center></div>
             
        <div id="catalogbuttons" class="container mt-10" draggable="true" contenteditable="true">
            <div class="row mx-auto" >

            <!-- Circular Buttons -->
            <div class="col-2">

                <asp:Button runat="server" CssClass="filebutton" OnClick="Filesredirectiom" />
                <h6>Files</h6>
            </div>
            <div class="col-2">
                <asp:Button runat="server" CssClass="salesbutton" OnClick="Salesredirectiom" />
                <h6>Sales</h6>
            </div>
            <div class="col-2">
                <asp:Button runat="server" CssClass="collectionsbutton"  />
                <h6 >Collections</h6>
            </div>
            <div class="col-2">
                <asp:Button runat="server" CssClass="accountingbutton"  />
                <h6 >Accounting</h6>
            </div>
            <div class="col-2">
                <asp:Button runat="server" CssClass="reportsbutton" />
                <h6 >Reports</h6>
            </div>
            <div class="col-2">
                <asp:Button runat="server" CssClass="settingsbutton" />
                <h6 >Settings</h6>


            </div>



            </div>
        </div>

        </div>
    </form>
</body>
        <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/Scripts/bootstrap.js") %>
    </asp:PlaceHolder>
</html>        
<hr />
        <footer>
            <p>&copy; <%: DateTime.Now.Year %> - Just a test flow for the application </p>
        </footer>
