<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation Layers/Admin/AdminMasterPage/AdminMaster.Master" AutoEventWireup="true" CodeBehind="RegisteredUsers.aspx.cs" Inherits="OnlineShopping.Presentation_Layers.Admin.AdminMasterPage.RegisteredUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table class="nav-justified">
            <tr>
                <td class="text-center" style="color: #666699; direction: ltr">
                    <h2>&nbsp;</h2>
                    <h2><strong>Registered Users</strong></h2>
                    <p>
                        &nbsp;</p>
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#CC0000"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="text-center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="80px" style="margin-left: 286px" Width="734px" ForeColor="#666699" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:BoundField DataField="FullName" HeaderText="UserName" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" />
                <asp:BoundField DataField="Age" HeaderText="Age" />
                <asp:ButtonField CommandName="BlockBtn" Text="Block" ItemStyle-ForeColor="Red" >
<ItemStyle ForeColor="Red"></ItemStyle>
                </asp:ButtonField>
            </Columns>
            <HeaderStyle BackColor="#CCCCCC" ForeColor="#666699" />
        </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
