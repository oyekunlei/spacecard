<!doctype html>
<html class="no-js" lang="en">

	  <!-- // 	<script type="text/javascript">
			//
			// 	var slideimages = new Array() // create new array to preload images
			// 	slideimages[0] = new Image() // create new instance of image object
			// 	slideimages[0].src = "img\\space1.jpg" // set image src property to image path, preloading image in the process
			// 	slideimages[1] = new Image()
			// 	slideimages[1].src = "img\\space2.jpg"
			// 	slideimages[2] = new Image()
			// 	slideimages[2].src = "img\\space3.jpg"
			// 	slideimages[1] = new Image()
			// 	slideimages[1].src = "img\\space4.jpg"
			// 	slideimages[2] = new Image()
			// 	slideimages[2].src = "img\\space5.jpg"
			//
			// </script> -->

	<jsp:include page="partials/head.jsp" />

	<body data-spy="scroll" data-offset="0" data-target="#navigation">
		<jsp:include page="partials/header.jsp" />

		<section id="home" name="home"></section>
		<div id="headerwrap">
			<div class="container">
				<div class="row centered">
					<div class="col-lg-12">
					<h1>Welcome To <b>Spacecard</b></h1>
					<h3>Create awesome eCards.</h3>
					<br>
					</div>

					<div class="col-lg-2">
						<h5>Amazing Results</h5>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						<img class="hidden-xs hidden-sm hidden-md" src="assets/img/arrow1.png">
					</div>
					<div class="col-lg-8">
						<img class="img-responsive" src="assets/img/app-bg.png" alt="">
					</div>
					<div class="col-lg-2">
						<br>
						<img class="hidden-xs hidden-sm hidden-md" src="assets/img/arrow2.png">
						<h5>Awesome Design</h5>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
					</div>
				</div>
			</div> <!--/ .container -->
		</div><!--/ #headerwrap -->

	  <!-- <nav class="top-bar" data-topbar="">
	    <ul class="title-area">
	      <li class="name">
	        <h1>
	          <a href="../">
	            <img src="img/logo_nav.png" class="nav-brand" alt="logo"> <b>spacecard</b></a>
	        </h1>
	      </li>
	    </ul>
	    <section class="top-bar-section">
	      <ul class="right">
	        <li class="not-click">
	          <a href="" data-reveal-id="myModal">upload</a>
	        </li>
	        <li class="not-click">
	          <a href="explore/">explore</a>
	        </li>
	        <li class="not-click">
	          <a href="profile/">sign in</a>
	        </li>
	      </ul>
	    </section>
	  </nav> -->
	  <div class="section">

	  </div>
	  <div id="slideshow">
	    <img src="img\space1.jpg" id="slide" width="50" height="100" />

	    <script type="text/javascript">
	      //variable that will increment through the images
	      var step = 0

	      function slideit() {
	      	//if browser does not support the image object, exit.
	      	if (!document.images)
	      		return
	      	document.getElementById('slide').src = slideimages[step].src
	      	if (step < 2)
	      		step++
	      		else
	      			step = 0
	      			//call function "slideit()" every 2.5 seconds
	      	setTimeout("slideit()", 2500)
	      }

	      slideit()
	    </script>

	    <h2>Welcome to Space Card!</h2>
	    <h3>This is the platform to create amazing postcards for memorable events! Celebrate graduations, weddings, births ... with your loved ones by personalizing outer space images and share them with the rest of the world. Let's get started</h3>
	    <form action="login.go" method="POST">
	      <br>
	      <input type="submit" value="Access your account" id="btn" name="select">
	    </form>

	  </div>
	  <div id="myModal" class="reveal-modal" data-reveal aria-labelledby="modalTitle" aria-hidden="true" role="dialog">
	    <h6 id="modalTitle"><b>upload your files</b></h6>
	    <div class="large-6 columns">
	      <input class="msg" type="file" name="file_upload" />
	    </div>
	    <a class="close-reveal-modal" aria-label="Close">&#215;</a>
	  </div>
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/smoothscroll.js"></script>
	  <script>
	    $(document).foundation();
	  </script>
	</body>
</html>
