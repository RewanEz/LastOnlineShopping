<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GetRecentProducts.ascx.cs" Inherits="OnlineShopping.User_Controls.GetRecentProducts" %>
<div style="display: block; width: 100%; margin-bottom:40px;">

    <asp:DropDownList CssClass="form-control" data-style="btn-primary" ID="ddlCategory" runat="server" OnLoad="ddlCategory_Load" AutoPostBack="True" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"></asp:DropDownList>
    <div id="myTabContent" class="tab-content">
         <div class="agile_ecommerce_tabs">
        <asp:ListView ID="ListView1" runat="server">
            <ItemTemplate>
               
                    <div class="col-md-4 agile_ecommerce_tab_left">
                        <div style="width: 196px; height: 223px; position: relative; margin: 0 auto; overflow: hidden;">

                            <a href="details.aspx?result='<%# Eval("productId") %>'">
                                <asp:Image ID="Image1" runat="server" class="media-object img-thumbnail" alt="#" Height="200" Width="220"
                                    ImageUrl='<%# string.Format("data:image/jpg;base64,{0}",
                                     Convert.ToBase64String((byte[])Eval("Image"))) %>' /></a>
                        </div>
                        <h5>          
                            <a href="details.aspx?result='<%# Eval("productID") %>'">
                                <asp:Label ID="productName" runat="server" class="media-heading" Text='<%# Eval("productName") %>'></asp:Label></a>
                        </h5>
                        <div class="simpleCart_shelfItem">
                            <br />
                            <asp:Label ID="price" runat="server" Text='<%# Eval("Price") %>' CssClass="media-heading" Font-Bold="True" Font-Size="Large"></asp:Label><br /><br />
                            <asp:HiddenField ID="productId" runat="server" Value='<%# Eval("productID") %>' />                       
                            <asp:Button ID="btnAddToCart" runat="server" Text="Add To Cart" OnClick="btnAddToCart_Click" CssClass="btn btn-primary" UseSubmitBehavior="false"/>
                        </div>
                    
                </div>
            </ItemTemplate>
        </asp:ListView>
         
       </div>
    </div>
</div>

