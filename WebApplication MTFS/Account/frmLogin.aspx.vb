Public Class frmLogin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dt As New DataTable()
        Dim dr As DataRow = Nothing
        dt.Columns.Add(New DataColumn("RowNumber", GetType(String)))
        dt.Columns.Add(New DataColumn("Column1", GetType(String)))
        dt.Columns.Add(New DataColumn("Column2", GetType(String)))

        dr = dt.NewRow()
        dr("RowNumber") = 1
        dr("Column1") = "diego"
        dr("Column2") = "huanaco"

        dt.Rows.Add(dr)
        dr = dt.NewRow()
        dr("RowNumber") = 1
        dr("Column1") = "seba"
        dr("Column2") = "uzquiano"

        dt.Rows.Add(dr)
        ViewState("CurrentTable") = dt
        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub

    Protected Sub TestLinkButton_Click(sender As Object, e As EventArgs) Handles TestLinkButton.Click
        Me.TextBox1.Text = "dfasdf"
    End Sub





    '   Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
    '       ScriptManager.RegisterClientScriptBlock(Me, Me.GetType(), "none", "
    '<script>$('#mymodal').modal('show');</script>", False)
    '   End Sub

End Class