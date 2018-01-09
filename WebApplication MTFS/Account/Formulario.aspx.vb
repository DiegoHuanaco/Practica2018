﻿Imports System
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports Microsoft.AspNet.Identity
Imports Microsoft.AspNet.Identity.EntityFramework
Imports Microsoft.AspNet.Identity.Owin
Imports MTFS.BL

Imports Owin


Partial Public Class Formulario
    Inherits Page
    'Protected Sub CreateUser_Click(sender As Object, e As EventArgs)
    '    Dim userName As String = Email.Text
    '    Dim manager = Context.GetOwinContext().GetUserManager(Of ApplicationUserManager)()
    '    Dim signInManager = Context.GetOwinContext().Get(Of ApplicationSignInManager)()
    '    Dim user = New ApplicationUser() With {.UserName = userName, .Email = userName}
    '    Dim result = manager.Create(user, Password.Text)
    Private vpo_Acceso As oCls_acceso



    '    If result.Succeeded Then
    '        ' Para obtener más información sobre cómo habilitar la confirmación de cuentas y el restablecimiento de contraseña, visite http://go.microsoft.com/fwlink/?LinkID=320771
    '        ' Dim code = manager.GenerateEmailConfirmationToken(user.Id)
    '        ' Dim callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request)
    '        ' manager.SendEmail(user.Id, "Confirmar cuenta", "Para confirmar la cuenta, haga clic <a href=""" & callbackUrl & """>aquí</a>.")

    '        signInManager.SignIn(user, isPersistent:=False, rememberBrowser:=False)
    '        IdentityHelper.RedirectToReturnUrl(Request.QueryString("ReturnUrl"), Response)
    '    Else
    '        ErrorMessage.Text = result.Errors.FirstOrDefault()
    '    End If
    'End Sub

    Protected Sub Operacion_Click(sender As Object, e As EventArgs)
        'vpo_Acceso = New oCls_acceso
        '  vpo_Acceso.mgn_AgregarUsuario(TextBox1.Text)
        ' TextBox2.Text = TextBox1.Text
        '   UpdatePanel1.Update

    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        vpo_Acceso = New oCls_acceso
        Dim vpo_dt_Usuario As DataTable
        vpo_dt_Usuario = vpo_Acceso.fgo_ObtenerListadoUsuario
        GridView2.DataSource = vpo_dt_Usuario
        GridView2.DataBind()




    End Sub

    Private Sub Formulario_Load(sender As Object, e As EventArgs) Handles Me.Load


        If Not Me.IsPostBack Then

            grid1()
            'grid2()

        End If


    End Sub

    Private Sub grid1()

        Dim dt As New DataTable()

        dt.Columns.AddRange(New DataColumn(3) {New DataColumn("Id"), New DataColumn("Name"), New DataColumn("Country"), New DataColumn("Salary")})
        dt.Rows.Add(1, "John Hammond", "United States", 70000)
        dt.Rows.Add(2, "Mudassar Khan", "India", 40000)
        dt.Rows.Add(3, "Suzanne Mathews", "France", 30000)
        dt.Rows.Add(4, "Robert Schidner", "Russia", 50000)

        GridView1.DataSource = dt
        GridView1.DataBind()



        'Attribute to show the Plus Minus Button.
        GridView1.HeaderRow.Cells(0).Attributes("data-class") = "expand"

        'Attribute to hide column in Phone.
        GridView1.HeaderRow.Cells(2).Attributes("data-hide") = "phone"
        GridView1.HeaderRow.Cells(3).Attributes("data-hide") = "phone"

        'Adds THEAD and TBODY to GridView.
        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader
    End Sub

    Private Sub grid2()

        Dim oGridView = New GridView

        Dim oGridViewRow = New GridViewRow(0, 0, DataControlRowType.Header, DataControlRowState.Insert)

        Dim oTableCell = New TableCell

        oTableCell.Text = ""

        oTableCell.ColumnSpan = 0

        oGridViewRow.Cells.Add(oTableCell)

        'agrego una columna sin nombre

        oTableCell.Text = ""

        oTableCell.ColumnSpan = 0

        oGridViewRow.Cells.Add(oTableCell)

        'agrego una columna llamada SE2

        oTableCell = New TableCell()

        oTableCell.Text = "SE 2"

        oTableCell.ColumnSpan = 1

        oGridViewRow.Cells.Add(oTableCell)

        'Agrego una columna Employee que esta combinada con otra columna ( 2 columnas)

        oTableCell = New TableCell()

        oTableCell.Text = "Employee"

        oTableCell.ColumnSpan = 1

        oGridViewRow.Cells.Add(oTableCell)

        'Agrego la cabecera creada a mi grilla  y listo.

        'oGridView.Controls(0).Controls.AddAt(0, oGridViewRow)
        'GridView2.Controls[0].Controls.AddAt(0, oGridViewRow)
        GridView2.DataSource = oGridView
        GridView2.DataBind()

    End Sub
    ''' <summary>
    ''' 
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>

End Class

