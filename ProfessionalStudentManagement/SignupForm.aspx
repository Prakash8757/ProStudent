<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="SignupForm.aspx.vb" Inherits="ProfessionalStudentManagement.SignupForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <style>

        body {
            background-image : url("img/LBack.jpg") ;
            background-size :cover ;
        }
        #form1{
           
            width :573px;
            background-color:white;
            margin-left : auto;
            margin-right: auto;
            opacity : 0.8;
        }
        .container {
            margin-left : 25px;
        }
       
        .auto-style3 {
            width: 210px;
        }
       
    </style>




    

         <div style ="background-color : #C0C0C0; margin-left :20%;  font-size :large  " align="center" width="60%" >
       <h2 style="background-color: #C0C0C0">Student Registration Form</h2>
             <table class="w-100 tex " style =" margin-left :10%; margin-right :80% ">
                 <tr>
                     <td class="auto-style3">
                         <asp:Label runat="server" Text="Name" ID="ctl08"></asp:Label>
                         &nbsp;</td>
                     <td>
                         <asp:TextBox ID="Tbox1" runat="server" Height="33px" Width="255px"></asp:TextBox>
                         &nbsp;<br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Field is not Empty" ForeColor="Red" ControlToValidate="Tbox1"></asp:RequiredFieldValidator>
                         <br /></td>
                 </tr>
                 <tr>
                     <td class="auto-style3">
                         <asp:Label runat="server" Text="Phone No" ID="ctl09"></asp:Label>
                         &nbsp;</td>
                     <td>
                         <asp:TextBox ID="Tbox2" runat="server" Height="33px" Width="252px"></asp:TextBox>
                         &nbsp;<br />
                         <br /></td>
                 </tr>
                 <tr>
                     <td class="auto-style3">
                         <asp:Label runat="server" Text="Email Id" ID="ctl10"></asp:Label>
                         &nbsp;</td>
                     <td>
                         <asp:TextBox ID="Tbox3" runat="server" Height="33px" Width="252px"></asp:TextBox>
                         <br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email Field is not Empty" ForeColor="Red" ControlToValidate="Tbox3"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email Formate not correct" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Tbox3"></asp:RegularExpressionValidator>
                         <br /></td>
                 </tr>
                
                 <tr>
                     <td class="auto-style3">
                         <asp:Label runat="server" Text="Address" ID="ctl12"></asp:Label>
                         &nbsp;</td>
                     <td>
                         <asp:TextBox ID="Tbox5" runat="server" Height="33px" Width="252px"></asp:TextBox>
                         <br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Address Field is not Empty" ForeColor="Red" ControlToValidate="Tbox5"></asp:RequiredFieldValidator>
                         <br /></td>
                 </tr>
                 
                 <tr>
                     <td class="auto-style3">
                         <asp:Label runat="server" Text="Date of Birth" ID="dob"></asp:Label>
                         &nbsp;</td>
                     <td>
                         <asp:TextBox ID="Tbox7" runat="server" Height="33px" Width="252px"></asp:TextBox>
                         <br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Date of Birth Field is not Empty" ForeColor="Red" ControlToValidate="Tbox7"></asp:RequiredFieldValidator>
                         <br /></td>
                 </tr>
                 <tr>
                     <td class="auto-style3">
                         <asp:Label runat="server" Text="Gender" ID="Label2"></asp:Label>
                         &nbsp;</td>
                     <td id="gender">
                         <asp:RadioButton ID="Radiomale" runat="server" GroupName="gender" Text="Male"  />
                         <asp:RadioButton ID="RadioFemale" runat="server" GroupName="gender" Text="Female" />
                         <br />
                         <br /></td>
                 </tr>
                 <tr>
                     <td class="auto-style3">
                         <asp:Label runat="server" Text="Course" ID="Course"></asp:Label>
                         &nbsp;</td>
                     <td>
                         <asp:DropDownList ID="DropDownList1" runat="server" Width="224px" AutoPostBack="True" Height="37px">
                             <asp:ListItem Selected="True">MCA</asp:ListItem>
                             <asp:ListItem>BCA</asp:ListItem>
                             <asp:ListItem>M.COM</asp:ListItem>
                             <asp:ListItem></asp:ListItem>
                         </asp:DropDownList>
                         &nbsp;<br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please Select Course" ForeColor="Red" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
                         <br /></td>
                 </tr>
                 
                 <tr>
                     <td class="auto-style3"></td>
                     <td>
                         <br />
                         <asp:Button runat="server" ID="btn1" Text="Signup"  Height="46px" Width="99px"></asp:Button>
                         <br /></td>
                 </tr>
             </table>
             <br />&nbsp;</div>


       
    
</asp:Content>
