<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation Layers/Admin/AdminMasterPage/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PendedUsers.aspx.cs" Inherits="OnlineShopping.Presentation_Layers.Admin.AdminMasterPage.PendedUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center">
        <table class="nav-justified">
            <tr>
                <td>
                    <h2>
                        <br />
                        <span style="color: #666699"><strong>Pended Users</strong></span></h2>
                    <p>
                        &nbsp;</p>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#CC0000"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="80px" style="margin-left: 265px" Width="748px" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="FullName" HeaderText="User Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" />
                <asp:BoundField DataField="Age" HeaderText="Age" />
                <asp:ButtonField CommandName="ApproveBtn" Text="Approve"  ItemStyle-ForeColor="Green" >
<ItemStyle ForeColor="Green"></ItemStyle>
                </asp:ButtonField>
                <asp:ButtonField CommandName="RejectBtn" Text="Reject" ItemStyle-ForeColor="Red" >
<ItemStyle ForeColor="Red"></ItemStyle>
                </asp:ButtonField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="Silver" ForeColor="#666699" Font-Bold="True" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="#666699" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
