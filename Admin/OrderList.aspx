﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="OrderList.aspx.cs" Inherits="Admin_OrderList" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Css.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <table class="adminorderlist">
        <tr>
            <td>Search Type:</td>
            <td>
            <asp:DropDownList ID="ddlSearchType" runat="server" AutoPostBack="true" Width="200px" OnSelectedIndexChanged="ddlSearchType_SelectedIndexChanged">
                <asp:ListItem> OrderDate</asp:ListItem>
                <asp:ListItem>CustomerName</asp:ListItem>
                <asp:ListItem>ShippAddress</asp:ListItem>
                <asp:ListItem>Total</asp:ListItem>
                <asp:ListItem>Status</asp:ListItem>
            </asp:DropDownList>
                </td>
            <td>
                <asp:TextBox ID="txtOrderDate" runat="server" AutoComplete="off" Width="200px" AutoPostBack="true" OnTextChanged="txtOrderDate_TextChanged"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:TextBox ID="txtSearchType" runat="server" AutoComplete="off" Width="200px" AutoPostBack="true" OnTextChanged="txtSearchType_TextChanged" ></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnPrint" runat="server" Text="Print" CssClass="button" OnClick="btnPrint_Click" />

            </td>

        </tr>
      
       
    </table>
    <p>&nbsp;</p>
    <asp:DataList ID="DataList1" runat="server" Width="800px" OnPreRender="DataList1_PreRender" >

    
        <ItemTemplate>
            <table width="900">
                <tr>  
                    <td><p>&nbsp;</p></td>
                </tr>
                <tr>
                    <td bgcolor="#3333ff"></td>
                </tr>
                <tr>
                    <td>
                        <table cellpadding="5" cellspacing="1">
                            <tr>
                                <td>No</td>
                                <td>
                                    <asp:Label ID="lblNo" runat="server" Text='<%# Eval("No") %>'></asp:Label>

                                </td>
                                <td width="100"></td>
                                <td>Order Date</td>
                                <td>
                                    <asp:Label ID="lblOrderDate" runat="server" Text='<%# Eval("OrderDate") %>'></asp:Label>

                                </td>
                            </tr>
                            <tr>
                                <td>Customer Name</td>
                                <td>
                                    <asp:Label ID="lblCustName" runat="server" Text='<%# Eval("CustName") %>'></asp:Label>
                                    

                                </td>
                                <td width="100" ></td>
                                <td>Shipping Address</td>
                                <td>
                                    <asp:Label ID="lblAhippingAdd" runat="server" Text='<%# Eval("ShippingAdd") %>'></asp:Label>

                                </td>
                            </tr>
                            <tr>
                                <td>Total</td>
                                <td>
                                    <asp:Label ID="lblTotal" runat="server" Text='<%# Eval("Total") %>'></asp:Label>
                                </td>
                                <td width="100"></td>
                                <td>Status</td>
                                <td>
                                    <asp:Label ID="lblDeliverStatus" runat="server" Text='<%# Eval("DeliverStatus") %>'></asp:Label>

                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CellPadding="5" CellSpacing="1" Width="800">
                            <Columns>
                                <asp:BoundField  DataField="No" HeaderText="No" />
                                <asp:BoundField DataField="ItemName" HeaderText="Item Name" />
                                <asp:BoundField DataField="CatName" HeaderText="Category Name" />
                                <asp:BoundField DataField="UnitPrice" HeaderText="Price" />
                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        </asp:DataList>
   
</asp:Content>

