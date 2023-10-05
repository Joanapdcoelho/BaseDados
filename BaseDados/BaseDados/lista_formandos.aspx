<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lista_formandos.aspx.cs" Inherits="BaseDados.lista_formandos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Base de dados</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="author" content="JoanaCoelho" />
    <!--Bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />

    <!-- Fontawesome -->
    <script src="https://kit.fontawesome.com/59679202d4.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container">
    <form id="form1" runat="server">
        
            <h1>Lista de formandos</h1>
            <br />
            <br />
            <b>Curso:</b>
            <asp:DropDownList ID="ddl_Curso" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceCET74" DataTextField="curso" DataValueField="cod_curso" AppendDataBoundItems="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceCET74" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCET74 %>" SelectCommand="SELECT * FROM [cursos]"></asp:SqlDataSource>
            <br />
            <br />
            <br />

            <asp:Xml ID="Xml1" runat="server" TransformSource="~/formata_lista_formandos.xslt"></asp:Xml>
    </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-z8MSn0lMBetA/Ws0JKrNSu1pV4uXgSkG3e7BGj4qDTYIaolqjCZ/Drh7Rql4QJxw" crossorigin="anonymous"></script>
</body>
</html>
