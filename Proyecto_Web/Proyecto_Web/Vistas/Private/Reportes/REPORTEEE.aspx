<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Admin.Master" AutoEventWireup="true" CodeBehind="REPORTEEE.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.REPORTEEE" %>
<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <%--<form runat="server">--%>
        <div>
            <CR:CrystalReportViewer ID="re_proveedoores" runat="server" AutoDataBind="true" />
        </div>
        <%--<p>
            <asp:Label runat="server" ID="nombre"></asp:Label>
            <asp:Label runat="server" ID="empresa"></asp:Label>

            </p>--%>
    <%--</form>--%>

</asp:Content>