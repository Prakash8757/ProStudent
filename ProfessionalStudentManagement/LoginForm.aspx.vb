Imports Microsoft
Imports System.Xml

Public Class LoginForm
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If Request.Cookies("USERNAME") IsNot Nothing AndAlso Request.Cookies("PASSWORD") IsNot Nothing Then
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



        If CheckBox1.Checked Then
            ' If "Remember Me" CheckBox is checked, save the username and password in cookies with a 30-day expiration.
            Dim usernameCookie As New HttpCookie("USERNAME")
            Dim passwordCookie As New HttpCookie("PASSWORD")

            usernameCookie.Value = name
            passwordCookie.Value = password

            ' Set the cookies to expire in 30 days.
            usernameCookie.Expires = DateTime.Now.AddDays(10)
            passwordCookie.Expires = DateTime.Now.AddDays(10)

            ' Add the cookies to the response to save them on the user's browser.
            Response.Cookies.Add(usernameCookie)
            Response.Cookies.Add(passwordCookie)

        Else
            ' If "Remember Me" CheckBox is not checked, remove the cookies.
            Response.Cookies("USERNAME").Expires = DateTime.Now.AddDays(-1)
            Response.Cookies("PASSWORD").Expires = DateTime.Now.AddDays(-1)
        End If
        Response.Redirect("WelcomePage")

    End Sub
End Class
