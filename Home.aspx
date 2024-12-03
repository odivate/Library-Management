<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
        margin: 0 auto;
        max-width: 600px; /* Adjust max-width as needed */
        padding: 20px;        
    }

    .tblhead{
        font-family:Bebas Neue;
        font-size:45px;
    }
    

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="tblhead">
            Welcome to Digital Library System</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="image" style="text-align: center">
            <asp:Image  ID="Image2" runat="server" ImageUrl="~/img/lin3.png" />
        </td>
    </tr>
</table>
</asp:Content>

