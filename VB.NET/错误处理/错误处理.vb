'------------------------------------------------------------
'使用说明：
'------------------------------------------------------------
'Try

'Catch ex As Exception
'    Dim strErr As String = ""
'	strErr = ex.ToString
'	ErrorHandler(strErr)
'End Try

''' <summary>
''' 写入日志
''' </summary>
''' <remarks>LOGFILE 是自定义的全局常量</remarks>
Public Sub ErrorHandler(ByVal strErrdescribe As String)

#If DEBUG Then
	MessageBox.Show(strErrdescribe, frmMain.Text, MessageBoxButtons.OK, MessageBoxIcon.Error)
#Else
	Dim swTmp As StreamWriter = File.AppendText(g_LOGFILE)
	swTmp.WriteLine(Now & vbTab & strErrdescribe)
	swTmp.Close()
	swTmp = Nothing
#End If

End Sub