<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation Layers/Admin/AdminMasterPage/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="OnlineShopping.Presentation_Layers.Admin.AdminMasterPage.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="text-center">
                &nbsp;</td>
        </tr>
        </table>
    <p>
    </p>
    <table class="nav-justified">
        <tr>
            <td class="text-center">
                <asp:Button ID="Button1" runat="server" Text="+Add New Category" Font-Bold="True" ForeColor="#666699" Height="44px" OnClick="Button1_Click" style="margin-top: 29" BorderColor="#6600CC" UseSubmitBehavior="False" />
            &nbsp;&nbsp;
                <br />
                <br />
                <asp:TextBox ID="CatTxt" runat="server" CssClass="col-xs-offset-0" Height="30px" Visible="False" Width="196px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="AddBtn" runat="server" BorderColor="#6600CC" Font-Bold="True" ForeColor="#666699" Height="33px" OnClick="Button2_Click" Text="+ Add" UseSubmitBehavior="False" Visible="False" Width="68px" />
                <br />
                <br />
                <div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" style="margin-left: 393px" Width="480px" CellPadding="3" GridLines="Vertical" OnRowCommand="GridView1_RowCommand" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:TemplateField HeaderText="Category Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("categoryName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="CatName" runat="server" Text='<%# Bind("categoryName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="RemoveBtn" ForeColor="#CC0000" Text="Remove"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="Silver" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
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
