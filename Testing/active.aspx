<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="active.aspx.cs" Inherits="Testing.active2" %>
<webopt:bundlereference runat="server" path="~/Content/css" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="card " style="width: 70rem; height:30rem;">
             <div class="card-body">
             <h5 class="card-title">Active Game</h5>
                 <div class="row" id="firstrow">
                     <div class="col-5 ">
                           <asp:Table ID="activegame" runat="server" Width="70%" HorizontalAlign="Left" CssClass="table table-bordered">
                               <asp:TableHeaderRow>
                                   <asp:TableHeaderCell>Game Code</asp:TableHeaderCell>
                                   <asp:TableHeaderCell>Print Code</asp:TableHeaderCell>

                               </asp:TableHeaderRow>
                             <asp:TableRow>
                               <asp:TableCell></asp:TableCell>
                               <asp:TableCell></asp:TableCell>
                             </asp:TableRow>
                           </asp:Table>


                       </div>
                    <div class="col-3">
                       <label><small>Game Code</small></label><br />
                        <input type="text" id="gamecode" name="gamecode" required><br />
                       <label><small>Print Code</small></label><br />
                        <input type="text" id="printcode" name="printcode" required><br />
                        <input type="checkbox"><label><small>Local Game</small></label><br />

                       <label><small>Win Value(Low)</small></label><br />
                        <input type="text" id="lowbet" name="lowbet" required><br />
                       <label><small>Bet Limit (0-31)</small></label><br />
                        <input type="text" id="lowbetval" name="lowbetval" required><br />

                       <label><small>Win Value(High)</small></label><br />
                        <input type="text" id="highbet" name="highbet" required><br />
                       <label><small>Bet Limit (32-99)</small></label><br />
                        <input type="text" id="highbetval" name="highbetval" required><br />

                    </div>
                    <div class="col-3">
                       <label><small>Admin Commission</small></label><br />
                        <input type="text" id="commadmin" name="commadmin" required><br />
                       <label><small>Back Pay(Admin)</small></label><br />
                        <input type="text" id="adpay" name="adpay" required><br />

                       <label><small>Coor Commission</small></label><br />
                        <input type="text" id="commcoor" name="commcoor" required><br />
                       <label><small>Back Pay(Coor)</small></label><br />
                        <input type="text" id="coorpay" name="coorpay" required><br />

                    </div>
                    </div>
                    <div class="row" >
                        <div class="col">
                            <br />
                            <asp:Button runat="server" id="viewton" Text="View" Height="40px" Width="300px"/>
                        </div>
                        <div class="col">
                            <br />
                            <asp:Button runat="server" Text="Save" Height="40px" Width="300px" />
                        </div>
                    </div>
                 
             </div>  
</div>
                 
</div>  
    </form>
</body>
</html>
<asp:PlaceHolder runat="server">
    <%: Scripts.Render("~/Scripts/bootstrap.js") %>
</asp:PlaceHolder>