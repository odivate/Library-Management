<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
      body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-image: url('img/profile-bg.jpg'); /* Replace with your image */
    background-size: cover;
    background-position: center;
}

#form1 {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

#login {
    background-color: rgba(255, 255, 255, 0.7); /* Transparent  background */
    padding: 40px; 
    border-radius: 20px; 
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.5); 
}

.tbl {
    width: 400px; 
}

.tblhead {
    background-color: #007bff;
    color: #fff;
    text-align: center;
    padding: 20px 0; 
    border-top-left-radius: 20px; 
    border-top-right-radius: 20px;
}

.lbl {
    text-align: right;
    font-weight: bold;
}

.txt {
    width: calc(100% - 16px); 
    padding: 12px; 
    margin: 12px 0; 
    border: 2px solid #007bff;
    border-radius: 8px;
    box-sizing: border-box;
}

.radio-container {
    display: flex;
    align-items: center; /* Align items vertically */
}

.radio-container label {
    margin-right: 10px; /* Adjust the spacing between the radio button and text */
}

.radio-container input[type="radio"] {
    margin: 0;/* Remove default margin */
    
}

.btn {
    width: 100%;
    padding: 15px; /* Increased padding */
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 8px; /* Increased border radius */
    cursor: pointer;
    transition: background-color 0.3s;
}

.btn:hover {
    background-color: #0056b3;
}


    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="head">
    
        
    
    </div>
    <div id="main"><div id="img">
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                
            </tr>
        </table>
        </div>
    <div id="login">
        <table class="tbl">
            <tr>
                <td class="tblhead" colspan="2">
                    Login Area</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lbl" runat="server" Font-Size="11px" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="lbl">
                    UserName :</td>
                <td>
                    <asp:TextBox ID="txtuname" runat="server" CssClass="txt" Width="175px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtuname" ErrorMessage="!!!" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="lbl">
                    Password :
                </td>
                <td>
                    <asp:TextBox ID="txtupass" runat="server" CssClass="txt" TextMode="Password" Width="175px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtupass" ErrorMessage="!!!" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
    <td></td>
    <td>
        <div class="radio-container">
            <asp:RadioButton ID="rdolibrary" runat="server" Checked="True" 
                ForeColor="black" GroupName="a" Text="Librarian" />
            <asp:RadioButton ID="rdosudent" runat="server" ForeColor="black" GroupName="a" 
                Text="Student" />
        </div>
    </td>
</tr>


            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Login" 
                        Width="80px" Font-Size="10pt" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
    
    </div>
    </form>
</body>
</html>
