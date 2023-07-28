<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WelcomePage.aspx.vb" Inherits="ProfessionalStudentManagement.WelcomePage" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 345px;
            border-style: solid;
            border-width: 1px;
            background-color: #C6C8CA;
        }
        .auto-style4 {
            width: 310px;
        }
        .auto-style5 {
            width: 225px;
            height: 45px;
        }
        .auto-style6 {
            width: 310px;
            height: 45px;
        }
        .auto-style7 {
            width: 225px;
        }
        .auto-style10 {
            height: 3px;
        }
        .auto-style11 {
            width: 225px;
            height: 3px;
        }


        .highlight-text-button {
    background: transparent; /* Set the background to transparent to hide the logo */
    border: 1px solid ;  Add a border to the button */
    color: #007bff; /* Set the text color */
    padding: 5px 10px; /* Adjust padding as needed */
    font-size: 14px; /* Adjust font size as needed */
    cursor: pointer; /* Show pointer cursor on hover */
    
}

.highlight-text-button:hover {
    background: #007bff; /* Highlight the background on hover */
    color: #fff; 
}


.ModelBackground{
    opacity :0.5;
    background-color :yellow  ;
   
    
}
 

    </style>
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
   
      
      <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
   


  </div>
</nav>
    <form  id="form1" runat ="server" >

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

     <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" backgroundcssClass="ModelBackground" RepositionMode ="RepositionOnWindowResize"     runat="server" X ="932" Y="57"  TargetControlID="HyperLink1"
            PopupControlID="Panel1" DropShadow="True"  >
 
         <Animations>
        <OnShown><Fadein Duration="0.50" /></OnShown>
        <OnHiding><Fadeout Duration="0.50" /></OnHiding>
</Animations>

        </ajaxToolkit:ModalPopupExtender>

        <asp:Panel ID="Panel1" runat="server" Height="417px" Width="510px">



            <div>
                
                             

            
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style11">
                            <h2 style ="text-align :center ">Profile</h2></td>
                        <td class="auto-style10" style="text-align :right ">
                           
                          
                           <%-- <asp:HyperLink ID="HyperLink2" runat="server" style="margin-right :10px" >X</asp:HyperLink>
                     --%>   
                            <asp:Button ID="btnHighlightText0" runat="server" BorderColor="Silver" CssClass="highlight-text-button" Text="X" Height="41px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label2" runat="server" Font-Size="Large" Height="38px" style="margin-left : 15px" Text="Name" Width="92%"></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:Label ID="Label9" runat="server" Font-Size="Large" Height="38px" style="margin-left : 15px" Width="92%"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label3" runat="server" Font-Size="Large" Height="38px" style="margin-left : 15px" Text="Phone No" Width="92%"></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <asp:Label ID="Label10" runat="server" Font-Size="Large" Height="38px" style="margin-left : 15px" Width="92%"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label4" runat="server" Font-Size="Large" Height="38px" style="margin-left : 15px" Text="Email Id" Width="92%"></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <asp:Label ID="Label11" runat="server" Font-Size="Large" Height="38px" style="margin-left : 15px" Width="92%"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label5" runat="server" Font-Size="Large" Height="38px" style="margin-left : 15px" Text="Address" Width="92%"></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <asp:Label ID="Label12" runat="server" Font-Size="Large" Height="38px" style="margin-left : 15px" Width="92%"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label6" runat="server" Font-Size="Large" Height="38px" style="margin-left : 15px" Text="Date of Birth" Width="92%"></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <asp:Label ID="Label13" runat="server" Font-Size="Large" Height="38px" style="margin-left : 15px" Width="92%"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label7" runat="server" Font-Size="Large" Height="38px" style="margin-left : 15px" Text="Gender" Width="92%"></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <asp:Label ID="Label14" runat="server" Font-Size="Large" Height="38px" style="margin-left : 15px" Width="92%"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label15" runat="server" Font-Size="Large" Height="38px" style="margin-left : 15px" Text="Course" Width="92%"></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <asp:Label ID="Label16" runat="server" Font-Size="Large" Height="38px" style="margin-left : 15px" Width="92%"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style7  ">
                            <asp:Button   ID="Button1" runat="server" Text="Button" />
                              </td>
                        <td class="auto-style4">
                            <asp:Button ID="btnClose" runat="server" Text="Logout" />
                              </td>
                    </tr>
                </table>
               
</div>
            






        </asp:Panel>

    </form>












    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
