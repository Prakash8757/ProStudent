<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="LogingControl.ascx.vb" Inherits="ProfessionalStudentManagement.LogingControl" %>
<style type="text/css">
    .auto-style1 {
        width: 64%;
        height: 165px;
    }
    .auto-style2 {
        width: 212px;
    }
</style>
<div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="309px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="37px" Width="308px"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Text="Conform Password"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="37px" Width="308px"></asp:TextBox></td>
        </tr>
    </table>
</div>
