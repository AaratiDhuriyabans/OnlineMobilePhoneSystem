<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="MainPageDefault.aspx.cs" Inherits="MainPageDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            font-weight: bold;
        }
        .style4
        {
            height: 53px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="2" class="style1" style="height: 52px">
        <tr>
            <td style="background-color: #FFFF00" valign="top">
                <strong>&nbsp;&nbsp;<asp:LinkButton ID="LinkButton2" runat="server"
    onclick="LinkButton1_Click" style="color: #FF0000">See all products</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Enter Mobile Name*:&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" 
                    runat="server" Width="220px" Height="35px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Search" 
                    style="font-weight: 700; background-color: #FF9933;" 
                    onclick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Login.aspx" 
                    style="color: #FF0000">Orders</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><asp:ImageButton 
                    ID="ImageButton2" runat="server" Height="47px" 
                    ImageUrl="~/images/showcart1.png" PostBackUrl="~/Login.aspx" Width="109px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
    ConnectionString="<%$ ConnectionStrings:OnlineMobilePhoneSystem %>" 
    SelectCommand="SELECT * FROM [product_mst] WHERE ([pname] LIKE '%' + @pname + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="pname" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
</asp:SqlDataSource>
    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="pid" 
        DataSourceID="SqlDataSource1" RepeatColumns="3" 
        RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand" 
        Width="901px">
        <ItemTemplate>
            <table border="2" cellpadding="2" class="style1" style="height: 142px">
                <tr>
                    <td style="text-align: center; background-color: #000099; color: #FFFFFF;">
                        <strong>ProductID*:
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("pid") %>'></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; background-color: #FFFF00; font-weight: 700;">
                        Product Name*:<asp:Label ID="Label2" runat="server" style="font-weight: 700" 
                            Text='<%# Eval("pname") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Image ID="Image1" runat="server" Height="200px" 
                            ImageUrl='<%# Eval("picture") %>' Width="200px" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; background-color: #FFFF00">
                        <b>Price*:</b><asp:Label ID="Label4" runat="server" 
                            Text='<%# Eval("price") %>' CssClass="style3"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; background-color: #000099;" class="style4">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="33px" 
                            ImageUrl="~/images/addtocartimages.jpg" Width="146px" 
                            CommandArgument='<%# Eval("pid")%>' CommandName="addtocart" 
                            />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:OnlineMobilePhoneSystem %>" 
        SelectCommand="SELECT * FROM [product_mst]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:OnlineMobilePhoneSystem %>" 
        SelectCommand="SELECT * FROM [product_mst] WHERE ([catid] = @catid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="catid" QueryStringField="cat" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

