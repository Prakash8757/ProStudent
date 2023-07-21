Public Class Entity

    Private name As String
    Private email As String
    Private phone As String
    Private Address As String
    Private dob As String
    Private gender As String
    Private course As String

    Public Sub New()
    End Sub

    Public Sub New(name As String, email As String, phone As String, address As String, dob As String, gender As String, course As String)
        Me.Name1 = name
        Me.Email1 = email
        Me.Phone1 = phone
        Me.Address1 = address
        Me.Dob1 = dob
        Me.Gender1 = gender
        Me.Course1 = course
    End Sub

    Public Property Name1 As String
        Get
            Return name
        End Get
        Set(value As String)
            name = value
        End Set
    End Property

    Public Property Email1 As String
        Get
            Return email
        End Get
        Set(value As String)
            email = value
        End Set
    End Property

    Public Property Phone1 As String
        Get
            Return phone
        End Get
        Set(value As String)
            phone = value
        End Set
    End Property

    Public Property Address1 As String
        Get
            Return Address
        End Get
        Set(value As String)
            Address = value
        End Set
    End Property

    Public Property Dob1 As String
        Get
            Return dob
        End Get
        Set(value As String)
            dob = value
        End Set
    End Property

    Public Property Gender1 As String
        Get
            Return gender
        End Get
        Set(value As String)
            gender = value
        End Set
    End Property

    Public Property Course1 As String
        Get
            Return course
        End Get
        Set(value As String)
            course = value
        End Set
    End Property
End Class
