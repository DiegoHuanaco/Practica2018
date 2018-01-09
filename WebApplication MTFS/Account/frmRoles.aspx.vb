Imports System
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports Microsoft.AspNet.Identity
Imports Microsoft.AspNet.Identity.EntityFramework
Imports Microsoft.AspNet.Identity.Owin
Imports MTFS.BL

Imports Owin
Public Class frmRoles
    Inherits System.Web.UI.Page
#Region "Variables"
    Private WithEvents vpo_BLAcceso As oCls_acceso
    Private Const IdModulo As Integer = 26
#End Region
    Private vpo_Acceso As oCls_acceso
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        mpn_MostrarGrilla()



    End Sub
    Private Sub mpn_MostrarGrilla()
        vpo_Acceso = New oCls_acceso
        Dim vpo_dt_roles As DataTable
        vpo_dt_roles = vpo_Acceso.fgo_ObtenerListadoRoles
        GridView1.DataSource = vpo_dt_roles
        GridView1.DataBind()
    End Sub
    Private Sub mpn_Limpiaformuario()
        Me.TextBox1.Text = ""
        Me.TextBox8.Text = ""
    End Sub
    Private Sub mpn_BuscaYMuestraRolXID_Rol(ByVal pvs_IdRol As String)
        Dim vlo_InfoCliente As New Data.DataTable

        'Instancia de objeto
        vpo_BLAcceso = New oCls_acceso
        'Obtención de cliente por R.U.T.
        vlo_InfoCliente = vpo_BLAcceso.fgo_BuscaRolesXIdRol(Trim(pvs_IdRol))

        'Verificación de existencia de cliente
        If vlo_InfoCliente IsNot Nothing Then
            If vlo_InfoCliente.Rows.Count > 0 Then
                'Asignación de datos del cliente al formulario
                Me.oHf_IdRol.Value = vlo_InfoCliente.Rows(0).Item("Id_Rol").ToString
                Me.TextBox1.Text = vlo_InfoCliente.Rows(0).Item("Nombre_Rol").ToString
                Me.TextBox8.Text = vlo_InfoCliente.Rows(0).Item("Descripcion_Rol").ToString
                If CBool(vlo_InfoCliente.Rows(0).Item("Estado_Rol").ToString) = True Then
                    '        Me.oCv_DdlEstadoRol.SelectedValue = 1
                ElseIf CBool(vlo_InfoCliente.Rows(0).Item("Estado_Rol").ToString) = False Then
                    '        Me.oCv_DdlEstadoRol.SelectedValue = 0

                End If

            Else
                'Cambia mensaje e icono de mensaje informativo
                '    Me.oLb_MensajeInformativo.Text = "El Rol buscado no existe."
                '   Me.oIb_ImagenMensajeInformativo.ImageUrl = oCls_Rutas.pgs_RutaIconoInformacion
                'Muestra mensaje informativo
                '  Me.oMPa_MensajeInformativo.Show()
                '  Me.oULa_MensajeInformativo.Update()
                'Asignación de foco
                ' oSMa_Principal.SetFocus("oPb_AceptarMensajeInformativo")
            End If
        End If

        'Actualiza UpdatePanel principal
        '    Me.oULa_Principal.Update()

    End Sub


    'Protected Sub GridView1_SelectedIndexChanged(sender As Object, ByVal e As System.Web.UI.WebControls.GridViewSelectEventArgs) Handles GridView1.SelectedIndexChanged
    '    ' mpn_BuscaYMuestraRolXID_Rol(Me.oGv_BusquedaRolXNombre.Rows(e.NewSelectedIndex).Cells(1).Text)
    '    mpn_BuscaYMuestraRolXID_Rol(Conversion.Int(Me.GridView1.Rows(e.NewSelectedIndex).Cells(1).Text))
    'End Sub

    Protected Sub GridView1_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GridView1.RowCommand
        If (e.CommandName = "Select") Then
            mpn_BuscaYMuestraRolXID_Rol(Conversion.Int(GridView1.Rows(Conversion.Int(e.CommandArgument)).Cells(1).Text))

            'TextBox1.Text = GridView1.Rows(Conversion.Int(e.CommandArgument)).Cells(1).Text
            'TextBox8.Text = GridView1.Rows(Conversion.Int(e.CommandArgument)).Cells(2).Text




        End If

    End Sub





    Protected Sub obn_GuardaRol_Click(sender As Object, e As EventArgs) Handles obn_GuardaRol.Click
        vpo_Acceso = New oCls_acceso
        vpo_Acceso.mgn_AgregarAcceso(TextBox1.Text, TextBox8.Text)
        mpn_MostrarGrilla()
    End Sub

    Protected Sub obn_EliminarRol_Click(sender As Object, e As EventArgs) Handles obn_EliminarRol.Click
        vpo_Acceso = New oCls_acceso
        If (oHf_IdRol.Value <> "") Then
            vpo_Acceso = New oCls_acceso
            vpo_Acceso.mdn_EliminaAcceso(Conversion.Int(oHf_IdRol.Value))
            Me.TextBox1.Text = ""
            Me.TextBox8.Text = ""
            mpn_MostrarGrilla()
        End If
    End Sub

    Protected Sub obn_LimpiarRol_Click(sender As Object, e As EventArgs) Handles obn_LimpiarRol.Click
        mpn_Limpiaformuario()
    End Sub
End Class