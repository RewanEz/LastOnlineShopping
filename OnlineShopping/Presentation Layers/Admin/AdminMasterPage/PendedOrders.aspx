<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation Layers/Admin/AdminMasterPage/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PendedOrders.aspx.cs" Inherits="OnlineShopping.Presentation_Layers.Admin.AdminMasterPage.PendedOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="text-center">
                <h2 style="color: #666699">&nbsp;</h2>
                <h2 style="color: #666699">&nbsp;</h2>
                <h2 style="color: #666699"><strong>Pended Orders</strong></h2>
            </td>
        </tr>
        <tr>
            <td class="text-center">
                <br />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#CC0000"></asp:Label>
                <div class="text-center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="90px" style="margin-left: 324px" Width="704px" BorderColor="#999999" OnRowCommand="GridView1_RowCommand" HorizontalAlign="Justify" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:TemplateField HeaderText="User Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FullName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("FullName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Date" HeaderText="Date" />
            <asp:BoundField DataField="delivaryAddress" HeaderText="Address" />
            <asp:BoundField DataField="totalPrice" HeaderText="Total Cost" />
            <asp:ButtonField CommandName="AcceptBtn" Text="Accept" ItemStyle-ForeColor="Green" >
<ItemStyle ForeColor="Green"></ItemStyle>
            </asp:ButtonField>
            <asp:ButtonField CommandName="RejectBtn" Text="Reject" ItemStyle-ForeColor="Red" >
<ItemStyle ForeColor="Red"></ItemStyle>
            </asp:ButtonField>
        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="Silver" Font-Bold="True" ForeColor="#666699" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="#666699" />
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
</asp:Content>
