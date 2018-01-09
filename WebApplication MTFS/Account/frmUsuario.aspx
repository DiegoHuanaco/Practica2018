<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="frmUsuario.aspx.vb" Inherits="WebApplication_MTFS.frmUsuario" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <asp:UpdatePanel id="UpdatePanel1" runat="server">
            <ContentTemplate>
                <fieldset> 
                <legend>Modulo de Sistema</legend>
                 <div class="panel panel-success">
<div class="col-lg-12 col-md-12">
<div class="panel-body" style="background-color:#e2eaed;">
     <h2 class="text-center"> &nbsp;&nbsp;Registro de Usuarios</h2>
        <p>&nbsp;</p>
        <div class="row">
            <div class="col-lg-1 col-md-1">
                <asp:Label ID="Label1" runat="server" Text="Label" CssClass="lbl lbl-info">Rol</asp:Label>
            </div>
            <div class="col-lg-3 col-md-3">
                <asp:DropDownList ID="DropDownList1" runat="server" ></asp:DropDownList>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
              
            </div>
             <div class="col-lg-1 col-md-1">
                    <asp:Button ID="Button4" runat="server" Text="Button" CssClass="form-control" />
              </div>
         </div>
         <div class="row">
            <div class="col-lg-1 col-md-1">
                <asp:Label ID="Label2" runat="server" Text="Label" CssClass="lbl lbl-info">Dominio</asp:Label>
            </div>
             <div class="col-lg-3 col-md-3">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            
         </div>
     <div class="row">
            <div class="col-lg-1 col-md-1">
                <asp:Label ID="Label3" runat="server" Text="Label" CssClass="lbl lbl-info">Usuario</asp:Label>
            </div>
               <div class="col-lg-3 col-md-3">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            
         </div>
     <div class="row">
            <div class="col-lg-1 col-md-1">
                <asp:Label ID="Label4" runat="server" Text="Label" CssClass="lbl lbl-info">Nombre</asp:Label>
            </div>
               <div class="col-lg-3 col-md-3">
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            
         </div>
     <div class="row">
            <div class="col-lg-1 col-md-1">
                <asp:Label ID="Label5" runat="server" Text="Label" CssClass="lbl lbl-info">Apellido</asp:Label>
            </div>
             <div class="col-lg-3 col-md-3">
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            
         </div>
     <div class="row">
            <div class="col-lg-1 col-md-1">
                <asp:Label ID="Label6" runat="server" Text="Label" CssClass="lbl lbl-info">E-mail</asp:Label>
            </div>
              <div class="col-lg-3 col-md-3">
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            
         </div>
     <div class="row">
            <div class="col-lg-1 col-md-1">
                <asp:Label ID="Label7" runat="server" Text="Label" CssClass="lbl lbl-info">pass1</asp:Label>
            </div>
              <div class="col-lg-3 col-md-3">
                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            
         </div>
     <div class="row">
            <div class="col-lg-1 col-md-1">
                <asp:Label ID="Label8" runat="server" Text="Label" CssClass="lbl lbl-info">pass2</asp:Label>
            </div>
              <div class="col-lg-3 col-md-3">
                <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
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

   <div class="col-lg-10 col-md-10">
    <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" >
     <div class="row">
        <div class="col-lg-8 col-md-8">
          <asp:GridView ID="GridView1" runat="server" CssClass="col-lg-8 col-md-8"></asp:GridView>
        </div> 
     </div>
       <div class="row">
        <div class="col-lg-1 col-md-1">
            <asp:Button ID="Button5" runat="server" Text="Salir" />
         </div>
       </div>
    </asp:Panel>
</div>
   
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender2" runat="server" PopupControlID="Panel1" TargetControlID="Button4" BackgroundCssClass="modalBackround" CancelControlID="Button5"></ajaxToolkit:ModalPopupExtender>  
</div>

</div>
</div>
                </fieldset>
            </ContentTemplate>
        </asp:UpdatePanel>
</asp:Content>
