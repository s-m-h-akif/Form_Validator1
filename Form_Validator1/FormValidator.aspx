<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormValidator.aspx.cs" Inherits="Form_Validator1.FormValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>validation form</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="color: #C0C0C0">
            <asp:Label ID="name_label" runat="server" Text="Enter User NAME"></asp:Label> &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp
            <asp:TextBox ID="TextBox_name" runat="server" Width="204px"></asp:TextBox> &nbsp &nbsp
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your Name" ControlToValidate="TextBox_name" ForeColor="#FF3300" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_name" Display="Dynamic" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br /><br />
            <asp:Label ID="label_password" runat="server" Text="Enter Password"></asp:Label>&nbsp &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox_password" runat="server" style="margin-left: 24px" Width="203px"></asp:TextBox>&nbsp &nbsp
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="class_TextBox" ErrorMessage="Please Enter Yours Password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:Label ID="Label_rePassword" runat="server" Text="Re Enter Password"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox_repassword" runat="server" Width="199px"></asp:TextBox> &nbsp &nbsp
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_repassword" ControlToValidate="TextBox_password" Display="Dynamic" ErrorMessage="Password not matched" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
            <br />
            <br />
            Emter The class&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="class_TextBox" runat="server" Width="196px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="class_TextBox" ErrorMessage="Class Should be from 1 to 12 " ForeColor="Red" MaximumValue="12" MinimumValue="1" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
            <br />
            <br />
            Enter Only Even Number&nbsp;&nbsp;
            <asp:TextBox ID="even_TextBox" runat="server" Width="205px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="even_TextBox" Display="Dynamic" ErrorMessage="Number is Invalid" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" SetFocusOnError="True"></asp:CustomValidator>
            <br />
           <p style="color: #00FFFF">
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button ID="Button1" runat="server" Text="Button" style="margin-left: 156px" Width="97px" OnClick="Button1_Click" />
           </p>
            </div>
        <div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#999999" Font-Size="Large" ForeColor="Red" />
        </div>
    </form>
</body>
</html>
