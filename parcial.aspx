<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="parcial.aspx.cs" Inherits="_20172578091.parcial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 502px">
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" style="position: relative" Text="Parcial individual (20%) "></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Digite una oracion:   "></asp:Label>
        <asp:TextBox ID="txtFrase" runat="server" OnTextChanged="txtFrase_TextChanged" Width="462px"></asp:TextBox>
        <asp:Button ID="boton" runat="server" OnClick="boton_Click" style="width: 34px" Text="Ver" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 10px; top: 129px; position: absolute; width: 244px" Text="Palabras invertidas y ordenadas alfabeticamente de la oracion que contengan la silaba SO o la letra E"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; top: 129px; position: absolute; width: 194px; left: 328px" Text="Palabras de la lista anterior donde la cuarta letra no sea una O"></asp:Label>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:ListBox ID="palabrasA" runat="server" AutoPostBack="True" Height="187px" OnSelectedIndexChanged="palabrasA_SelectedIndexChanged" SelectionMode="Multiple" Width="183px"></asp:ListBox>
        <asp:ListBox ID="palabrasB" runat="server" AutoPostBack="True" Height="187px" OnSelectedIndexChanged="palabrasB_SelectedIndexChanged" SelectionMode="Multiple" style="margin-left: 138px" Width="179px"></asp:ListBox>
    </form>
</body>
</html>
