<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/UserMaster.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="OnlineShopping.Presentation_Layers.User.UserMasterPage.ChangePassword" %>
<%@ Register src="../ChangePassword.ascx" tagname="ChangePassword" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ChangePassword ID="ChangePassword1" runat="server" />
</asp:Content>
