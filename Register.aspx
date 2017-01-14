
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication_Hotel_ASP.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet"/>  
    <link href="css/style.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Buenard:700' rel='stylesheet' type='text/css'/>
    <script src="http://pupunzi.com/mb.components/mb.YTPlayer/demo/inc/jquery.mb.YTPlayer.js"></script>
   
    <title>Register</title>
</head>
<body  background="img_web/Background_01.jpg" />
   
    
   
  
    <div>
       <div class="container">
	<div class="row">
		<h2 class="jumbotron" >Register and proceed with the bookings.</h2> 
        
        <form class="form-horizontal" runat="server">
    <fieldset>

<!-- Form Name -->
<legend></legend>

                <!-- Text input-->
       
            <div class="form-group">
                  <label class="col-md-4 control-label labels" for="textinput">First Name</label>  
                  <div class="col-md-4">
                      <asp:TextBox ID="firstname" CssClass="form-control input-md" runat="server"></asp:TextBox>
                  <span class="help-block"> </span>  
                  </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                  <label class="col-md-4 control-label labels"  for="textinput">Last Name</label>  
                  <div class="col-md-4">
                  
                      <asp:TextBox ID="lastname" CssClass="form-control input-md" runat="server"></asp:TextBox>
                  <span class="help-block"> </span>  
                  </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                  <label class="col-md-4 control-label labels" for="textinput">Contact</label>  
                  <div class="col-md-4">
                 
                  <asp:TextBox TextMode="Number" ID="contact" CssClass="form-control input-md" runat="server"></asp:TextBox>
                  <span class="help-block"> </span>  
                  </div>
                </div>
                
     <!-- Text input-->
                <div class="form-group">
                  <label class="col-md-4 control-label labels" for="textinput">Email</label>  
                  <div class="col-md-4">
                 
                  <asp:TextBox  ID="email" CssClass="form-control input-md" runat="server"></asp:TextBox>
                  <span class="help-block"> </span>  
                  </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                  <label class="col-md-4 control-label labels" for="textinput">Password</label>  
                  <div class="col-md-4">
                    <asp:TextBox  TextMode="Password" ID="password" CssClass="form-control input-md" runat="server"></asp:TextBox>
                       
                  <span class="help-block"> </span>  
                  </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                  <label class="col-md-4 control-label labels" for="textinput">Confirm Password</label>  
                  <div class="col-md-4">

                   <asp:TextBox  TextMode="Password" ID="password_confirmation" CssClass="form-control input-md" runat="server"></asp:TextBox>
                  <span class="help-block"> </span>  
                  </div>
                </div>

                <!-- Button -->
                <div class="form-group">
                  <label class="col-md-4 control-label labels" for="singlebutton"> </label>
                  <div class="col-md-4">
                      <asp:Button ID="btnregister" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="btnregister_Click"/>
                      <asp:Button ID="btnhome" runat="server" Text="Home" CssClass="btn btn-primary" OnClick="btnhome_Click"/>
                  </div>
                </div>
        
                

                </fieldset>
                </form>
  
	</div>

        </div>
</div>






    
    
   
</body>
</html>
