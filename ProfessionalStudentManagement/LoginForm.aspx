<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="LoginForm.aspx.vb" MasterPageFile ="~/Site.Master"  Inherits="ProfessionalStudentManagement.LoginForm" %>

<%@ Register Src="~/LogingControl.ascx" TagPrefix="uc1" TagName="LogingControl" %>

<asp:Content ID ="content2" ContentPlaceHolderID ="MainContent"  runat ="server" >

    <style>
        .table-body1 {
        width: 100%;
      
        height: 187px;
        margin: 0 auto;
        margin-left :50px
            
            
        }
        
      .BackIMG {
          
         /* background-image : url('IMG/LoginBack.jpg' ) */
         margin-bottom :100px

      }

        
       

        
        

        
        .login-Logo {
            height: 70px;
            width: 72px;
        }

        .ShadowDiv {
        background-color: #ffffff; /* Set the background color for the div */
        border-radius: 8px; /* Optional: If you want rounded corners */
        box-shadow: 0 20px 20px;  /* Set the box-shadow */
        width: 45%;
        height: 370px;
        margin :0 auto;
       /* margin-left : 25%;*/
        margin-top :70px;
        border :double; 
        padding :5px  ;

        border-style: double;
        border-color: inherit;
        border-width: medium;
        border-radius: 8px; /* Optional: If you want rounded corners */;
           
     
        }
        
        .div-Container  {
            height: 600px;
            width : 100%;
            background-image :url('IMG/lBack.jpg');
          background-repeat :no-repeat ;
          background-size:100% 600px;
        }
        
      
        
        
        .td-text{
            height :70px;
            width :100%;
        }
        
       
       
    </style>


    


    
        <div  style=" padding :10px; margin-bottom :100px; margin-left : 10px; opacity :0.75;   " class="div-Container">
          
         <%--   <uc1:LogingControl runat="server" id="LogingControl" />--%>
        
            <div   class="ShadowDiv " >
                <img src="IMG/login-icon-3048.png" style ="margin-left :42%"  class="login-Logo" />
                    
                
                
                <h3 style ="text-align :center ">Login Here !!</h3>
                <table class=" table-body1"     >
                    <tr>
                        <td class="td-text1">
                            <asp:Label ID="Label1" runat="server" Height="28px" Text="User Name" Width="146px"></asp:Label>
                        </td>
                        <td class="td-text"><asp:TextBox ID="TextBox1" runat="server" Height="40px" Width ="100%" ></asp:TextBox>
                            
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label2" runat="server" Height="28px" Text="Password" Width="146px" Font-Size="Medium"></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="100%" TextMode="Password"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style4">
                            <asp:CheckBox ID="CheckBox1" runat="server" Height="28px" Text=" Rember Me" Width="184px" Font-Bold="True" Font-Size="Medium" />
                            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style9"></td>
                        <td class="auto-style10">

            
            <asp:Button ID="Button1" runat="server" Text="Login" style="margin-left :10px; margin-top :10px" Height="41px" Width="87px" BorderStyle="Groove" />
                            </td>
                    </tr>
                </table>

            </div>

            
        </div>

   </asp:Content>

