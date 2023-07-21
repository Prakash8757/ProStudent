Public Class SignupForm
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn1_Click(sender As Object, e As EventArgs) Handles btn1.Click

        getDataFromUser()
        MsgBox("done")
    End Sub

    Sub getDataFromUser()
        Dim name As String = Tbox1.Text
        Dim phone As String = Tbox2.Text
        Dim email As String = Tbox3.Text
        Dim address As String = Tbox5.Text
        Dim dob As String = Tbox7.Text
        Dim gender As String = "male"

        Dim course As String = DropDownList1.Text
        Dim entity1 As Entity = New Entity(name, email, phone, address, dob, gender, course)

        Dim sqlhelp As New SqlHelper()
        sqlhelp.insertCmd(entity1)
        MsgBox("inserted")


    End Sub
End Class