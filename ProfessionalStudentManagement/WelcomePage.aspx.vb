Imports System.Data.SqlClient

Public Class WelcomePage
    Inherits System.Web.UI.Page
    Dim connectionString As String = ConfigurationManager.ConnectionStrings("MyConnectionString").ConnectionString

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("UserName") Is Nothing AndAlso Session("Password") Is Nothing Then
            Response.Redirect("LoginForm.aspx")
        End If


        HyperLink1.Text = Session("UserName")

        Dim email As String = Session("UserName")
        Using connection As New SqlConnection(connectionString)
            Dim cmd As New SqlCommand("select * from ProfessionalStudent where email=@email", connection)
            connection.Open()
            cmd.Parameters.AddWithValue("@email", email)
            Dim reader As SqlDataReader = cmd.ExecuteReader()
            If reader.Read() Then
                Label9.Text = reader("Name").ToString()
                Label10.Text = reader("Phone").ToString()
                Label11.Text = reader("Email").ToString()
                Label12.Text = reader("address").ToString()
                Label13.Text = reader("DateofBirth").ToString()
                Label14.Text = reader("gender").ToString()
                Label16.Text = reader("course").ToString()

            End If
        End Using

    End Sub

    Protected Sub btnClose_Click(sender As Object, e As EventArgs) Handles btnClose.Click

        'ModalPopupExtender1.Hide()
        Request.Cookies("USERNAME").Expires = DateTime.Now.AddDays(-1)
        Request.Cookies("PASSWORD").Expires = DateTime.Now.AddDays(-1)

        Session.Clear()
        Session.Abandon()


        Response.Redirect("LoginForm.aspx")

    End Sub

    Protected Sub btnHighlightText0_Click(sender As Object, e As EventArgs) Handles btnHighlightText0.Click
        ModalPopupExtender1.Hide()

    End Sub
End Class