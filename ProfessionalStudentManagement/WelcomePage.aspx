<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WelcomePage.aspx.vb" Inherits="ProfessionalStudentManagement.WelcomePage" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>

    <title></title>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
    </ul>
    
     
      



    <form id="form1" runat="server">
        <div>
            







      <asp:Button ID="Button1" runat="server" Text="" />


<asp:ScriptManager ID="ScriptManager1" runat="server">

</asp:ScriptManager>
          

<!-- ModalPopupExtender -->

<cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl1" TargetControlID="Button1"

    CancelControlID="Button2" BackgroundCssClass="Background">

</cc1:ModalPopupExtender>

<asp:Panel ID="Panl1" runat="server" CssClass="Popup" align="center" style = "display:none">


    
   

     <div style ="background-color :aliceblue ">


            <table class="auto-style7">
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label2" runat="server" Font-Size="Large" Height="36px" Text="Name" Width="245px"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" Height="32px" Width="285px"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label3" runat="server" Font-Size="Large" Height="36px" Text="Phonr No" Width="245px"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" Height="32px" Width="285px"></asp:TextBox>
                        <br />
                         </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label4" runat="server" Font-Size="Large" Height="36px" Text="Email Id" Width="245px"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" Height="32px" Width="285px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label5" runat="server" Font-Size="Large" Height="36px" Text="Address" Width="245px"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" Height="32px" Width="285px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Name is Not empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label6" runat="server" Font-Size="Large" Height="36px" Text="Date of Birth" Width="245px"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox5" runat="server" BorderStyle="Solid" Height="32px" Width="285px"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label7" runat="server" Font-Size="Large" Height="36px" Text="Gender" Width="245px"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:RadioButton ID="RadioButton1" runat="server" Height="32px" Text="Male" Width="129px"  GroupName="gender" />
                        <asp:RadioButton ID="RadioButton2" runat="server" Height="32px" Text="Female"   GroupName="gender"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label8" runat="server" Font-Size="Large" Height="36px" Text="Course" Width="245px"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <cc1:ComboBox ID="ComboBox1" runat="server" AutoPostBack="True" Height="32px" Width="255px">
                            <asp:ListItem>MCA</asp:ListItem>
                            <asp:ListItem>BCA</asp:ListItem>
                            <asp:ListItem>M.COM</asp:ListItem>
                            <asp:ListItem>B.COM</asp:ListItem>
                        </cc1:ComboBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <br />
                        

                    </td>
                    <td class="auto-style9">  
                        <br />
                        <asp:Button ID="btnEdit" runat="server"  OnClick ="btn_Edit"  Text="Edit" />

                    </td>
                </tr>
            </table>


        </div>







    <br />

    <asp:Button ID="Button3" runat="server" Text="Close"  />

</asp:Panel>








        </div>
    </form>
  </div>
</nav>





    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</body>
</html>
