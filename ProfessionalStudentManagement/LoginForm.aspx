<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="LoginForm.aspx.vb" MasterPageFile ="~/Site.Master"  Inherits="ProfessionalStudentManagement.LoginForm" %>

<%@ Register Src="~/LogingControl.ascx" TagPrefix="uc1" TagName="LogingControl" %>

<asp:Content ID ="content2" ContentPlaceHolderID ="MainContent"  runat ="server" >

    <style>
        .auto-style1 {
            width: 52%;
            height: 143px;
        }
        .auto-style2 {
            width: 142px;
        }
    </style>

    
        <div>
         <%--   <uc1:LogingControl runat="server" id="LogingControl" />--%>
        
            <div style="margin-left : 20% " >
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Height="28px" Text="User Name" Width="146px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="295px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label2" runat="server" Height="28px" Text="Password" Width="146px" Font-Size="Medium"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="295px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>
                            <asp:CheckBox ID="CheckBox1" runat="server" Height="28px" Text=" Rember Me" Width="184px" Font-Bold="True" Font-Size="Medium" />
                            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                            </td>
                    </tr>
                </table>

            </div>

            
            <asp:Button ID="Button1" runat="server" Text="Login" style="margin-left :250px; margin-top :20px" Height="41px" Width="87px" />
        </div>

   </asp:Content>

