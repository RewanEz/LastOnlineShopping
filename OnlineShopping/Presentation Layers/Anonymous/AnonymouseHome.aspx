<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/AnonymousMaster.Master" AutoEventWireup="true" CodeBehind="AnonymouseHome.aspx.cs" Inherits="OnlineShopping.AnonymouseHome" %>

<%@ Register Src="~/User Controls/GetRecentProducts.ascx" TagPrefix="uc1" TagName="GetRecentProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:GetRecentProducts runat="server" id="GetRecentProducts" />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
 