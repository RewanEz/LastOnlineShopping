<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/UserMaster.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="OnlineShopping.Presentation_Layers.User.UserMasterPage.UserProfile" %>
<%@ Register src="../usrProfile.ascx" tagname="usrProfile" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:usrProfile ID="usrProfile1" runat="server" />
</asp:Content>
