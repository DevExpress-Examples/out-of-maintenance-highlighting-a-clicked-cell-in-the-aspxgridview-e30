using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web.ASPxTabControl;
using DevExpress.Web.ASPxEditors;
using DevExpress.Web.ASPxGridView;
using DevExpress.Data.Filtering;
using System.Collections;

public partial class Individual_Cell_Highlighting : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
     {
     }
    protected void ASPxGridView1_HtmlDataCellPrepared(object sender, ASPxGridViewTableDataCellEventArgs e) {
        e.Cell.Attributes.Add("onclick", "OnCellClick(this);");
    }
}

