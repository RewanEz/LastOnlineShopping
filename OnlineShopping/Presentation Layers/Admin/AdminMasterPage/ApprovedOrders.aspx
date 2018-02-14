<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation Layers/Admin/AdminMasterPage/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ApprovedOrders.aspx.cs" Inherits="OnlineShopping.Presentation_Layers.Admin.AdminMasterPage.ApprovedOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-left">
        <table class="nav-justified">
            <tbody class="text-center">
            <tr>
                <td class="text-center" style="color: #666699">
                    <h2>&nbsp;</h2>
                    <h2><strong>Approved Orders</strong></h2>
                    <p>&nbsp;</p>
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#CC0000"></asp:Label>
                    <br />
                    <br />
                    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ForeColor="#666699" OnRowCommand="GridView1_RowCommand" style="margin-left: 408px" Width="589px" BorderStyle="None" Height="90px" BackColor="White" BorderColor="#999999" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:TemplateField HeaderText="User Name">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("FullName") %>'></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Date" HeaderText="Date" />
                <asp:BoundField DataField="delivaryAddress" HeaderText="Address" />
                <asp:BoundField DataField="totalPrice" HeaderText="Total Cost" />
                <asp:ButtonField Text="Deliver" CommandName="orderID"  ItemStyle-ForeColor="Green" >
<ItemStyle ForeColor="Green"></ItemStyle>
                </asp:ButtonField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="Silver" Font-Bold="True" ForeColor="#666699" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle ForeColor="#666699" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
