<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication_Hotel_ASP.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <!-- About -->
	<div class="about" id="about">
		<div class="container">

			<h1>
                <asp:Literal ID="head01" text="The Fortress Resort & Spa" runat="server"></asp:Literal>
			</h1>
			<p class="para">
                <asp:Literal ID="aboutLit" runat="server"></asp:Literal>
                </p>

		</div>
	</div>
	<!-- //About -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <!-- Video -->
	<div class="video">
		<button class="btn btn-primary" data-toggle="modal" data-target="#modalvideo">
            <asp:Literal ID="vidLit" runat="server" Text="EXPERIENCE FORTRESS"></asp:Literal>

            <span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span></button>
		<!-- Tooltip-Content -->
		<div class="tooltip-content">

			<div class="modal fade features-modal" id="modalvideo" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						</div>
						<div class="modal-body">
							
							<iframe width="560" height="315" src="https://www.youtube.com/embed/0ov0VU2nMx8" frameborder="0" allowfullscreen></iframe>
					
							
						</div>
					</div>
				</div>
			</div>

			<script>
				$('#myModal').modal('');
			</script>

		</div>
		<!-- //Tooltip-Content -->
	</div>
	<!-- //Video -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <!-- Gallery -->
	<div class="gallery" id="gallery">
		<div class="container">

			<h3>
                <asp:Literal ID="galleryLit" runat="server" Text="GALLERY"></asp:Literal>
                </h3>

			<div class="gallery-grids">
				<div class="col-md-6 col-sm-6 gallery-grids-left">
					<div class="gallery-grid">
						<a class="example-image-link" href="img_web/gallery_01.jpg" data-lightbox="example-set" data-title="">
							<div class="grid">
								<figure class="effect-apollo">
									<img src="img_web/gallery_01.jpg"  alt="The Fortress"/>
										<figcaption></figcaption>
								</figure>
							</div>
						</a>
					</div>
					<div class="gallery-grids-left-sub">
						<div class="col-md-6 col-sm-6 gallery-grids-left-subl">
							<div class="gallery-grid">
								<a class="example-image-link" href="img_web/gallery_02.jpg" data-lightbox="example-set" data-title="">
									<div class="grid">
										<figure class="effect-apollo">
											<img src="img_web/gallery_02.jpg"  alt="The Fortress"/>
												<figcaption></figcaption>
										</figure>
									</div>
								</a>
							</div>
							<div class="gallery-grid gallery-grid-sub grid-middle">
								<a class="example-image-link" href="img_web/gallery_03.jpg" data-lightbox="example-set" data-title="">
									<div class="grid">
										<figure class="effect-apollo">
											<img src="img_web/gallery_03.jpg"  alt="The Fortress"/>
												<figcaption></figcaption>
										</figure>
									</div>
								</a>
							</div>
						</div>
						<div class="col-md-6 col-sm-6 gallery-grids-left-subr">
							<div class="gallery-grid">
								<a class="example-image-link" href="img_web/gallery_04.jpg" data-lightbox="example-set" data-title="">
									<div class="grid">
										<figure class="effect-apollo">
											<img src="img_web/gallery_04.jpg"  alt="The Fortress"/>
												<figcaption></figcaption>
										</figure>
									</div>
								</a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 gallery-grids-left">
					<div class="col-md-6 col-sm-6 gallery-grids-right">
						<div class="gallery-grid">
							<a class="example-image-link" href="img_web/gallery_05.jpg" data-lightbox="example-set" data-title="">
								<div class="grid">
									<figure class="effect-apollo">
										<img src="img_web/gallery_05.jpg" alt="The Fortress"/>
											<figcaption></figcaption>
									</figure>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-6 col-sm-6 gallery-grids-right two">
						<div class="gallery-grid">
							<a class="example-image-link" href="img_web/gallery_06.jpg" data-lightbox="example-set" data-title="">
								<div class="grid">
									<figure class="effect-apollo">
										<img src="img_web/gallery_06.jpg" alt="The Fortress"/>
											<figcaption></figcaption>
									</figure>
								</div>
							</a>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="gallery-grids-right1">
						<div class="gallery-grid">
							<a class="example-image-link" href="img_web/gallery_07.jpg" data-lightbox="example-set" data-title="">
								<div class="grid">
									<figure class="effect-apollo">
										<img src="img_web/gallery_07.jpg" alt="The Fortress"/>
											<figcaption></figcaption>
									</figure>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-6 col-sm-6 gallery-grids-right gallery-8">
						<div class="gallery-grid">
							<a class="example-image-link" href="img_web/gallery_08.jpg" data-lightbox="example-set" data-title="">
								<div class="grid">
									<figure class="effect-apollo">
										<img src="img_web/gallery_08.jpg" alt="The Fortress"/>
											<figcaption></figcaption>
									</figure>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-6 col-sm-6 gallery-grids-right gallery-9">
						<div class="gallery-grid">
							<a class="example-image-link" href="img_web/Rest_05.jpg" data-lightbox="example-set" data-title="">
								<div class="grid">
									<figure class="effect-apollo">
										<img src="img_web/Rest_05.jpg" alt="The Fortress"/>
											<figcaption></figcaption>
									</figure>
								</div>
							</a>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>

		</div>
	</div>
	<!-- //Gallery -->
</asp:Content>
