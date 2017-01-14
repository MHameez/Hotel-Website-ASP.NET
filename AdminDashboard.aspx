<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="WebApplication_Hotel_ASP.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <asp:Literal ID="title1" runat="server" Text="Admin Dashboard"></asp:Literal>
    </title>

    <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/Register.css" rel="stylesheet" type="text/css"/>
   
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <link href="css/templatemo-style.css" rel="stylesheet" type="text/css" />
    <link href="css/Register.css" rel="stylesheet" type="text/css"/>
</head>
<body background="img_web/Background_01.jpg">
    <form id="form1" runat="server">
        <fieldset>
        <h2 class="jumbotron" >
            <asp:Literal ID="header2"  runat="server" Text="Administration Dashboard"></asp:Literal>
               
            </h2>
    <div>
        
       
        <div class="col-sm-7">
            <h3 class="lable_style">
                <asp:Literal ID="headerRes" runat="server" Text="Reservations"></asp:Literal></h3>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:hameez.Fortress.dbo %>" SelectCommand="SELECT * FROM [Reservation]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ReservationID" DataSourceID="SqlDataSource2" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="ReservationID" HeaderText="ReservationID" InsertVisible="False" ReadOnly="True" SortExpression="ReservationID" />
                    <asp:BoundField DataField="RoomID" HeaderText="RoomID" SortExpression="RoomID" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="CheckinDate" HeaderText="CheckinDate" SortExpression="CheckinDate" />
                    <asp:BoundField DataField="Checkout" HeaderText="Checkout" SortExpression="Checkout" />
                    <asp:BoundField DataField="TotalAmount" HeaderText="TotalAmount" SortExpression="TotalAmount" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
        </div>

        <div class="col-sm-7">
            <h3 class="lable_style">
                <asp:Literal ID="headerAv" runat="server" Text="Available Rooms"></asp:Literal></h3>

            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:hameez.Fortress.dbo %>" SelectCommand="SELECT * FROM [RoomDetails]"></asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="RoomID" DataSourceID="SqlDataSource3" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="RoomID" HeaderText="RoomID" ReadOnly="True" SortExpression="RoomID" />
                    <asp:BoundField DataField="RoomName" HeaderText="RoomName" SortExpression="RoomName" />
                    <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                    <asp:BoundField DataField="Room_Rate" HeaderText="Room_Rate" SortExpression="Room_Rate" />
                    <asp:BoundField DataField="Room_Number" HeaderText="Room_Number" SortExpression="Room_Number" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            </div>
       
   

        <div class="col-sm-7">
            <h1 class="h1 lable_stylehead">
             <asp:Literal ID="addroom" runat="server" Text="Add Room"></asp:Literal>
            </h1>
            <div class="form-group col-lg-6">
                <asp:Label ID="lblroomid" runat="server" CssClass="lable_style" >
                    <asp:Literal ID="litroomid" runat="server" Text="Room ID"></asp:Literal>
                </asp:Label>
                <asp:TextBox ID="txtroomid" runat="server" CssClass="form-control"></asp:TextBox>
               
            </div>
            <div class="form-group col-lg-6">
                <asp:Label ID="lblroomname" runat="server" CssClass="lable_style" >
                    <asp:Literal ID="litroomname" runat="server" Text="Room Name"></asp:Literal>
                </asp:Label>
                <asp:TextBox ID="txtroomname" runat="server" CssClass="form-control"></asp:TextBox>
                 
            </div>
            <div class="form-group col-lg-6">
                <asp:Label ID="lblSize" runat="server" CssClass="lable_style" >
                    <asp:Literal ID="litroomsize" runat="server" Text="Size Category"></asp:Literal>
                </asp:Label>
                <asp:TextBox ID="txtsize" runat="server" CssClass="form-control"></asp:TextBox>
               
            </div>
            <div class="form-group col-lg-6">
                <asp:Label ID="lblRate" runat="server" CssClass="lable_style" >
                    <asp:Literal ID="litrate" runat="server" Text="Room Rate"></asp:Literal>
                </asp:Label>
                <asp:TextBox ID="txtrate" runat="server" CssClass="form-control"></asp:TextBox>
                
            </div>
            <div class="form-group col-lg-6 ">
                <asp:Label ID="lblrnumber" runat="server" CssClass="lable_style">
                    <asp:Literal ID="litroomnumber" runat="server"  Text="Room Number"></asp:Literal>
                </asp:Label>
                <asp:TextBox ID="txtnumber" runat="server" CssClass="form-control"></asp:TextBox>
                
            </div>
            <div class="form-group col-lg-6 ">
                <asp:Label ID="lblDesc" runat="server" CssClass="lable_style">
                    <asp:Literal ID="litroomdisc" runat="server" Text="Description"></asp:Literal>
                </asp:Label>
                <asp:TextBox ID="txtdesc" runat="server" CssClass="form-control"></asp:TextBox>
                
                <br />
                <asp:Button ID="btnaddroom" runat="server" CssClass="btn btn-primary" Text="" OnClick="btnaddroom_Click" />
            </div>
           
            <br />
            <br />
        </div>

        <div class="form-group col-lg-6">
            <h1 class="h1 lable_stylehead">
                <asp:Literal ID="deleteRoom" runat="server" Text="Delete Room"></asp:Literal></h1>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hameez.Fortress.dbo %>" SelectCommand="SELECT [RoomID] FROM [RoomDetails]"></asp:SqlDataSource>
            <asp:Label ID="Label1" CssClass="lable_style" runat="server" >
                <asp:Literal ID="drproomid" runat="server" Text="Room ID"></asp:Literal>
            </asp:Label>
            <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="RoomID" DataValueField="RoomID"></asp:DropDownList>
              
            <br />
                 <asp:Button ID="btndeleteroom" runat="server" CssClass="btn btn-primary" Text="" OnClick="btndeleteroom_Click" />
            </div>
        <br />
        <br />

        <div class="col-md-7">
            <h1 class="h1 lable_stylehead">
                <asp:Literal ID="updateRoom" runat="server" Text="Update Room"></asp:Literal>
            </h1>
            
            <div class="form-group col-lg-6">
                <asp:Label ID="lblid" runat="server" CssClass="lable_style">
                    <asp:Literal ID="litrID" runat="server" Text="Room ID"></asp:Literal>
                </asp:Label>
                <asp:TextBox ID="txtid" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group col-lg-6">
                <asp:Label ID="lblname" runat="server" CssClass="lable_style" >
                    <asp:Literal ID="litrNAME" runat="server" Text="Room Name"></asp:Literal>
                </asp:Label>
                <asp:TextBox ID="txtname" runat="server" CssClass="form-control"></asp:TextBox>
               
            </div>
            <div class="form-group col-lg-6 lable_style">
                <asp:Label ID="lblsizec" runat="server" CssClass="lable_style" >
                    <asp:Literal ID="litrSIZE" runat="server" Text="Size Category"></asp:Literal>
                </asp:Label>
                <asp:TextBox ID="txtroomsize" runat="server" CssClass="form-control"></asp:TextBox>
               
            </div>
            <div class="form-group col-lg-6 lable_style">
                 <asp:Label ID="lblrrate" runat="server" CssClass="lable_style" >
                     <asp:Literal ID="litrRATE" runat="server" Text="Room Rate"></asp:Literal>
                 </asp:Label>
                <asp:TextBox ID="txtroomrate" runat="server" CssClass="form-control"></asp:TextBox>
              
            </div>
            <div class="form-group col-lg-6 lable_style">
                <asp:Label ID="lblnumber" runat="server" CssClass="lable_style" >
                    <asp:Literal ID="litrNUMBER" runat="server" Text="Room Number"></asp:Literal>
                </asp:Label>
                <asp:TextBox ID="txtroomnum" runat="server" CssClass="form-control"></asp:TextBox>
               
            </div>
            <div class="form-group col-lg-6 lable_style">
                <asp:Label ID="lblrdesc" runat="server" CssClass="lable_style" >
                    <asp:Literal ID="litrDISC" runat="server" Text="Description"></asp:Literal>
                </asp:Label>
                <asp:TextBox ID="txtroomdisc" runat="server" CssClass="form-control"></asp:TextBox>
              

            </div>
            <asp:Button ID="btneditroom" runat="server" CssClass="btn btn-primary" Text="" OnClick="btneditroom_Click" />
            <a href="Index.aspx" style="color:#ffffff";>
                <asp:Literal ID="homeLit" runat="server" Text="HOME"></asp:Literal></a>
        </div>
        

    </div>
            </fieldset>
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
                
                <a rel="nofollow" href="LoginNew.aspx" class="admin_style">
                <asp:Literal ID="adminLit" text="Administrator Login"  runat="server"></asp:Literal>     
                </a></p>
			</div>	
            </div>
			
            
	</footer>
    </form>
</body>
</html>