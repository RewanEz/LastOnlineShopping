<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation Layers/Admin/AdminMasterPage/AdminMaster.Master" AutoEventWireup="true" CodeBehind="NewProduct.aspx.cs" Inherits="OnlineShopping.Presentation_Layers.Admin.AdminMasterPage.NewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="text-center" colspan="2" style="color: #666699; height: 78px">
                <h2>&nbsp;</h2>
                <h2><strong>+Add Product&nbsp;&nbsp;&nbsp;&nbsp; </strong></h2>
                <h2><strong>&nbsp;&nbsp;&nbsp; </strong></h2>
                <p>
                    &nbsp;</p>
            </td>
            <td style="height: 78px"></td>
        </tr>
        <tr>
            <td class="text-right" style="width: 526px"><span style="color: #666699; font-size: large"><strong>
                <br />
                Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span>
                <br />
            </td>
            <td class="text-left">
                <asp:TextBox ID="NameTxt" runat="server" BorderColor="#666699" BorderWidth="2px" Height="27px" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="text-align: right; width: 526px"><span style="color: #666699; font-size: large"><strong>
                <br />
                Price:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span>
                <br />
            </td>
            <td class="text-left">
                <asp:TextBox ID="PriceTxt" runat="server" BorderColor="#666699" BorderWidth="2px" Height="27px" Width="218px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="text-align: right; width: 526px"><span style="color: #666699; font-size: large"><strong>
                <br />
                Description:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span>
                <br />
            </td>
            <td class="text-left">
                <asp:TextBox ID="DescTxt" runat="server" BorderColor="#666699" BorderWidth="2px" Height="28px" Width="222px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="text-align: right; width: 526px"><span style="color: #666699; font-size: large"><strong>
                <br />
                Category Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span>
                <br />
            </td>
            <td class="text-left">
                <asp:TextBox ID="CatNameTxt" runat="server" BorderColor="#666699" BorderWidth="2px" Height="29px" Width="226px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="text-align: right; width: 526px"><span style="color: #666699; font-size: large"><strong>
                <br />
                Quantity:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span>
                <br />
            </td>
            <td class="text-left">
                <asp:TextBox ID="QuantTxt" runat="server" BorderColor="#666699" BorderWidth="2px" Height="30px" Width="227px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="text-align: right; font-size: large; color: #666699; width: 526px"><strong>
                <br />
                Promotion:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
            <td class="text-left">
                <br />
                <asp:TextBox ID="PromoTxt" runat="server" BorderColor="#666699" BorderWidth="2px" Height="28px" style="margin-left: 4" Width="223px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="text-align: right; width: 526px"><span style="font-size: large; color: #666699"><strong>Image:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span></td>
            <td class="text-left">
                <br />
                <asp:FileUpload ID="ImgTxt" runat="server" BorderColor="#666699" BorderWidth="2px" Font-Bold="True" ForeColor="#666699" Height="36px" Width="387px" />
                <br />
            </td>
        </tr>
        <tr>
            <td class="text-center" colspan="2">
                <asp:Button ID="Button1" runat="server" CssClass="ecommerce_color" Font-Bold="True" Font-Size="X-Large" ForeColor="#666699" Height="37px" OnClick="Button1_Click" Text="+Add" UseSubmitBehavior="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="SuccessIcon" runat="server" Height="100px" ImageUrl="~/Presentation Layers/Admin/AdminMasterPage/SucessIcon.png" style="margin-left: 40px" Visible="False" Width="123px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
