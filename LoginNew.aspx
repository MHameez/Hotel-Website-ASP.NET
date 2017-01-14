<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginNew.aspx.cs" Inherits="WebApplication_Hotel_ASP.LoginNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title> 
        <asp:Literal ID="loginTitle" runat="server" Text="Login"></asp:Literal> 

    </title>
    <link href="css/templatemo-style.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <link href="css/Register.css" rel="stylesheet" type="text/css"/>
    <link href="css/login.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body background="img_web/Background_01.jpg">
    <form id="form1" class="form-signin" runat="server">
       
    <div>
     <div id="login_page" class="login-background">

        <div class="container">
        <div class="card card-container">
            <h2 class="jumbotron" >
                <asp:Literal ID="loginhead" runat="server" Text="Log In"></asp:Literal>
            </h2> 
           
            
          
                <span id="reauth-email" class="reauth-email"></span>
                
                <asp:Label ID="emailLbl" CssClass="lable_style" runat="server" >
                    <asp:Literal ID="emailLit" runat="server"></asp:Literal>

                </asp:Label>
                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" runat="server" required autofocus/>
            <br />
            <br />
                
            <asp:Label ID="passLbl" CssClass="lable_style" runat="server" >
                <asp:Literal ID="passLit" runat="server"></asp:Literal>
            </asp:Label>
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" runat="server" required autofocus/>
             <p>
                    <asp:Label ID="Msg" ForeColor="red" text="" runat="server" />
                 </p>
                <div id="remember" class="checkbox">
                    <label>
                        <asp:CheckBox ID="CheckBox1" CssClass="lable_style" runat="server" />
                        
                        <asp:Literal ID="remeberLit" runat="server" Text="Remember me"></asp:Literal>
                    </label>
                </div>
            <div>
                 <asp:Button ID="btnLogin" runat="server" Text="" class="btn btn-lg btn-primary btn-block btn-signin" OnClick="btnLogin_Click"  />
               
                
                <br />

                 <asp:Button ID="homeLit" runat="server" Text="" class="btn btn-lg btn-primary btn-block btn-signin" OnClick="homebtn_Click"  />
                
                </div>
        
            
            <br />
             <a href="Register.aspx" class="forgot-password">
                 <asp:Literal ID="reg" runat="server" Text="Not a member? Register now."></asp:Literal>
                
            </a>
        </div><!-- /card-container -->
    </div><!-- /container -->

    </div>
    </div>
    
    	<footer class="tm-black-bg">
        
		<div class="w3-container"">
            
			<div class="row">
                
                    <ul class="w3-ul w3-center">
                            <li><a><asp:Literal ID="language" Text="Languages:" runat="server" /></a>
                                 
                            </li>
                                                       
                            <li><a><asp:LinkButton ID="LinkButtonEng" runat="server" CssClass="lang_style"  OnClick="LinkButtonEng_Click">English</asp:LinkButton>
                               <asp:Literal ID="english" runat="server" Text="English"></asp:Literal> </a>
                            </li>
                            <li><a><asp:LinkButton ID="LinkButtonFr" runat="server" CssClass="lang_style" OnClick="LinkButtonFr_Click">Russian</asp:LinkButton>
                            <asp:Literal ID="russian" runat="server" Text="Russian"></asp:Literal> </a> 
                            </li>
                            <li><a><asp:LinkButton ID="LinkButtonCh" runat="server" CssClass="lang_style" OnClick="LinkButtonCh_Click">Portuguese</asp:LinkButton>
                            <asp:Literal ID="portuguese" runat="server" Text="Portuguese"></asp:Literal> </a> 
                            </li>
                        </ul>
                        
				<p class="tm-copyright-text"> &copy; 2016 
                    <asp:Literal ID="copy" runat="server"></asp:Literal>
                
                <a rel="nofollow" href="#" target="_parent">Hameez</a></p>

                <p class="tm-copyright-text"> 
                
                <a rel="nofollow" href="#" class="admin_style">
                <asp:Literal ID="adminLit" text="Administrator Login"  runat="server"></asp:Literal>     
                </a></p>
			</div>	
            </div>
			
            
	</footer>
        </form>
</body>
</html>
