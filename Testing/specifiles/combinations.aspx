﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="combinations.aspx.cs" Inherits="Testing.combinations" %>
<webopt:bundlereference runat="server" path="~/Content/css" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="card" style="width: 70rem; height:35rem;">
              <div class="card-body">
                               <h5 class="card-title"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24"><path fill="currentColor" d="m12 1.148l6.16 9.602H5.84zm0 3.704L9.5 8.75h5zM2 13h9v9H2zm2 2v5h5v-5zm13.5 0a2.5 2.5 0 1 0 0 5a2.5 2.5 0 0 0 0-5M13 17.5a4.5 4.5 0 1 1 9 0a4.5 4.5 0 0 1-9 0"/></svg> Controlled Combinations</h5>
                <div class="row">
                    <div class="col-3">
                        <label><small>Game Code</small></label><br />
                        <select id="codeop" name="language" id="language" style="width:230px; height:30px;">
                          <option value="value">value</option>
                        </select>
                    </div>
                    <div class="col-3">
                        <label><small>Combination</small></label><br />
                        <input type="text" id="combin" name="combin" required><br />
                    </div>
                    <div class="col-3">
                        <label><small>Bet Limit</small></label><br />
                        <input type="text" id="blimit" name="blimit" required><br />
                    </div>
                    <div class="col-1">
                            <br />
                            <asp:Button runat="server" id="viewton" Text="View" Width="90px" />
                    </div>
                    <div class="col-1">
                        <br />
                        <asp:Button runat="server" Text="Save" Width="90px" />
                    </div>

                </div>
                <div  style="height:300px;">
                    <div class="row" style="margin-left:30px;margin-top:30px;  ">
                        <asp:Table ID="combitab" runat="server" Width="80%" HorizontalAlign="Left" CssClass="table table-bordered" >
                               <asp:TableHeaderRow>
                                   <asp:TableHeaderCell><small>Game Code</small></asp:TableHeaderCell>
                                   <asp:TableHeaderCell><small>Combination</small></asp:TableHeaderCell>
                                   <asp:TableHeaderCell><small>Bet Limit</small></asp:TableHeaderCell>
                               </asp:TableHeaderRow>
                             <asp:TableRow >
                               <asp:TableCell></asp:TableCell>
                               <asp:TableCell></asp:TableCell>
                               <asp:TableCell></asp:TableCell>
                             </asp:TableRow>


                        </asp:Table>
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
    <%: Scripts.Render("~/Scripts/jquery-3.4.1.js") %>
</asp:PlaceHolder>