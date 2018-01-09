<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="frmLogin.aspx.vb" Inherits="WebApplication_MTFS.frmLogin" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
         <ContentTemplate>
             <fieldset >
                 <legend>Control de acceso</legend>
             </fieldset>
             <div class="col-lg-12 col-md-12">
             <center>
               <div class="panel-body" style="background-color:#e2eaed;">
                   <div class="col-lg-6 col-md-6">
                       <div class="row">
                           <div class="col-lg-3 col-md-3">
                               <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                           </div>
                           <div class="col-lg-3 col-md-3">
                               <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                           </div>
                       </div>
                       <div class="row">
                           <div class="col-lg-3 col-md-3">
                               <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                           </div>
                           <div class="col-lg-3 col-md-3">
                               <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                           </div>
                       </div>
                       <div class="row">
                                <asp:Button ID="Button1" runat="server" Text="enviar"></asp:Button>
                                 <asp:Button ID="Button2" runat="server" Text="limpiar"></asp:Button>
                           <asp:Button ID="Button3" runat="server" Text="poppup"></asp:Button>
                           <asp:LinkButton ID="TestLinkButton" CssClass="btn btn-success btn-xs" runat="server"><span class="glyphicon glyphicon-refresh"/>Press Me</asp:LinkButton>
                             <div class="btn-group">
                                
                             </div>
                       </div>
                   </div> 
                 </div>  <%--fin panel body--%>
              </center>  
                 <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" ScrollBars="Both">
                     <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                     <asp:Button ID="Button4" runat="server" Text="salir" />
                 </asp:Panel>

                 <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="Button3" CancelControlID="Button4"  BackgroundCssClass="modalBackround" PopupControlID="Panel1" ></ajaxToolkit:ModalPopupExtender>

 
             </div><%--fin div class bootstrap--%>
         </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
