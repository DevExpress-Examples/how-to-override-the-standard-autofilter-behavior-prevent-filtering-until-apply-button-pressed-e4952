Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
	End Sub
	Protected Sub ASPxGridView1_CustomCallback(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxGridViewCustomCallbackEventArgs)
		Dim thisASPxGridView As ASPxGridView = TryCast(sender, ASPxGridView)
		For Each column As GridViewColumn In thisASPxGridView.Columns
			Dim dataColumn As GridViewDataColumn = TryCast(column, GridViewDataColumn)
			If dataColumn Is Nothing Then
				Continue For
			End If
			Dim filterCellTextBox As ASPxTextBox = TryCast(thisASPxGridView.FindFilterCellTemplateControl(dataColumn, "ASPxTextBox1"), ASPxTextBox)
			If filterCellTextBox Is Nothing Then
				Continue For
			End If
			If e.Parameters = "clear" Then
				filterCellTextBox.Text = String.Empty
			End If
			thisASPxGridView.AutoFilterByColumn(dataColumn, filterCellTextBox.Text)
		Next column
	End Sub
End Class