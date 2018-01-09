<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="frmModulos.aspx.vb" Inherits="WebApplication_MTFS.frmModulos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <asp:UpdatePanel id="UpdatePanel1" runat="server">
            <ContentTemplate>
                <fieldset> 
                <legend>Modulo de Sistema</legend>
                 <div class="panel panel-success">
<div class="col-lg-12 col-md-12">
<div class="panel-body" style="background-color:#e2eaed;">
  <div class="row">
        <h2 class="text-center"> &nbsp;&nbsp;</h2>
        <p>&nbsp;</p>
</div> 
        <div class="row">
            <div class="col-lg-2 col-md-2">
                <asp:Label ID="Label1" runat="server" Text="Label" CssClass="lbl lbl-info">Nombre del Modulo</asp:Label>
            </div>
            <div class="col-lg-3 col-md-3">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
              
            </div>
            
         </div>
  
     <div class="row">
          <div class="col-lg-2 col-md-2">
                <asp:Label ID="Label8" runat="server" Text="Label" CssClass="lbl lbl-info">Ruta del Modulo</asp:Label>
            </div>
              <div class="col-lg-3 col-md-3">
                <asp:TextBox ID="TextBox8" runat="server"  CssClass="form-control"></asp:TextBox>
            </div>
            
         </div>
     <div class="row">
           <div class="col-lg-2 col-md-2">
                <asp:Label ID="Label2" runat="server" Text="Label" CssClass="lbl lbl-info">Grupo Modulo</asp:Label>
            </div>
              <div class="col-lg-3 col-md-3">
                  <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            
     </div>
      <div class="row">
           <div class="col-lg-2 col-md-2">
                <asp:Label ID="Label3" runat="server" Text="Label" CssClass="lbl lbl-info">Estado Modulo</asp:Label>
            </div>
              <div class="col-lg-3 col-md-3">
                 <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            
      </div>
      <div class="row">
           <div class="col-lg-2 col-md-2">
                <asp:Label ID="Label4" runat="server" Text="Label" CssClass="lbl lbl-info">Tipo Modulo</asp:Label>
            </div>
              <div class="col-lg-3 col-md-3">
                  <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            
         </div>
      <div class="row">
            <div class="col-lg-2 col-md-2">
                <asp:Label ID="Label5" runat="server" Text="Label" CssClass="lbl lbl-info">Indice Modulo</asp:Label>
            </div>
              <div class="col-lg-1 col-md-1">
                  <asp:TextBox ID="TextBox2" runat="server"  CssClass="form-control"></asp:TextBox>
            </div>
            
         </div>
     <div class="row" >
         <div class="col-lg-2 col-md-2"></div>

      <div class="col-lg-3 col-md-3">
         <div class="form-control" style="background-color:#e2eaed;" >
            <div class="col-lg-4 col-md-4">
                <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary btn-xs" Text="Guardar" />
            </div> 
            <div class="col-lg-4 col-md-4">
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-xs" Text="Eliminar" />
            </div> 
            <div class="col-lg-4 col-md-4">
                <asp:Button ID="Button3" runat="server" CssClass="btn btn-primary btn-xs" Text="Limpiar" />
            </div> 
        </div>
      </div>        
   </div>

   


</div>

</div>
</div>
                </fieldset>
            </ContentTemplate>
        </asp:UpdatePanel>
</asp:Content>
