Imports System.Data.SqlClient
Imports System.Net
Imports System.Security.Policy
Imports Microsoft.VisualBasic.ApplicationServices

Public Class WelcomePage
    Inherits System.Web.UI.Page
    Dim connectionString As String = ConfigurationManager.ConnectionStrings("MyConnectionString").ConnectionString

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If Session("Name") = Nothing Then
        '    Response.Redirect("LoginForm.aspx")

        'Else
        '    Response.Redirect("WelcomePage.aspx")
        'End If

        Button1.Text = Session("USERNAME")

        Dim email As String = Session("USERNAME")

        Using connection As New SqlConnection(connectionString)
            Dim cmd As New SqlCommand("SELECT * FROM ProfessionalStudent WHERE email=@email", connection)
            cmd.Parameters.AddWithValue("@email", email)
            connection.Open()
            Dim reader As SqlDataReader = cmd.ExecuteReader()

            If reader.Read() Then
                TextBox1.Text = reader("name")
                TextBox2.Text = reader("phone")
                TextBox3.Text = reader("email")
                TextBox4.Text = reader("address")
                TextBox5.Text = reader("dateofbirth")
            End If

            reader.Close()

            ' Set the textboxes to read-only
            TextBox1.ReadOnly = True
            ' TextBox2.ReadOnly = True
            TextBox3.ReadOnly = True
            ' TextBox4.ReadOnly = True
            TextBox5.ReadOnly = True
        End Using

    End Sub

    Protected Sub btn_Edit(sender As Object, e As EventArgs) Handles btnEdit.Click
        'Dim name As String = TextBox1.Text
        Dim newPhone As String = TextBox2.Text
        'Dim email As String = TextBox3.Text
        Dim newAddress As String = TextBox4.Text
        'Dim dob As String = TextBox5.Text
        'Dim gender As String = "male"

        Dim email As String = Session("USERNAME")


        Using connection As New SqlConnection(connectionString)
            Dim updateQuery As String = "UPDATE ProfessionalStudent SET phone=@phone, address=@address WHERE email=@Email"

            connection.Open()
            Dim cmd As New SqlCommand(updateQuery, connection)

            cmd.Parameters.AddWithValue("@phone", newPhone)
            cmd.Parameters.AddWithValue("@address", newAddress)
            cmd.Parameters.AddWithValue("@Email", email)

            cmd.ExecuteNonQuery()

            MsgBox("Updated")
            connection.Close()
        End Using




    End Sub



End Class