Imports System
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports Microsoft.AspNet.Identity
Imports Microsoft.AspNet.Identity.EntityFramework
Imports Microsoft.AspNet.Identity.Owin
Imports MTFS.BL

Imports Owin
Public Class frmModulos
    Inherits System.Web.UI.Page
    Private vpo_Acceso As oCls_acceso
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        vpo_Acceso = New oCls_acceso
        vpo_Acceso.mgn_AgregaModulo(TextBox1.Text, TextBox8.Text, 1, True, 1, Conversion.Int(TextBox2.Text))
    End Sub
End Class