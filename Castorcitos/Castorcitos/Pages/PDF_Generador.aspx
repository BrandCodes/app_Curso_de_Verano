<%@ Page Language="C#" MasterPageFile="~/Pages/FormatoAdmin.Master" AutoEventWireup="true" CodeBehind="PDF_Generador.aspx.cs" Inherits="Castorcitos.Pages.PDF_Generador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">   
    <link type="text/css" rel="stylesheet" href="../CSS/EstiloGenerales.css" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >    
    3<script src="../JS/GeneradorPDF.js"></script><script src="../JS/NuevaVersion.js"></script><div class="container">
        <div id="Formato" style="display:none">    
            <div id="cabeceras">
                <center><h3>UNIVERSIDAD TECNOLÓGICA DE PUEBLA</h3></center>
                <center><h5>DIRECCIÓN DE EXTENSIÓN UNIVERSITARIA</h5></center>
                <center><h5>DEPARTAMENTO DE ACTIVIDADES CULTURALES Y DEPORTIVAS</h5></center>
            </div>        	        
            <br />
            <center><h4>Carta Responsiva</h4></center>
            <center><h4>XII Curso de Verano Castorcitos UTP 2016</h4></center>
            <br />
            <br />
            <br />
            <h5>Fecha: </h5>
            <br />
            <br />
            <h4>A quien correponda</h4>
            <h4>Presente</h4>
            <br />
            <p align="justify">
	            El Sr. _________________________ padre y la Sra. _________________________<br>
	            madre de(l) la niña(o) ______________________ damos nuestra autorización y <br>
	            consentimiento para que nuestro(a) hijo(a), participe en el <p class="lead">XII Curso de Verano Castorcitos <br>
	            UTP 2016. </p> En el que se impartiran actividades físicas recreativas y culturales.<br>
	            En caso de ser necesario nos pueden contactar en:<br>
	            Área donde labora: _________________________ extensión:_________________________<br>
	            Teléfono de casa: ________________ Teléfono Celular del Padre o Madre: _________________<br>
	            Si la niña(o) tiene algún padecimiento o alergía favor<br>
	            de mencionarlo:_______________________________________________________________.<br>
	            Aunado a lo anterior, libero a la Universidad, de responsabilidad alguna en el caso  de que<br>
	            durante la realización del curso, ocurra algún percance, enfermedad, lesión física o<br>
	            padecimiento. De llegar a ocurrir, el menor cuenta con Seguridad Social en el <br>
	            ____________________ con número de afiliación ______________________; y/o, los gastos serán <br>
	            cubiertos por nosotros, dejando a la Universidad Tecnológica de Puebla, a salvo de cualquier<br>
	            reclamación que llegue a surgir, deslindándola de cualquier otra acción legal que pudiera<br>
	            resultar.	
            </p>
            <br />
            <center><h4>A t e n t a m e n t e </h4><center>
            <br />
            <br />
            <div> 
	            <p align="left">
	            _______________________<br />
	            <center><h4>Nombre y Firma</h4><br></center>
	            <center>Madre</center>
	            </p>
	            <p align="right">
	            _______________________<br />
	            <center><h4>Nombre y Firma</h4><br></center>
	            <center>Padre</center>
	            </p>
            </div>
            <br />
            <p>
	            Nombre de la  persona autorizada para recoger a(l) la niña(o):<br />
	            _________________________________________________________________________________<br />
	            <h5>Firma: </h5> _____________________
            </p>
        </div>
        <div id="Formato2" style="display:none">
            <h5>Reglamento del XII  Curso de Verano  Castorictos UTP 2016</h5><br />
            <br />
            <p>
                1) Para poder participar en el XII  Curso de Verano  Castorictos UTP 2016, la (el) niña (o)<br />
                deberá estar debidamente inscrito cumpliendo  con los siguientes requisitos:<br />
                <dl>
                    <dd>- Tener una edad de 5 a 14 años máximo.</dd>
                    <dd>- Ser hijo(a) de trabajador(a) de la UTP.</dd>
                    <dd>- Presentar carta responsiva firmada por los padres.</dd>
                    <dd>- Certificado médico.</dd>
                    <dd>- Copia de acta de nacimiento.</dd>
                    <dd>- Copia credencia ISSTEP.</dd>
                    <dd>- Foto tamaño infantil a color.</dd>
                    <dd>- Copia IFE de los padres.</dd>
                    <dd>- Copia de credencial de trabajador (gafete).</dd>
                </dl>
            </p>
            <br />
            <p>
                2) El padre o madre de familia deberá dejar a sus hijos de lunes a viernes en la<br />
                entrada del gimnasio-auditorio de las 8:45 a las 9:00 hrs. y recogerlo en el mismo<br />
                lugar de las 13:45 a las 14:00 hrs. 
            </p>
            <br />
            <p>
                3) La (el) niña(o) deberá ateder todas las indicaciones del personal <br />
                administrativo, así como tambien mantener un buen comportamiento y respeto <br />
                hacia sus compañeros.
            </p>
            <br />
            <p>
                4) Con el fin de brindar un mejor servicio a los niños es obligación de <br />
                todas las personas que participan en el curso cuidar de las inatalaciones  de la <br />
                universidad, ya que de causar algun daño o desperfecto tendrá que cubrir el <br />
                costo  y/o reparación  del mismo.
            </p>
            <br />
            <p>
                5) Cuando el padre o madre de familia tenga alguna situación en particular que<br />
                comentar, deberá dirigirse al personal designado en el Dpto. De Actividades<br />
                Culturales y Deportivas antes de la hora de entrada o después de la salida; si la <br />
                situación requiere de atención inmediata deberá dirigirse al jefe del Departamento.
            </p>
            <br />
            <p>
                6) El padre o madre de familia se abstendrá de estar presente en la actividades, ya<br />
                que distraen al grupo y en particular a su hijo. En caso excepcional podrá estar<br />
                máximo 15 minutos con la autorización del jefe del Dpto. de Actividades <br />
                Culturales y  Deportivas.
            </p>
            <br />
            <p>
                7) Sólo se entregará a(l) la niña(o) a la persona autorizada por el padre o madre de <br />
                familia, presentando una identificación oficial.
            </p>
            <br />
            <p>
                8) Nombre de la persona que se autoriza para entregar al niño(a)<br />
                ________________________________________________________________.
            </p>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <h5>Acepto de conformidad éste reglamento</h5>
            <br />  
            <br />
            <br />
            <br />
            <br />
            <div class="Firmas">
                <p>
                    ________________________<br />
                    Nombre y Firma (Madre)
                </p>
                <br />
                <p>
                    ________________________<br />
                    Nombre y Firma (Padre)
                </p>
            </div>
        </div>

        <br />
        <div class="page-header">
            <h1>PDFs <small>Obligatorios</small></h1>
        </div>

        <p class="text-primary">
            Los siguientes documentos se deberán imprmir y <mark>entregar</mark> llenados en tiempo y forma.
        </p>
        <br />
        <br />
        <center><label>Documento Responsiva:</label></center>
        <center><p>Éste documento requiere obligatoriamente de los datos y firmas correspondientes. </p></center>
        <center><input  id="btnResponsiva" type="button" class="btn btn-info" value="Generar" onclick="generarPDF();"/></center>
        <br />
        <object id="documento" style="width: 100%; height:900px"> </object>
        <br />
        <br />
        <br />
        <br />
        <br />
        <center><label>Documento Reglamento:</label></center>
        <center><p>Éste documento requiere de las firmas de ambos Padres del hijo inscrito, una vez firmado el presente documento acredita la aceptación al curso de verano.</p></center>
        <center><input  id="btnReglamento" type="button" class="btn btn-info" value="Generar" onclick="generarPDF2();"/></center>        
        <br />
        <object id="documento2" style="width: 100%; height:900px"> </object>
        <br />
    </div>
</asp:Content>