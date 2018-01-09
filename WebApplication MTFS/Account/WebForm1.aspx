<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="WebForm1.aspx.vb" Inherits="WebApplication_MTFS.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="Hola"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Button" ValidationGroup="Hola" />
    <asp:Button ID="Button2" runat="server" Text="Button" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                                runat="server" 
                                ErrorMessage="RequiredFieldValidator" 
                                ControlToValidate="TextBox1" 
                                ValidationGroup="Hola"
                                EnableClientScript="false">
    </asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                    ValidationGroup="Hola" 
                                    ErrorMessage="RegularExpressionValidator"
                                    ControlToValidate="TextBox1" 
                                    ValidationExpression="\d{3,8}-[\d|kK]{1}" 


                                                    ></asp:RegularExpressionValidator>

</asp:Content>
