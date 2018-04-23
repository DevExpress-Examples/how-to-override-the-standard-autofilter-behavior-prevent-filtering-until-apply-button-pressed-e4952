using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxEditors;
using DevExpress.Web.ASPxGridView;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void ASPxGridView1_CustomCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewCustomCallbackEventArgs e)
    {
        ASPxGridView thisASPxGridView = sender as ASPxGridView;
        foreach (GridViewColumn column in thisASPxGridView.Columns) {
            GridViewDataColumn dataColumn = column as GridViewDataColumn;
            if (dataColumn == null) continue;
            ASPxTextBox filterCellTextBox = thisASPxGridView.FindFilterCellTemplateControl(dataColumn, "ASPxTextBox1") as ASPxTextBox;
            if (filterCellTextBox == null) continue;
            if (e.Parameters == "clear")
                filterCellTextBox.Text = string.Empty;
            thisASPxGridView.AutoFilterByColumn(dataColumn, filterCellTextBox.Text);
        }
    }
}