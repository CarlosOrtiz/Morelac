<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="REPORTEEE.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.REPORTEEE" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html>

<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>PRUEBA</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            

            <CR:CrystalReportViewer ID="re_proveedoores" runat="server" AutoDataBind="true" />
        </div>
        <p>
            <asp:Label runat="server" ID="nombre"></asp:Label>
            <asp:Label runat="server" ID="empresa"></asp:Label>

            </p>
    </form>
</body>
</html>
