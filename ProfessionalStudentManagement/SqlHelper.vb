Imports System.Data.Common
Imports System.Data.SqlClient

Public Class SqlHelper
    Dim connectionString As String = ConfigurationManager.ConnectionStrings("MyConnectionString").ConnectionString
    'Dim con As New SqlConnection("connectionString")

    Public Function selectData() As SqlDataAdapter
        ' connectionString.Open()
        Dim cmd As New SqlCommand("Select * from ProfessionalStudent ")
        Dim adapter As New SqlDataAdapter(cmd)
        Dim data As New DataSet()
        adapter.Fill(data)
        ' con.Close()


        Return adapter


    End Function

    Public Sub insertCmd(entity1 As Entity)
        ' con.Open()
        Using connection As New SqlConnection(connectionString)
            Dim query As String = "INSERT INTO ProfessionalStudent (name, Phone, Email, Address, DateofBirth, Gender, Course) VALUES (@Name, @Phone, @Email, @Address, @Dob, @Gender, @Course)"

            Using cmd As New SqlCommand(query, connection)
                ' Add parameters with their respective values to the SqlCommand
                cmd.Parameters.AddWithValue("@Name", entity1.Name1)
                cmd.Parameters.AddWithValue("@Phone", entity1.Phone1)
                cmd.Parameters.AddWithValue("@Email", entity1.Email1)
                cmd.Parameters.AddWithValue("@Address", entity1.Address1)
                cmd.Parameters.AddWithValue("@Dob", entity1.Dob1)
                cmd.Parameters.AddWithValue("@Gender", entity1.Gender1)
                cmd.Parameters.AddWithValue("@Course", entity1.Course1)

                ' Open the connection, execute the query, and automatically close the connection
                connection.Open()
                cmd.ExecuteNonQuery()
            End Using
        End Using




        'con.Close()

    End Sub
End Class
