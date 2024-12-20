﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Publication.aspx.cs" Inherits="Publication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        body {
            font-family: 'Poppins', sans-serif;
            background-image: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url("img/background.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: white;
        }

        /* Centering the content */
        .center-content {
            margin: 0 auto;
            width: 80%; /* Adjust as needed */
            text-align: center;
        }

        /* Responsive styles */
        @media only screen and (max-width: 768px) {
            .style1 {
                width: 100%;
            }

            .tbl td {
                text-align: left;
            }

            .txt,
            .btn {
                width: 100%;
            }
        }

         /* Align input boxes and buttons */
        .tbl {
            width: 100%;
        }

        .tbl td {
            text-align: center;
        }

        .txt,
        .btn {
            margin: 5px; /* Adjust as needed */
        }
        /* Zoom effect for the publication input section */
        .zoom-effect {
            transform: scale(1.2); /* Adjust the scale factor as needed */
            transition: transform 0.3s ease-in-out; /* Smooth transition */
        }

        /* Apply the zoom effect on hover */
        .zoom-effect:hover {
            transform: scale(1.3); /* Adjust the scale factor on hover */
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                ADD NEW PUBLICATION</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style1 zoom-effect">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Publication Name :
                        </td>
                        <td>
                            <asp:TextBox ID="txtpub" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtpub" ErrorMessage="??" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="btnadd" runat="server" CssClass="btn" onclick="btnadd_Click" 
                            Text="ADD Publication" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lblmsg" runat="server" CssClass="lbl"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                <table class="style2">
                    <tr>
                        <td class="style3">
                        &nbsp;</td>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            AutoGenerateDeleteButton="True" CellPadding="2" 
                            DataKeyNames="pid" ForeColor="Black" GridLines="None" 
                            onrowcancelingedit="GridView1_RowCancelingEdit" 
                            onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
                            onrowupdating="GridView1_RowUpdating" BackColor="#eaeaea" 
                            BorderColor="#d9d9d9" BorderWidth="1px">
                                <AlternatingRowStyle BackColor="lightgrey" />
                                <Columns>
                                    <asp:CommandField CausesValidation="false" ShowEditButton="true" />
                                    <asp:BoundField DataField="Publication" HeaderText="Publication" />
                                </Columns>
                                <FooterStyle BackColor="Tan" />
                                <HeaderStyle BackColor="lightgray" Font-Bold="True" />
                                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                        &nbsp;</td>
                        <td>
                        &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

