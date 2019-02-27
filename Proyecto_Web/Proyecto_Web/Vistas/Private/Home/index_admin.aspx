<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="index_admin.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.index_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section class="content-header">
        <h1>Dashboard
           
            <small>Control panel</small>
        </h1>
    </section>

    <section class="content">
        <div class=" col-md-9"  style="margin-bottom:60px;">


        </div>

        <div class="col-md-3" style="margin-top: -40px; padding: 0 5px;" id="divPeticiones">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Solicitudes de ingreso</h3>
                </div>
                <div class="box-body">
                    <ul class="products-list product-list-in-box">
                        <%--<asp:Repeater ID="Noti_Peticion" runat="server">
                            <ItemTemplate>
                                <li class="item item-peticion">
                                    <a href="Detalle_Peticion.aspx?Valor=<%#Eval("ID_PERSONA")%>">
                                        <div class="product-img"  style="margin-top: 10px;">
                                            <span class="badge bg-blue"><i class="fa fa-user-plus"></i></span>
                                        </div>
                                        <div class="product-info" style="margin-left: 40px;">
                                            <b class="product-description"><%#Eval("PER_NOMBRE")%>&nbsp<%#Eval("PER_APELLIDO")%></b>
                                            <span class="product-description"><%#Eval("PET_FECHA")%>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>--%>
                    </ul>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
