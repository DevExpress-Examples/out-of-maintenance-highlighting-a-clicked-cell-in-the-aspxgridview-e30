<%-- BeginRegion TagPrefix and page properties --%>
<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="Individual_Cell_Highlighting" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.10.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.10.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%-- EndRegion --%>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Highlighting a clicked cell in the ASPxGridView</title>
    <script type="text/javascript">
        function OnCellClick(cell) {
            cell.style.backgroundColor="red";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
            
    <div>
 <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" ClientInstanceName="ASPxGridView1" Width="1345px" EnableRowsCache="False" OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" AutoGenerateColumns="False" DataSourceID="AccessDataSource1" KeyFieldName="CustomerID">
     <Columns>
         <dxwgv:GridViewDataTextColumn FieldName="CustomerID" ReadOnly="True" VisibleIndex="0">
         </dxwgv:GridViewDataTextColumn>
         <dxwgv:GridViewDataTextColumn FieldName="CompanyName" VisibleIndex="1">
         </dxwgv:GridViewDataTextColumn>
         <dxwgv:GridViewDataTextColumn FieldName="ContactName" VisibleIndex="2">
         </dxwgv:GridViewDataTextColumn>
         <dxwgv:GridViewDataTextColumn FieldName="ContactTitle" VisibleIndex="3">
         </dxwgv:GridViewDataTextColumn>
         <dxwgv:GridViewDataTextColumn FieldName="Address" VisibleIndex="4">
         </dxwgv:GridViewDataTextColumn>
         <dxwgv:GridViewDataTextColumn FieldName="City" VisibleIndex="5">
         </dxwgv:GridViewDataTextColumn>
         <dxwgv:GridViewDataTextColumn FieldName="Region" VisibleIndex="6">
         </dxwgv:GridViewDataTextColumn>
         <dxwgv:GridViewDataTextColumn FieldName="PostalCode" VisibleIndex="7">
         </dxwgv:GridViewDataTextColumn>
         <dxwgv:GridViewDataTextColumn FieldName="Country" VisibleIndex="8">
         </dxwgv:GridViewDataTextColumn>
         <dxwgv:GridViewDataTextColumn FieldName="Phone" VisibleIndex="9">
         </dxwgv:GridViewDataTextColumn>
         <dxwgv:GridViewDataTextColumn FieldName="Fax" VisibleIndex="10">
         </dxwgv:GridViewDataTextColumn>
     </Columns>
         </dxwgv:ASPxGridView>   
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
            SelectCommand="SELECT * FROM [Customers]"></asp:AccessDataSource>
        <br />
    </div>
    </form>
</body>
</html>
