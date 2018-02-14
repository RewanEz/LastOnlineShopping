<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="usrProfile.ascx.cs" Inherits="OnlineShopping.Presentation_Layers.User.usrProfile" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
        font-size: xx-large;
    }
    .auto-style3 {
        text-align: left;
    }
    .auto-style4 {
        font-size: small;
    }
</style>

<table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="2">Profile</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>First Name</td>
        <td>
            <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Last Name</td>
        <td>
            <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>EMail</td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Gender</td>
        <td>
            <asp:TextBox ID="txtGender" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Age</td>
        <td>
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;
            <asp:Button ID="btnEdit" runat="server" OnClick="edit" Text="Edit" />
&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="btnEdit2" runat="server" OnClick="editing">Edit2</asp:LinkButton>
&nbsp;<asp:Button ID="btnUpdate" runat="server" CssClass="auto-style4" OnClick="update" Text="Save" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCancel" runat="server" CssClass="auto-style4" OnClick="cancel" Text="Cancel" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

