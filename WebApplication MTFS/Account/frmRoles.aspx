<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="frmRoles.aspx.vb" Inherits="WebApplication_MTFS.frmRoles" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 <asp:UpdatePanel id="UpdatePanel1" runat="server">
            <ContentTemplate>
                <fieldset>
                <legend>UpdatePanel1</legend>
     <div class="panel panel-success">
<div class="col-lg-12 col-md-12">
<div class="panel-body" >
        <h2 class="text-center"> &nbsp;&nbsp;Registro de Roles</h2>
        <p>&nbsp;</p>
<%--<%– inicio de formulario -%>--%>

     <asp:HiddenField ID="oHf_IdRol" runat="server" />
        <div class="row">
            <div class="col-lg-1 col-md-1">
                <asp:Label ID="Label1" runat="server" Text="Label" CssClass="lbl lbl-info">Nombre</asp:Label>
            </div>
            <div class="col-lg-3 col-md-3">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control required"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="regRol" runat="server"     
                                    ErrorMessage="Expresion no valida." 
                                    ControlToValidate="TextBox1"     
                                    ValidationExpression="^[a-zA-Z'.\s]{1,40}$"  EnableClientScript="False"  />
            </div>
            <div class="col-lg-2 col-md-2">
           
                 <asp:LinkButton ID="olb_OpenModal" CssClass="btn btn-primary btn-md" data-toggle="modal" data-target="#LoginModal" data-backdrop="false" runat="server" CausesValidation="False"><span class="glyphicon glyphicon-search small"/></asp:LinkButton>
                
                <script type="text/javascript">
                
                    //function Abre_Modal() {
                    //    $('#LoginModal').modal({ backdrop: false });
                    //        $('#LoginModal').modal('show');
                            
                    //}
                    function closemodal() {
                        $("#myModal").modal("hide");
                    }
</script>
                
<%--<%– inicio tabla modal -%>--%>  
<div class="modal fade" id="LoginModal" tabindex="-1" role="dialog" aria-labelledby="ModalTitle" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">

<h4 class="modal-title" id="ModalTitle">Listado Roles</h4>
</div>

<div class="modal-body" style="height:350px;overflow-y:scroll;">
 
    <asp:Panel ID="Panel2" runat="server"  >
        
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered">
                <Columns>
                   <asp:CommandField ButtonType="Image" ShowSelectButton="True" SelectImageUrl="~/ico_btn.png" CausesValidation="False"  />
                
                    <asp:BoundField DataField="Id_Rol" HeaderText="Id Rol" />
                    <asp:BoundField DataField="Nombre_Rol" HeaderText="Nombre" />
                    <asp:BoundField DataField="Descripcion_Rol" HeaderText="Descripcion" />
                  
                </Columns>
            </asp:GridView>
    </asp:Panel>


   </div>
    <div class="modal-footer">
       <asp:LinkButton ID="olb_SalirModal" CssClass="btn btn-primary btn-md"  runat="server" data-dismiss="modal" >Salir</asp:LinkButton>
    </div>
</div>
</div>
</div>
<%--<%– fin tabla modal -%>--%>  


              </div>
            
         </div>
  
     <div class="row">
            <div class="col-lg-1 col-md-1">
                <asp:Label ID="Label8" runat="server" Text="Label" CssClass="lbl lbl-info">Descripcion</asp:Label>
            </div>
              <div class="col-lg-3 col-md-3">
                <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control required"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"     
                                    ErrorMessage="Expresion no valida." 
                                    ControlToValidate="TextBox8"     
                                    ValidationExpression="^[a-zA-Z'.\s]{1,40}$" />
            </div>
          
         </div>
     <div class="row" >
         <div class="col-lg-3 col-md-3"></div>

      <div class="col-lg-6 col-md-6">
        
            <div class="col-lg-2 col-md-2">
                <asp:LinkButton ID="obn_GuardaRol" CssClass="form-control btn btn-primary btn-xs" runat="server"  CausesValidation="True">Guardar</asp:LinkButton>
            </div> 
           <div class="col-lg-2 col-md-2">
                 <asp:LinkButton ID="obn_EliminarRol" CssClass="form-control btn btn-primary btn-xs" runat="server" CausesValidation="False">Eliminar</asp:LinkButton>
            </div> 
            <div class="col-lg-2 col-md-2">
                <asp:LinkButton ID="obn_LimpiarRol" CssClass="form-control btn btn-primary btn-xs" runat="server" CausesValidation="False">Limpiar</asp:LinkButton>
        
        </div>
      </div>        
   </div>
<%--<%– fin de formulario -%>--%>  
    <%--<%– inicio de panel y grilla -%>--%>
    <%--<div class="col-lg-10 col-md-10">--%>
  <%--<%– fin de panel -%>--%>
   <%-- <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup"  ScrollBars="Vertical">
    <div class="row">
        <div class="col-lg-8 col-md-8">
           <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered">
                <Columns>
                   <asp:CommandField ButtonType="Image" ShowSelectButton="True" SelectImageUrl="~/ico_btn.png"  />
                  
                    <asp:BoundField DataField="Id_Rol" HeaderText="Id Rol" />
                    <asp:BoundField DataField="Nombre_Rol" HeaderText="Nombre" />
                    <asp:BoundField DataField="Descripcion_Rol" HeaderText="Descripcion" />
                  
                </Columns>
            </asp:GridView>--%>
      <%--  </div> 
     </div>
       <div class="row">
        <div class="col-lg-1 col-md-1">
            <asp:Button ID="Button5" runat="server" Text="Salir" />
         </div>
       </div>
    </asp:Panel>--%>
    <%--<%– fin de panel -%>--%>
 <%--   </div>--%>
   <%-- <%– fin de panel y grilla -%>--%>
   <%-- <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="Panel1" TargetControlID="TestLinkButton" BackgroundCssClass="modalBackround" CancelControlID="Button5" CacheDynamicResults="True" RepositionMode="RepositionOnWindowResize"></ajaxToolkit:ModalPopupExtender>--%>
    
</div>
    

</div>
</div>
         </div>
 

                </fieldset>
            </ContentTemplate>
        </asp:UpdatePanel>

 
</asp:Content>
