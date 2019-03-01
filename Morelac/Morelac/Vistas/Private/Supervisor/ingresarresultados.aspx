<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="ingresarresultados.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.ingresarresultados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<h3><i class="fa fa-angle-right"></i>REGISTRO DE RESUTADOS SOBRE LAS PRUEBAS DE CALIDAD DE LA LECHE</h3>--%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <fieldset>
        <legend style="text-align:center;" class="legend1">Diligenciar los resultados de las pruebas</legend>
     
        <div class="col-md-6">
             Temperatura:
                    <input class="Tempreratura" name='tempe' type="number" required>
            °C
            <p></p>
            <b>CARACTERISTICAS LACTOFILTRACIÓN:</b>
             
               <p></p>
            Peso Especifico:
                    <input class="PesoE" name='pesoE' type="number" required>
            °Q (Grados Quevenne)
            <p></p>

            Acidez Titulable:
                    <input class="Acidez" name='Acidez' type="number" required>
            ml
            <p></p>
            pH:
                    <input class="ph" name='ph' type="number"required> mL
            <p></p>

            Prueba del Alcohol:
                    <input class="Pr_Alcohol" name='pralcohol' type="number" required>
            mL
            <p></p>
               <!--</div>-->
        <!--   <div " class="col-lg-6"> -->
               Reducción del Azul de Metileno:
                    <select class="Red_Azul_Metileno" required>
                        <option value="value0" selected>Selecionar</option>
                        <option value="value1">Buena a exelente</option>
                        <option value="value2">Regular a buena</option>
                        <option value="value3">Aceptable</option>
                        <option value="value4">Mala</option>
                    </select>
            <!--Mala: Menos de 2 horas    
                Aceptable: 2 - 6 horas
                Regular a buena: 6 - 8 horas    
                Buena a exelente: más de 8 horas  

                Numero estimado de bacterias por ml 
                Mala: 2 a 10 millones
                Regular a buena: 200.000 a 2.000.000 
                Buena a exelente:   100.000 a 200.000
                -->
            <p></p>

            Tiempo de Reducción de la Resazuina:
                    <select class="Red_Resazuina" required>
                        <option value="value0" selected>Selecionar</option>
                        <option value="value1">Buena a exelente</option>
                        <option value="value2">Regular a buena</option>
                        <option value="value3">Aceptable</option>
                        <option value="value4">Mala</option>
                    </select>
            <p></p>
            Prueba de Féculas:
                    <input class="Pr_feculas" name='textu' type="text"  placeholder="Viscosidad de 1,6"
                        required>
            <p></p>

            Prueba de Antibióticos:
                    <input class="Pr_Anti" name='textu' type="text"  placeholder="Viscosidad de 1,6"
                        required>
            <p></p>
            

        </div>

            <div class="col-md-6">
           
                Agua:
                    <input class="agua" name='textu' type="number" required/>
             gr
            <p></p>
             Energía:
                    <input class="agua" name='textu' type="number" required/>
            kcal
            <p></p>
             Proteína:
                    <input class="agua" name='textu' type="number" required/>
            gr
            <p></p>
            Grasas:
                    <input class="Grasas" name='textu' type="text" placeholder="Viscosidad de 1,6"
                        required>
            gr
            <p></p>
            Lactosa:
                    <input class="agua" name='textu' type="number" required>
            gr
            <p></p>
            Minerales:
                    <input class="agua" name='textu' type="number" required>
            gr
            <p></p>
            Colesterol:
                    <input class="coles" name='textu' type="text" placeholder="Viscosidad de 1,6"
                        required>
            gr
            <p></p>
            Fecha de la prueba:
                <input class="coles" name='textu' type="date" required />
            <!--             <script>
		var f = new Date();
          document.write(f.getDate() + "/" + (f.getMonth() + 1) + "/" + f.getFullYear());
                 
	</script> -->
           
                <p></p>
               <b>CARACTERISTICAS ORGANOLÉPTICOS:</b>
            <p></p>
            Textura:
                    <input class="Textura" name='textu' type="text"  placeholder="Viscosidad de 1,6"
                        required>
            <p></p>

            Color:
                     <select class="Color" required>
                        <option value="value0" selected>Selecionar</option>
                        <option value="value1">Blanco</option>
                        <option value="value2">Blanco Con Tinte Azulado</option>
                        <option value="value3">Gris Amarillento</option>
                        <option value="value4">Rosado</option>
                        <option value="value5">Otros Colores</option>
                    </select>
            <p></p>
            Sabor:
                    <select class="Sabor"  required>
                        <option value="value0" selected>Selecionar</option>
                        <option value="value1">Exelente</option>
                        <option value="value2">Buena</option>
                        <option value="value3">Regular</option>
                        <option value="value4">Pobre</option>
                        <option value="value5">Insulubre</option>
                    </select>
           
            <p></p>

            Olor:
                   <select class="Olor" required>
                        <option value="value0" selected>Selecionar</option>
                        <option value="value1">Caracteristico</option>
                        <option value="value2">Otro</option>
                    </select>
            <br />
           
            </div>  
        
        <input style="margin:0% 0% 1% 0%;"class="btn btn-theme02" type="submit" value="Guardar">
       <p><b>CARGAR PRUEBA DE RESULTADOS SOBRE LA CALIDAD DE LA LECHE</b></p>
        <input type="file" class="btn btn-theme02" value="Cargar Prueba" />
    </fieldset>


</asp:Content>
