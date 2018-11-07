<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>





<%@ Register Assembly="DevExpress.Xpo.v15.1, Version=15.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to override AutoFilter standard behavior (Prevent filtering until "Apply" button pressed)</title>
    <script type="text/javascript">
        function applyBtn(s, e) {
            clientASPxGridView1.PerformCallback();
        }
        function clearBtn(s, e) {
            clientASPxGridView1.PerformCallback('clear');
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
        <div>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="ProductID" ClientInstanceName="clientASPxGridView1" OnCustomCallback="ASPxGridView1_CustomCallback">
                <Columns>
                    <dx:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True" ShowNewButton="True" ShowDeleteButton="True">
                        <FilterTemplate>
                            <dx:ASPxHyperLink ID="ASPxHyperLink1" runat="server" Text="Apply">
                                <ClientSideEvents Click="applyBtn"/>
                            </dx:ASPxHyperLink>
                            <dx:ASPxHyperLink ID="ASPxHyperLink2" runat="server" Text="Clear">
                                <ClientSideEvents Click="clearBtn"/>
                            </dx:ASPxHyperLink>
                        </FilterTemplate>
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SupplierID" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="QuantityPerUnit" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="6">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="UnitsOnOrder" VisibleIndex="7">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="8">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ReorderLevel" VisibleIndex="9">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataCheckColumn FieldName="Discontinued" VisibleIndex="10">
                    </dx:GridViewDataCheckColumn>
                    <dx:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="11">
                    </dx:GridViewDataTextColumn>
                </Columns>
                <Settings ShowFilterRow="True" ShowFilterBar="Visible" />
                <Templates>
                    <FilterCell>
                        <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="170px" Text="" ViewStateMode="Disabled">
                        </dx:ASPxTextBox>
                    </FilterCell>
                </Templates>
            </dx:ASPxGridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [SupplierID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [CategoryID], [ReorderLevel], [Discontinued], [CategoryName] FROM [Alphabetical list of products]"></asp:SqlDataSource>
    </form>
</body>
</html>
