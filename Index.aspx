
<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication_Hotel_ASP.Index" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Banner -->
	<section class="tm-banner">
		<!-- Flexslider -->
		<div class="flexslider flexslider-banner">
		  <ul class="slides">
		    <li>
			    <div class="tm-banner-inner">
					<h1 class="tm-banner-title"> <span class="tm-yellow-text">
                        <asp:Literal ID="span01" runat="server" Text="The Island"></asp:Literal>
					                             </span> 
                        
					</h1>
					<p class="tm-banner-subtitle">
                        <asp:Literal ID="header01" runat="server" Text="This Holiday"></asp:Literal>
					</p>
                   
				</div>

				<asp:Image ID="banner1" CssClass="banner_image" src="img_web/Banner_05.jpg"  alt="Image" runat="server"/>	
		    </li>
		    <li>
			    <div class="tm-banner-inner">
					<h1 class="tm-banner-title"><span class="tm-yellow-text">
                        <asp:Literal ID="span02" runat="server" Text="A Hidden Gem"></asp:Literal></span></h1>
					</div>
		      <asp:Image ID="banner3"  CssClass="banner_image" src="img_web/Banner_03.jpg" alt="Image" runat="server"/>
		    </li>
               <li>
			    <div class="tm-banner-inner">
					<h1 class="tm-banner-title"><span class="tm-yellow-text">
                        <asp:Literal ID="span03" runat="server" Text="Great Indian Ocean"></asp:Literal></span></h1>
					</div>
		      <asp:Image ID="banner4" CssClass="banner_image"  src="img_web/Banner_04.jpg" alt="Image" runat="server"/>
		    </li>

		  </ul>
		</div>	
	</section>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <br />
    <br />
   <section>

        <!-- Services -->
        <div class="services" id="services">
            <div class="container">

                <h3>
                    <asp:Literal ID="resteurant" runat="server" Text="Restaurants"></asp:Literal>
                </h3>

                <div class="grid_3 grid_5">
                    <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active"><a href="#expeditions" id="expeditions-tab" role="tab" data-toggle="tab" aria-controls="expeditions" aria-expanded="true">
                                <asp:Literal ID="heat" runat="server" Text="Heat"></asp:Literal>
                                                                   </a></li>
                            <li role="presentation"><a href="#tours" role="tab" id="tours-tab" data-toggle="tab" aria-controls="tours">
                                <asp:Literal ID="pepper" runat="server" Text="Pepper"></asp:Literal>
                                                    </a></li>
                            <li role="presentation"><a href="#tree" role="tab" id="tree-tab" data-toggle="tab" aria-controls="tree">
                                <asp:Literal ID="lounge" runat="server" Text="T-Lounge"></asp:Literal>
                                                    </a></li>
                            <li role="presentation"><a href="#safari" role="tab" id="safari-tab" data-toggle="tab" aria-controls="safari">
                                <asp:Literal ID="poolside" runat="server" Text="Poolside"></asp:Literal></a></li>
                            <li role="presentation"><a href="#trekking" role="tab" id="trekking-tab" data-toggle="tab" aria-controls="trekking">
                                <asp:Literal ID="cafe" runat="server" Text="Le Café"></asp:Literal> </a></li>
                        </ul>
                        <div id="myTabContent" class="tab-content">
                            <div role="tabpanel" class="tab-pane fade in active" id="expeditions" aria-labelledby="expeditions-tab">
                                <div class="col-md-5 col-sm-5 tab-image">
                                    <img src="img_web/Rest_01.jpg" alt="Wanderer">
                                </div>
                               
                                <div class="col-md-7 col-sm-7 tab-info">
                                    <p>
                                        <asp:Literal ID="heatDisc" runat="server" ></asp:Literal>
                                        </p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="tours" aria-labelledby="tours-tab">
                                <div class="col-md-5 col-sm-5 tab-image">
                                    <img src="img_web/Rest_02.jpg" alt="Wanderer">
                                </div>
                                <div class="col-md-7 col-sm-7 tab-info">
                                    <p><asp:Literal ID="pepperDisc" runat="server" ></asp:Literal>
                                        </p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="tree" aria-labelledby="tree-tab">
                                <div class="col-md-5 col-sm-5 tab-image">
                                    <img src="img_web/Rest_03.jpg" alt="Wanderer">
                                </div>
                                <div class="col-md-7 col-sm-7 tab-info">
                                    <p><asp:Literal ID="lougeDisc" runat="server" ></asp:Literal>
                                        </p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="safari" aria-labelledby="safari-tab">
                                <div class="col-md-5 col-sm-5 tab-image">
                                    <img src="img_web/Rest_04.jpg" alt="Wanderer">
                                </div>
                                <div class="col-md-7 col-sm-7 tab-info">
                                    <p>
                                        <asp:Literal ID="poolsideDisc" runat="server" ></asp:Literal></p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="trekking" aria-labelledby="trekking-tab">
                                <div class="col-md-5 col-sm-5 tab-image">
                                    <img src="img_web/Rest_05.jpg" alt="Wanderer">
                                </div>
                                <div class="col-md-7 col-sm-7 tab-info">
                                    <p>
                                        <asp:Literal ID="cafeDisc" runat="server" ></asp:Literal></p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
        <!-- //Services -->
    </section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <section>
        <br />
        <h1 class="tm-banner-title" style="color: #393333; font-size: 25px; text-align: center">
            <asp:Literal ID="mapLit" runat="server" Text="We are Here"></asp:Literal>
        </h1>

        <br />

        <style>
            .map-responsive {
                overflow: hidden;
                padding-bottom: 50%;
                position: relative;
                height: 0;
            }

                .map-responsive iframe {
                    left: 0;
                    top: 0;
                    height: 100%;
                    width: 100%;
                    position: absolute;
                }
        </style>

        <div class="map-responsive">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3968.060423947282!2d80.32535109895016!3d5.986418626405835!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae16cd40ea1205f%3A0xeb917c57e8fe1837!2sThe+Fortress+Sri+Lanka!5e0!3m2!1sen!2s!4v1474106696815" width="600" height="300" frameborder="0" style="border: 0" allowfullscreen></iframe>
        </div>
    </section>
    
</asp:Content>
