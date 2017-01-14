<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="WebApplication_Hotel_ASP.Reservation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css" />
    <script src="js/bootstrap.js" type="text/javascript"></script>
    <link href="css/templatemo-style.css" rel="stylesheet" />
    <link href="css/ResCss.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <title>Reserve Rooms</title>
</head>
<body  background="img_web/Background_01.jpg">
    <form id="form1" class="form-horizontal" runat="server">
        <div>
                &nbsp;</div>
                <fieldset>

                    <!-- Form Name -->
                    <legend class="h1">
                        <asp:Literal ID="ResH1" runat="server" Text="Reservation"></asp:Literal>
                    </legend>
                   

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label"  for="email">
                            <asp:Literal ID="emailLit" runat="server" Text="Email"></asp:Literal>
                            Email</label>
                        <div class="col-md-4">
                            <asp:TextBox ID="email" runat="server" CssClass="form-control input-md"></asp:TextBox>
                           <%--<asp:RequiredFieldValidator id="RequiredFieldValidatorEmail" runat="server" ControlToValidate="email" ErrorMessage= "*Enter Your Email" ForeColor="Red">
                                </asp:RequiredFieldValidator>--%>
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="dateArrive">
                            <asp:Literal ID="arrival" runat="server" Text="Date Arrival"></asp:Literal>
                        </label>
                        <div class="col-md-4">
                            <asp:TextBox ID="dateArrive" runat="server" CssClass="form-control input-md"></asp:TextBox><br />
                            <asp:ImageButton ID="calendarImg" runat="server" Height="20px" ImageUrl="~/img_web/calendar-flat.png" OnClick="calendarImg_Click" />

                            <br />
                            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                            
                            <%-- <asp:RequiredFieldValidator id="RequiredFieldValidatorDate" runat="server" ControlToValidate="dateArrive" ErrorMessage= "*Enter Arival Date(YYYY-MM-DD)" ForeColor="Red">
                                </asp:RequiredFieldValidator>--%>
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="dateDeparture">
                            <asp:Literal ID="departure" runat="server" Text="Date Departure"></asp:Literal></label>
                        <div class="col-md-4">
                            <asp:TextBox ID="dateDeparture" runat="server" CssClass="form-control input-md"></asp:TextBox><br />
                              <asp:ImageButton ID="calendarImg2" runat="server" Height="20px" ImageUrl="~/img_web/calendar-flat.png" OnClick="calendarImg2_Click" />

                            <br />
                            <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged"></asp:Calendar>
                              <%--<asp:RequiredFieldValidator id="RequiredFieldValidatorDate2" runat="server" ControlToValidate="dateDeparture" ErrorMessage= "*Enter Departure Date(YYYY-MM-DD)" ForeColor="Red">
                                </asp:RequiredFieldValidator>--%>
                        </div>
                    </div>
                    <br />

                    <asp:Label CssClass="col-md-4 control-label" ID="Label2" runat="server" >
                        <asp:Literal ID="rooms" Text="Available Rooms" runat="server"></asp:Literal>
                    </asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hameez.Fortress.dbo %>" SelectCommand="SELECT [RoomID], [RoomName], [Room_Rate] FROM [RoomDetails]"></asp:SqlDataSource>

                     
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="2px" CellPadding="4" DataKeyNames="RoomID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="RoomID" HeaderText="RoomID" ReadOnly="True" SortExpression="RoomID" />
                            <asp:BoundField DataField="RoomName" HeaderText="RoomName" SortExpression="RoomName" />
                            <asp:BoundField DataField="Room_Rate" HeaderText="Room_Rate" SortExpression="Room_Rate" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
               
                     
          <br />
                    <div class="form-group">

                        <asp:Label CssClass="col-md-4 control-label" ID="Label1" runat="server">
                            <asp:Literal ID="RoomId" runat="server" Text="Room ID"></asp:Literal>
                        </asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="RoomID" DataValueField="RoomID">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:hameez.Fortress.dbo %>" SelectCommand="SELECT [RoomID] FROM [RoomDetails]"></asp:SqlDataSource>


                    </div>
                    <br />

                    <!-- Button -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="btnReserve">
                            
                        </label>
                        <div class="col-md-7">
                            <asp:Button ID="btnReserve" runat="server" Text="" CssClass="btn btn-success" OnClick="btnReserve_Click" />
                            <br />
                            <br />
                            <asp:Button ID="Homebtn" runat="server" Text="" CssClass="btn btn-success" OnClick="Homebtn_Click" />
                            
                            <br />
                        </div>
                    </div>
                   
                    <br />

                   

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