
<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="RoomTypes.aspx.cs" Inherits="WebApplication_Hotel_ASP.RoomTypes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="login-background">
     <br />
    <br />
    
    <div class="container">
	<div class="row">
		    <div class="col-sm-4">
				<div class="news">
					<div class="img-figure">
						<div class="cat">
                            <asp:Literal ID="room01" runat="server" Text="Fortress Residence"></asp:Literal>
						</div>
						<img src="img_web/Room_01_converted.jpg" class="img-responsive">
					</div>	
                    				
					<p class="description">
                        <asp:Literal ID="room01D" runat="server" ></asp:Literal>
						
					</p>

					<p class="more">
                        
						<a href="LoginNew.aspx">BOOK</a><i class="fa fa-angle-right" aria-hidden="true"></i>
					</p>
			</div>
            


			</div>
            <div class="col-sm-4">
    			<div class="news">
					<div class="img-figure">
						<div class="cat">
                            <asp:Literal ID="room02" runat="server" Text="Ocean Loft"></asp:Literal>
						</div>
						<img src="img_web/Room_02_converted.jpg" class="img-responsive">
					</div>	

					<p class="description">
                        <asp:Literal ID="room02D" runat="server"></asp:Literal>
						
					</p>

					<p class="more">
						<a href="LoginNew.aspx">BOOK</a><i class="fa fa-angle-right" aria-hidden="true"></i>
					</p>
			</div>
	</div>


        <div class="col-sm-4">
				<div class="news">
					<div class="img-figure">
						<div class="cat">
                            <asp:Literal ID="room03" runat="server" Text="Beach Splash Room"></asp:Literal>
						</div>
						<img src="img_web/Room_03_converted - Copy.jpg" class="img-responsive">
					</div>	

					<p class="description">
                        <asp:Literal ID="room03D" runat="server"></asp:Literal>
						
					</p>

					<p class="more">
						<a href="LoginNew.aspx">BOOK</a><i class="fa fa-angle-right" aria-hidden="true"></i>
					</p>
			</div>
            


			</div>
           </div>

        </div>
    <br />
    <br />
    <br />
    
           

    
   </div>
    
</asp:Content>
