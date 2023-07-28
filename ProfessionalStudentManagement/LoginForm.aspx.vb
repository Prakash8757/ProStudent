Imports Microsoft
Imports System.Net.Mime
Imports System.Xml

Public Class LoginForm
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("UserName") IsNot Nothing AndAlso Session("Password") IsNot Nothing Then

            Server.Transfer("WelcomePage.aspx")

        End If

        If Not IsPostBack Then

            If Request.Cookies("username") IsNot Nothing AndAlso Request.Cookies("password") IsNot Nothing Then
                'Dim message As String = Request.Cookies("USERNAME").Value & vbCrLf & Request.Cookies("PASSWORD").Value
                'MsgBox(message, MsgBoxStyle.Information, "Login Details")


                TextBox1.Text = Request.Cookies("USERNAME").Value
                TextBox2.Attributes("value") = Request.Cookies("PASSWORD").Value

                CheckBox1.Checked = True

            End If
        End If








    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim name As String = TextBox1.Text
        Dim password As String = TextBox2.Text
        Dim usernameCookie As New HttpCookie("USERNAME")
        Dim passwordCookie As New HttpCookie("PASSWORD")





        If CheckBox1.Checked Then
            ' If "Remember Me" CheckBox is checked, save the username and password in cookies with a 30-day expiration.

            usernameCookie.Value = name
            passwordCookie.Value = password

            ' Set the cookies to expire in 30 days.
            usernameCookie.Expires = DateTime.Now.AddDays(15)
            passwordCookie.Expires = DateTime.Now.AddDays(15)

            Session("UserName") = TextBox1.Text
            Session("Password") = TextBox2.Text
            ' Add the cookies to the response to save them on the user's browser.
            Response.Cookies.Add(usernameCookie)
            Response.Cookies.Add(passwordCookie)



        Else
            ' If "Remember Me" CheckBox is not checked, remove the cookies.
            Response.Cookies("USERNAME").Expires = DateTime.Now.AddDays(-1)
            Response.Cookies("PASSWORD").Expires = DateTime.Now.AddDays(-1)


        End If
        Response.Redirect("WelcomePage.aspx")






    End Sub
End Class
