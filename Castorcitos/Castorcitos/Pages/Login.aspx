<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Castorcitos.Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Login Castorcitos UTP</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>        
        <link type="text/css" rel="stylesheet" href="../CSS/MiEstilo.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="card card-container">
                <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
                <!--<img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />-->
                <p id="profile-name" class="profile-name-card"></p>
                <form class="form-signin">
                    <span id="reauth-matricula" class="reauth-matricula"></span>
                    <asp:TextBox ID="txtMatricula" runat="server" class="inputMatricula form-control" placeholder="Matricula" TextMode="Number"></asp:TextBox>
                    <asp:TextBox ID="txtPase" runat="server" class="inputPassword form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                    <!--<input type="password" id="inputPassword" class="form-control" placeholder="Password" required>-->
                    <br />
                    <br />
                    <asp:Button ID="BtnLogin" runat="server" class="btn btn-lg btn-primary btn-block btn-signin" Text="Sign In" OnClick="BtnLogin_Click" />
                
                </form>
            </div><!-- /card-container -->
    </div><!-- /container -->      
    </form>
</body>
</html>
<!-- 
.........._     _
..........\\   // 
...........\\_//    
.........../. .\
..........=\ T /=    
.........../ ^ \    
........{}/\\ //\    
........__\ " " /__    
.......(____/^\____)..
vvvvvvvvvvvvvvvvvvvvvvvv
vvv-HOLA Qué buscas?-vvv   
vvvvvvvvvvvvvvvvvvvvvvvv   -->  
