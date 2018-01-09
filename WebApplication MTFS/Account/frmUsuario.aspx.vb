Imports System
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports Microsoft.AspNet.Identity
Imports Microsoft.AspNet.Identity.EntityFramework
Imports Microsoft.AspNet.Identity.Owin
Imports MTFS.BL

Imports Owin
Public Class frmUsuario
    Inherits System.Web.UI.Page
    Private vpo_Acceso As oCls_acceso
    Private vpo_Usuario As oCls_acceso

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        vpo_Acceso = New oCls_acceso
        Dim vpo_dt_roles As DataTable
        vpo_dt_roles = vpo_Acceso.fgo_ObtenerListadoRoles()
        DropDownList1.DataSource = vpo_dt_roles

        DropDownList1.DataValueField = "Id_Rol"
        DropDownList1.DataTextField = "Nombre_Rol"
        DropDownList1.DataBind()


        vpo_Usuario = New oCls_acceso
        Dim vpo_dt_Usuario As DataTable
        vpo_dt_Usuario = vpo_Usuario.fgo_ObtenerListadoUsuario
        GridView1.DataSource = vpo_dt_Usuario
        GridView1.DataBind()
    End Sub

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click


    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        vpo_Usuario = New oCls_acceso
        vpo_Usuario.mgn_AgregarUsuario(DropDownList1.Text, True, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text, False)
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged, DropDownList1.TextChanged
        Dim vpo_valor As String
        vpo_valor = DropDownList1.SelectedValue.ToString

        TextBox2.Text = vpo_valor

        TextBox3.Text = DropDownList1.Text

    End Sub
End Class