Public Class oCls_acceso
#Region "Variables"

    '  Event eErrores(ByVal pveNm_Errores As eNm_Errores)
    '   Event eCorrectos(ByVal pveNm_Correctos As eNm_Correctos)
    ' Event eValidaciones(ByVal pveNm_Validacion As eNm_Validaciones)

    '   Private vpo_Areas As DataSet_AreasTableAdapters.AreasTableAdapter
    Private vpo_Acceso As DataSet_accesoTableAdapters.UsuariosTableAdapter
    Private vpo_Roles As DataSet_accesoTableAdapters.RolesTableAdapter
    Private vpo_Modulos As DataSet_accesoTableAdapters.Modulos_SistemaTableAdapter
    Public Sub mgn_AgregaModulo(ByVal pvs_Nombre As String, ByVal pvs_ruta As String, ByVal pvs_grupo As Integer, ByVal pvs_Estado As Boolean, ByVal pvs_tipo As Integer, ByVal pvs_Indice As Integer)
        vpo_Modulos = New DataSet_accesoTableAdapters.Modulos_SistemaTableAdapter
        vpo_Modulos.Insert(pvs_Nombre, pvs_ruta, pvs_grupo, pvs_Estado, pvs_tipo, pvs_Indice)


    End Sub



#End Region
    Public Sub mgn_AgregarAcceso(ByVal pvs_Nombre As String, ByVal pvs_Descripcion As String)
        Try
            vpo_Roles = New DataSet_accesoTableAdapters.RolesTableAdapter
            vpo_Roles.Insert(pvs_Nombre, pvs_Descripcion, True)


        Catch ex As Exception

        End Try

    End Sub
    Public Sub mdn_EliminaAcceso(ByVal pvs_Id_rol As Integer)
        Try
            vpo_Roles = New DataSet_accesoTableAdapters.RolesTableAdapter
            vpo_Roles.mdn_EliminaRol(pvs_Id_rol)


        Catch ex As Exception

        End Try

    End Sub
    Public Sub mgn_AgregarUsuario(ByVal pvs_Rol As Integer, ByVal pvs_Estado As Boolean, ByVal pvs_Domminio As String, ByVal pvs_Usuario As String, ByVal pvs_Nombre As String, ByVal pvs_Apellido As String, ByVal pvs_Email As String, ByVal pvs_Pass As String, ByVal pvs_Cambiarpass As String)
        Try
            vpo_Acceso = New DataSet_accesoTableAdapters.UsuariosTableAdapter
            'vpo_Acceso.Insert(pvs_Rol, True, "", pvs_Nombre, "amino", "miño", "alexisjmp@gmail.com", "123", False)
            vpo_Acceso.Insert(pvs_Rol, pvs_Estado, pvs_Domminio, pvs_Usuario, pvs_Nombre, pvs_Apellido, pvs_Email, pvs_Pass, pvs_Cambiarpass)

            '  RaiseEvent eCorrectos(eNm_Correctos.guardar_actualizar_rol)                 'Activación de evento de correcto
        Catch ex As Exception
            '  RaiseEvent eErrores(eNm_Errores.guardar_actualizar_rol)                     'Activación de evento de error
        End Try
    End Sub
    Function fgo_ObtenerListadoUsuario()
        Try

            vpo_Acceso = New DataSet_accesoTableAdapters.UsuariosTableAdapter


            Dim vpo_DT_Usuario As DataTable = vpo_Acceso.msoListadoUsuario


            If Not vpo_DT_Usuario Is Nothing Then
                Return vpo_DT_Usuario 'Retorno de función
            Else
                '  RaiseEvent eErrores(eNm_Errores.error_general)  'Activación de evento de error
                Return Nothing
            End If

        Catch ex As Exception
            '  RaiseEvent eErrores(eNm_Errores.error_general)      'Activación de evento de error
            Return Nothing
        End Try

    End Function

    Function fgo_ObtenerListadoRoles()
        Try
            vpo_Roles = New DataSet_accesoTableAdapters.RolesTableAdapter
            'Dim vpo_DT_Roles As DataTable = vpo_Acceso.
            Dim vpo_DT_Roles As DataTable = vpo_Roles.msoListadoRoles

            If Not vpo_DT_Roles Is Nothing Then
                Return vpo_DT_Roles
            Else
                Return Nothing
            End If
        Catch ex As Exception
            '  RaiseEvent eErrores(eNm_Errores.error_general)      'Activación de evento de error
            Return Nothing
        End Try
    End Function
    Public Function fgo_BuscaRolesXIdRol(ByVal pvi_IdRol As Integer) As DataTable
        'Inicio de captura de errores
        Try
            vpo_Roles = New DataSet_accesoTableAdapters.RolesTableAdapter     'Instancia de objeto

            'Obtención de Roles x Nombre
            Dim vpo_DT_Roles As DataTable = vpo_Roles.mso_BuscaRolXId_Rol(Trim(pvi_IdRol))

            If Not vpo_DT_Roles Is Nothing Then
                Return vpo_DT_Roles   'Retorno de función
            Else
                'RaiseEvent eErrores(eNm_Errores.error_general)  'Activación de evento de error
                Return Nothing
            End If

        Catch ex As Exception
            '  RaiseEvent eErrores(eNm_Errores.error_general)      'Activación de evento de error
            Return Nothing
        End Try
    End Function

End Class
