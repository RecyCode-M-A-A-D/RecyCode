INSERT INTO users (first_name, last_name, user_name, password, email, avatar_img)
VALUES
('Fred', 'Fredowski', 'fred', '$2a$10$WkPiJnOCCF8MWuEEbjrFk.en0tY.iAZxJxA7zqSO5/bZMwOyBm11e', 'fred@fred.com','/img/default_avatar.png'),
('Andrew', 'Lange', 'andrew', '$2a$10$Y1MAuX.1FY.Nw.Dzo8i/3uQtik/iXorFnp0.3SX6Djb5UV81C/VlG', 'andrew@andrew.com', 'https://cdn.filestackcontent.com/fVKOpE3dSbqs6q6S1JNg'),
('Mario', 'Granados', 'mario', '$2a$10$cQJeEt4wR6HdAjETtcXGj.olyCfPi6JZao3sGXPdBc38oN3K1mnPC', 'mario@mario.com','/img/default_avatar.png'),
('Angel', 'Santana', 'angel', '$2a$10$3PM249xAfQW3Vt6Hvs5FdORywDFDjpHsQmuGiDbRPfvboDbsz8fnS', 'angel@angel.com','/img/default_avatar.png'),
('Danny', 'Turner', 'danny', '$2a$10$lc3Tq1jgPW4FcXi0JfjdL.nZ/6vj94DmnUL1ZYXYLGa2anBOi4txe', 'danny@danny.com','/img/default_avatar.png');

INSERT INTO posts (html, css, js, date_published, description, title, image_url, user_id)
VALUES ('<section class="p-0 bg-img cover-background" style="background-image: url(https://bootdey.com/img/Content/bg1.jpg);">
        <div class="container-fluid d-flex flex-column">
            <div class="row align-items-center justify-content-center min-vh-100">
                <div class="col-md-9 col-lg-6 my-5">
                    <div class="text-center error-page">
                        <h1 class="mb-0 text-secondary">404</h1>
                        <h2 class="mb-4 text-white">Sorry, something went wrong!</h2>
                        <p class="w-sm-80 mx-auto mb-4 text-white">This page is incidentally inaccessible because of support. We will back very before long much obliged for your understanding</p>
                        <div>
                            <a href="#" class="btn btn-info btn-lg me-sm-2 mb-2 mb-sm-0">Return Home</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>', 'body{margin-top:20px;}
.cover-background {
    position: relative !important;
background-size: cover !important;
overflow: hidden !important;
background-position: center !important;
background-repeat: no-repeat !important;
}
.p-0 {
    padding: 0!important;
}
section {
    padding: 120px 0;
overflow: hidden;
background: #fff;
}

.error-page {
    background-color: #BABABA4A;
    -webkit-backdrop-filter: blur(9px);
backdrop-filter: blur(15px);
border: 1px solid rgba(234,234,235,0.2);
padding: 80px 20px;
}
.text-center {
    text-align: center!important;
}
.error-page h1 {
    font-size: 200px;
line-height: 1;
font-weight: 600;
}
.text-secondary {
    color: #15395A !important;
}
.mb-4 {
    margin-bottom: 1.5rem!important;
}', '', '2022-05-26', 'This is a bootstrap snippet for a 404 error page with a blur effect.', '404 Error Page With Blur', 'https://cdn.filestackcontent.com/diICVlZdQVCVDprhWQtQ',  1),

    ('<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/svg-with-js.min.css" integrity="sha512-W3ZfgmZ5g1rCPFiCbOb+tn7g7sQWOQCB1AkDqrBG1Yp3iDjY9KYFh/k1AWxrt85LX5BRazEAuv+5DV2YZwghag==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<section class="team-section py-5">
    <div class="container">
	    <div class="row justify-content-center">
		    <div class="col-12 col-md-6">
			    <div class="card border-0 shadow-lg pt-5 my-5 position-relative">
				    <div class="card-body p-4">
					    <div class="member-profile position-absolute w-100 text-center">
					        <img class="rounded-circle mx-auto d-inline-block shadow-sm" src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="">
				        </div>
					    <div class="card-text pt-1">
						    <h5 class="member-name mb-0 text-center text-primary font-weight-bold">John Lynch</h5>
						    <div class="mb-3 text-center">Co-founder / CEO</div>
						    <div>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Vivamus eget eros vestibulum, accumsan ante viverra, condimentum tellus. Curabitur pellentesque convallis purus non ornare. Donec bibendum sed purus dignissim rutrum. Maecenas bibendum feugiat est, et venenatis nunc.</div>
					    </div>
				    </div><!--//card-body-->
				    <div class="card-footer theme-bg-primary border-0 text-center">
					    <ul class="social-list list-inline mb-0 mx-auto">
						    <li class="list-inline-item"><a class="text-dark" href="#"><svg class="svg-inline--fa fa-linkedin-in fa-w-14 fa-fw" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="linkedin-in" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M100.28 448H7.4V148.9h92.88zM53.79 108.1C24.09 108.1 0 83.5 0 53.8a53.79 53.79 0 0 1 107.58 0c0 29.7-24.1 54.3-53.79 54.3zM447.9 448h-92.68V302.4c0-34.7-.7-79.2-48.29-79.2-48.29 0-55.69 37.7-55.69 76.7V448h-92.78V148.9h89.08v40.8h1.3c12.4-23.5 42.69-48.3 87.88-48.3 94 0 111.28 61.9 111.28 142.3V448z"></path></svg><!-- <i class="fab fa-linkedin-in fa-fw"></i> Font Awesome fontawesome.com --></a></li>
				            <li class="list-inline-item"><a class="text-dark" href="#"><svg class="svg-inline--fa fa-twitter fa-w-16 fa-fw" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="twitter" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z"></path></svg><!-- <i class="fab fa-twitter fa-fw"></i> Font Awesome fontawesome.com --></a></li>
			                <li class="list-inline-item"><a class="text-dark" href="#"><svg class="svg-inline--fa fa-medium fa-w-14 fa-fw" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="medium" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M0 32v448h448V32H0zm372.2 106.1l-24 23c-2.1 1.6-3.1 4.2-2.7 6.7v169.3c-.4 2.6.6 5.2 2.7 6.7l23.5 23v5.1h-118V367l24.3-23.6c2.4-2.4 2.4-3.1 2.4-6.7V199.8l-67.6 171.6h-9.1L125 199.8v115c-.7 4.8 1 9.7 4.4 13.2l31.6 38.3v5.1H71.2v-5.1l31.6-38.3c3.4-3.5 4.9-8.4 4.1-13.2v-133c.4-3.7-1-7.3-3.8-9.8L75 138.1V133h87.3l67.4 148L289 133.1h83.2v5z"></path></svg><!-- <i class="fab fa-medium fa-fw"></i> Font Awesome fontawesome.com --></a></li>

			            </ul><!--//social-list-->
				    </div><!--//card-footer-->
			    </div><!--//card-->
		    </div><!--//col-->

		    <div class="col-12 col-md-6">
			    <div class="card border-0 shadow-lg pt-5 my-5 position-relative">
				    <div class="card-body p-4">
					    <div class="member-profile position-absolute w-100 text-center">
					        <img class="rounded-circle mx-auto d-inline-block shadow-sm" src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="">
				        </div>
					    <div class="card-text pt-1">
						    <h5 class="member-name mb-0 text-center text-primary font-weight-bold">Joe Thomas</h5>
						    <div class="mb-3 text-center">Co-founder / CTO</div>
						    <div>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Vivamus eget eros vestibulum, accumsan ante viverra, condimentum tellus. Curabitur pellentesque convallis purus non ornare. Donec bibendum sed purus dignissim rutrum. Maecenas bibendum feugiat est, et venenatis nunc.</div>
					    </div>
				    </div><!--//card-body-->
				    <div class="card-footer theme-bg-primary border-0 text-center">
					    <ul class="social-list list-inline mb-0 mx-auto">
						    <li class="list-inline-item"><a class="text-dark" href="#"><svg class="svg-inline--fa fa-linkedin-in fa-w-14 fa-fw" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="linkedin-in" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M100.28 448H7.4V148.9h92.88zM53.79 108.1C24.09 108.1 0 83.5 0 53.8a53.79 53.79 0 0 1 107.58 0c0 29.7-24.1 54.3-53.79 54.3zM447.9 448h-92.68V302.4c0-34.7-.7-79.2-48.29-79.2-48.29 0-55.69 37.7-55.69 76.7V448h-92.78V148.9h89.08v40.8h1.3c12.4-23.5 42.69-48.3 87.88-48.3 94 0 111.28 61.9 111.28 142.3V448z"></path></svg><!-- <i class="fab fa-linkedin-in fa-fw"></i> Font Awesome fontawesome.com --></a></li>
				            <li class="list-inline-item"><a class="text-dark" href="#"><svg class="svg-inline--fa fa-twitter fa-w-16 fa-fw" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="twitter" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z"></path></svg><!-- <i class="fab fa-twitter fa-fw"></i> Font Awesome fontawesome.com --></a></li>
			                <li class="list-inline-item"><a class="text-dark" href="#"><svg class="svg-inline--fa fa-github fa-w-16 fa-fw" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="github" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 496 512" data-fa-i2svg=""><path fill="currentColor" d="M165.9 397.4c0 2-2.3 3.6-5.2 3.6-3.3.3-5.6-1.3-5.6-3.6 0-2 2.3-3.6 5.2-3.6 3-.3 5.6 1.3 5.6 3.6zm-31.1-4.5c-.7 2 1.3 4.3 4.3 4.9 2.6 1 5.6 0 6.2-2s-1.3-4.3-4.3-5.2c-2.6-.7-5.5.3-6.2 2.3zm44.2-1.7c-2.9.7-4.9 2.6-4.6 4.9.3 2 2.9 3.3 5.9 2.6 2.9-.7 4.9-2.6 4.6-4.6-.3-1.9-3-3.2-5.9-2.9zM244.8 8C106.1 8 0 113.3 0 252c0 110.9 69.8 205.8 169.5 239.2 12.8 2.3 17.3-5.6 17.3-12.1 0-6.2-.3-40.4-.3-61.4 0 0-70 15-84.7-29.8 0 0-11.4-29.1-27.8-36.6 0 0-22.9-15.7 1.6-15.4 0 0 24.9 2 38.6 25.8 21.9 38.6 58.6 27.5 72.9 20.9 2.3-16 8.8-27.1 16-33.7-55.9-6.2-112.3-14.3-112.3-110.5 0-27.5 7.6-41.3 23.6-58.9-2.6-6.5-11.1-33.3 2.6-67.9 20.9-6.5 69 27 69 27 20-5.6 41.5-8.5 62.8-8.5s42.8 2.9 62.8 8.5c0 0 48.1-33.6 69-27 13.7 34.7 5.2 61.4 2.6 67.9 16 17.7 25.8 31.5 25.8 58.9 0 96.5-58.9 104.2-114.8 110.5 9.2 7.9 17 22.9 17 46.4 0 33.7-.3 75.4-.3 83.6 0 6.5 4.6 14.4 17.3 12.1C428.2 457.8 496 362.9 496 252 496 113.3 383.5 8 244.8 8zM97.2 352.9c-1.3 1-1 3.3.7 5.2 1.6 1.6 3.9 2.3 5.2 1 1.3-1 1-3.3-.7-5.2-1.6-1.6-3.9-2.3-5.2-1zm-10.8-8.1c-.7 1.3.3 2.9 2.3 3.9 1.6 1 3.6.7 4.3-.7.7-1.3-.3-2.9-2.3-3.9-2-.6-3.6-.3-4.3.7zm32.4 35.6c-1.6 1.3-1 4.3 1.3 6.2 2.3 2.3 5.2 2.6 6.5 1 1.3-1.3.7-4.3-1.3-6.2-2.2-2.3-5.2-2.6-6.5-1zm-11.4-14.7c-1.6 1-1.6 3.6 0 5.9 1.6 2.3 4.3 3.3 5.6 2.3 1.6-1.3 1.6-3.9 0-6.2-1.4-2.3-4-3.3-5.6-2z"></path></svg><!-- <i class="fab fa-github fa-fw"></i> Font Awesome fontawesome.com --></a></li>

			            </ul><!--//social-list-->
				    </div><!--//card-footer-->
			    </div><!--//card-->
		    </div><!--//col-->

		    <div class="col-12 col-md-6 col-lg-4">
			    <div class="card border-0 shadow-lg pt-5 my-5 position-relative">
				    <div class="card-body p-4">
					    <div class="member-profile position-absolute w-100 text-center">
					        <img class="rounded-circle mx-auto d-inline-block shadow-sm" src="https://bootdey.com/img/Content/avatar/avatar8.png" alt="">
				        </div>
					    <div class="card-text pt-1">
						    <h5 class="member-name mb-0 text-center text-primary font-weight-bold">Jean Torres</h5>
						    <div class="mb-3 text-center">Marketing</div>
						    <div>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Vivamus eget eros vestibulum, accumsan ante viverra, condimentum tellus. </div>
					    </div>
				    </div><!--//card-body-->
				    <div class="card-footer theme-bg-primary border-0 text-center">
					    <ul class="social-list list-inline mb-0 mx-auto">
				            <li class="list-inline-item"><a class="text-dark" href="#"><svg class="svg-inline--fa fa-twitter fa-w-16 fa-fw" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="twitter" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z"></path></svg><!-- <i class="fab fa-twitter fa-fw"></i> Font Awesome fontawesome.com --></a></li>
			                <li class="list-inline-item"><a class="text-dark" href="#"><svg class="svg-inline--fa fa-facebook-f fa-w-10 fa-fw" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="facebook-f" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg=""><path fill="currentColor" d="M279.14 288l14.22-92.66h-88.91v-60.13c0-25.35 12.42-50.06 52.24-50.06h40.42V6.26S260.43 0 225.36 0c-73.22 0-121.08 44.38-121.08 124.72v70.62H22.89V288h81.39v224h100.17V288z"></path></svg><!-- <i class="fab fa-facebook-f fa-fw"></i> Font Awesome fontawesome.com --></a></li>
			                <li class="list-inline-item"><a class="text-dark" href="#"><svg class="svg-inline--fa fa-instagram fa-w-14 fa-fw" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="instagram" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M224.1 141c-63.6 0-114.9 51.3-114.9 114.9s51.3 114.9 114.9 114.9S339 319.5 339 255.9 287.7 141 224.1 141zm0 189.6c-41.1 0-74.7-33.5-74.7-74.7s33.5-74.7 74.7-74.7 74.7 33.5 74.7 74.7-33.6 74.7-74.7 74.7zm146.4-194.3c0 14.9-12 26.8-26.8 26.8-14.9 0-26.8-12-26.8-26.8s12-26.8 26.8-26.8 26.8 12 26.8 26.8zm76.1 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM398.8 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z"></path></svg><!-- <i class="fab fa-instagram fa-fw"></i> Font Awesome fontawesome.com --></a></li>
			            </ul><!--//social-list-->
				    </div><!--//card-footer-->
			    </div><!--//card-->
		    </div><!--//col-->
		    <div class="col-12 col-md-6 col-lg-4">
			    <div class="card border-0 shadow-lg pt-5 my-5 position-relative">
				    <div class="card-body p-4">
					    <div class="member-profile position-absolute w-100 text-center">
					        <img class="rounded-circle mx-auto d-inline-block shadow-sm" src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="">
				        </div>
					    <div class="card-text pt-1">
						    <h5 class="member-name mb-0 text-center text-primary font-weight-bold">Doris Meyer</h5>
						    <div class="mb-3 text-center">Product Manager</div>
						    <div>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Vivamus eget eros vestibulum, accumsan ante viverra, condimentum tellus.</div>
					    </div>
				    </div><!--//card-body-->
				    <div class="card-footer theme-bg-primary border-0 text-center">
					    <ul class="social-list list-inline mb-0 mx-auto">
				            <li class="list-inline-item"><a class="text-dark" href="#"><svg class="svg-inline--fa fa-twitter fa-w-16 fa-fw" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="twitter" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z"></path></svg><!-- <i class="fab fa-twitter fa-fw"></i> Font Awesome fontawesome.com --></a></li>

			                <li class="list-inline-item"><a class="text-dark" href="#"><svg class="svg-inline--fa fa-instagram fa-w-14 fa-fw" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="instagram" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M224.1 141c-63.6 0-114.9 51.3-114.9 114.9s51.3 114.9 114.9 114.9S339 319.5 339 255.9 287.7 141 224.1 141zm0 189.6c-41.1 0-74.7-33.5-74.7-74.7s33.5-74.7 74.7-74.7 74.7 33.5 74.7 74.7-33.6 74.7-74.7 74.7zm146.4-194.3c0 14.9-12 26.8-26.8 26.8-14.9 0-26.8-12-26.8-26.8s12-26.8 26.8-26.8 26.8 12 26.8 26.8zm76.1 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM398.8 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z"></path></svg><!-- <i class="fab fa-instagram fa-fw"></i> Font Awesome fontawesome.com --></a></li>
			            </ul><!--//social-list-->
				    </div><!--//card-footer-->
			    </div><!--//card-->
		    </div><!--//col-->
		    <div class="col-12 col-md-6 col-lg-4">
			    <div class="card border-0 shadow-lg pt-5 my-5 position-relative">
				    <div class="card-body p-4">
					    <div class="member-profile position-absolute w-100 text-center">
					        <img class="rounded-circle mx-auto d-inline-block shadow-sm" src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="">
				        </div>
					    <div class="card-text pt-1">
						    <h5 class="member-name mb-0 text-center text-primary font-weight-bold">Ronald Reid</h5>
						    <div class="mb-3 text-center">iOS Developer</div>
						    <div>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Vivamus eget eros vestibulum, accumsan ante viverra, condimentum tellus.</div>
					    </div>
				    </div><!--//card-body-->
				    <div class="card-footer theme-bg-primary border-0 text-center">
					    <ul class="social-list list-inline mb-0 mx-auto">
				            <li class="list-inline-item"><a class="text-dark" href="#"><svg class="svg-inline--fa fa-twitter fa-w-16 fa-fw" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="twitter" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z"></path></svg><!-- <i class="fab fa-twitter fa-fw"></i> Font Awesome fontawesome.com --></a></li>
			                <li class="list-inline-item"><a class="text-dark" href="#"><svg class="svg-inline--fa fa-github fa-w-16 fa-fw" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="github" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 496 512" data-fa-i2svg=""><path fill="currentColor" d="M165.9 397.4c0 2-2.3 3.6-5.2 3.6-3.3.3-5.6-1.3-5.6-3.6 0-2 2.3-3.6 5.2-3.6 3-.3 5.6 1.3 5.6 3.6zm-31.1-4.5c-.7 2 1.3 4.3 4.3 4.9 2.6 1 5.6 0 6.2-2s-1.3-4.3-4.3-5.2c-2.6-.7-5.5.3-6.2 2.3zm44.2-1.7c-2.9.7-4.9 2.6-4.6 4.9.3 2 2.9 3.3 5.9 2.6 2.9-.7 4.9-2.6 4.6-4.6-.3-1.9-3-3.2-5.9-2.9zM244.8 8C106.1 8 0 113.3 0 252c0 110.9 69.8 205.8 169.5 239.2 12.8 2.3 17.3-5.6 17.3-12.1 0-6.2-.3-40.4-.3-61.4 0 0-70 15-84.7-29.8 0 0-11.4-29.1-27.8-36.6 0 0-22.9-15.7 1.6-15.4 0 0 24.9 2 38.6 25.8 21.9 38.6 58.6 27.5 72.9 20.9 2.3-16 8.8-27.1 16-33.7-55.9-6.2-112.3-14.3-112.3-110.5 0-27.5 7.6-41.3 23.6-58.9-2.6-6.5-11.1-33.3 2.6-67.9 20.9-6.5 69 27 69 27 20-5.6 41.5-8.5 62.8-8.5s42.8 2.9 62.8 8.5c0 0 48.1-33.6 69-27 13.7 34.7 5.2 61.4 2.6 67.9 16 17.7 25.8 31.5 25.8 58.9 0 96.5-58.9 104.2-114.8 110.5 9.2 7.9 17 22.9 17 46.4 0 33.7-.3 75.4-.3 83.6 0 6.5 4.6 14.4 17.3 12.1C428.2 457.8 496 362.9 496 252 496 113.3 383.5 8 244.8 8zM97.2 352.9c-1.3 1-1 3.3.7 5.2 1.6 1.6 3.9 2.3 5.2 1 1.3-1 1-3.3-.7-5.2-1.6-1.6-3.9-2.3-5.2-1zm-10.8-8.1c-.7 1.3.3 2.9 2.3 3.9 1.6 1 3.6.7 4.3-.7.7-1.3-.3-2.9-2.3-3.9-2-.6-3.6-.3-4.3.7zm32.4 35.6c-1.6 1.3-1 4.3 1.3 6.2 2.3 2.3 5.2 2.6 6.5 1 1.3-1.3.7-4.3-1.3-6.2-2.2-2.3-5.2-2.6-6.5-1zm-11.4-14.7c-1.6 1-1.6 3.6 0 5.9 1.6 2.3 4.3 3.3 5.6 2.3 1.6-1.3 1.6-3.9 0-6.2-1.4-2.3-4-3.3-5.6-2z"></path></svg><!-- <i class="fab fa-github fa-fw"></i> Font Awesome fontawesome.com --></a></li>
			                <li class="list-inline-item"><a class="text-dark" href="#"><svg class="svg-inline--fa fa-instagram fa-w-14 fa-fw" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="instagram" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M224.1 141c-63.6 0-114.9 51.3-114.9 114.9s51.3 114.9 114.9 114.9S339 319.5 339 255.9 287.7 141 224.1 141zm0 189.6c-41.1 0-74.7-33.5-74.7-74.7s33.5-74.7 74.7-74.7 74.7 33.5 74.7 74.7-33.6 74.7-74.7 74.7zm146.4-194.3c0 14.9-12 26.8-26.8 26.8-14.9 0-26.8-12-26.8-26.8s12-26.8 26.8-26.8 26.8 12 26.8 26.8zm76.1 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM398.8 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z"></path></svg><!-- <i class="fab fa-instagram fa-fw"></i> Font Awesome fontawesome.com --></a></li>
			            </ul><!--//social-list-->
				    </div><!--//card-footer-->
			    </div><!--//card-->
		    </div><!--//col-->
	    </div><!--//row-->

    </div>

</section>', 'body{margin-top:20px;}
.py-5 {
    padding-top: 3rem !important;
    padding-bottom: 3rem !important;
}
.pt-5 {
    padding-top: 3rem !important;
}
.my-5 {
    margin-top: 3rem !important;
    margin-bottom: 3rem !important;
}
.border-0 {
    border: 0 !important;
}
.position-relative {
    position: relative !important;
}
.shadow-lg {
    box-shadow: 0 1rem 3rem rgb(0 0 0 / 18%) !important;
}
.card {
    position: relative;
    display: -webkit-flex;
    display: flex;
    -webkit-flex-direction: column;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid rgba(0,0,0,0.125);
    border-radius: .25rem;
}

.member-profile {
    top: -50px;
    left: 0;
}
.text-center {
    text-align: center !important;
}
.w-100 {
    width: 100% !important;
}
.position-absolute {
    position: absolute !important;
}

.member-profile img {
    width: 100px;
    height: 100px;
}
.rounded-circle {
    border-radius: 50% !important;
}
.mx-auto {
    margin-right: auto !important;
    margin-left: auto !important;
}
.shadow-sm {
    box-shadow: 0 0.125rem 0.25rem rgb(0 0 0 / 8%) !important;
}', '', '2022-05-11', 'Bootstrap team member cards', 'Team Member Cards', 'https://cdn.filestackcontent.com/VxiigfWRl6RxfR59JXS2', 2),

    ('<div id=''shake_weight''>
  <div class=''end left''></div>
  <div class=''end right''></div>
  <div class=''spring spring_width_left''></div>
  <div class=''spring spring_width_right''></div>
  <div class=''shaft''>shake me</div>
</div>', 'body {
  min-height: 100vh;
  display: grid;
  place-items: center;
  overflow: hidden;
  background:
    linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
  background-size: 400% 400%;
  background-position: 0 50%;
	animation: gradient 15s ease infinite;
	cursor: grab;
}

@keyframes gradient {
	50% {
		background-position: 100% 50%;
	}
}

#shake_weight {
  width: clamp(300px, 50%, 600px);
  aspect-ratio: 4 / 1;
  position: relative;
  perspective: 600px;
}
#shake_weight * {
  transition: .05s;
  user-select: none;
}

.end {
  width: 20%;
  height: 130%;
  position: absolute;
  left: -12.5%;
  top: -15%;
  border-radius: 20%;
}
.end.right {
  left: 92%;
  transform: scaleX(-1);
}
.end:before {
  content:'''';
  width: 110%;
  height: 150%;
  background:
    linear-gradient(to bottom, rgba(0,0,0,.15) 0% 5%, transparent 15% 45%, rgba(0,0,0,.15) 55% 85%, transparent 95%),
    silver;
  position: absolute;
  left: -100%;
  top: -25%;
  border-radius: 35% 0 0 35%;
  z-index: -1;
}
.end:after {
  content:'''';
  width: 50%;
  height: 150%;
  background:
    radial-gradient(at 60% 50%, #000 55%, transparent 60%),
    lightgray;
  position: absolute;
  left: -15%;
  top: -25%;
  border-radius: 50%;
  transform: rotateY(-10deg);
  z-index: -1;
}

.spring {
  width: 20%;
  height: 130%;
  background:
    radial-gradient(20% 100% at 15% 50%, black 50%, transparent 52%),
    radial-gradient(25% 100% at 32.5% 50%, black 50%, transparent 52%),
    radial-gradient(20% 100% at 50% 50%, black 50%, transparent 52%),
    radial-gradient(25% 100% at 68.5% 50%, black 50%, transparent 52%),
    radial-gradient(20% 100% at 85% 50%, black 50%, transparent 52%);
  position: absolute;
  top: -15%;
  border-radius: 20%;
}
.spring_width_left {
  left: -12.5%;
  transform-origin: 100% 50%;
}
.spring_width_right {
  left: 92%;
  transform-origin: 0% 50%;
}

.shaft {
  width: 100%;
  height: 100%;
  background:
    radial-gradient(50% 20% at 50% 50%, lightgray, transparent),
    radial-gradient(50% 30% at 50% 60%, white, transparent),
    radial-gradient(50% 30% at 50% 40%, gray, transparent),
    radial-gradient(20% 100% at 4.5% 50%, lightgray 50%, transparent 50%),
    radial-gradient(20% 100% at 96.5% 50%, lightgray 50%, transparent 50%),
    radial-gradient(75% 50% at 50% 50%, lightgray 74%, transparent 75%);
  position: absolute;
  left: 0;
  top: 0;
  border-radius: 5% / 50%;
  display: grid;
  place-items: center;
  font-family: system-ui;
  color: gray;
}', 'const sw = document.querySelector(''#shake_weight'')
const el = document.querySelector(''.left'')
const er = document.querySelector(''.right'')
const spl = document.querySelector(''.spring_width_left'')
const spr = document.querySelector(''.spring_width_right'')

window.addEventListener(''mousemove'', function(e){
  var x = e.clientX,
      halfW = window.innerWidth*.5,
      rx = x < halfW ? -(1-(x/halfW)) : (1-(halfW/x))*2,
      spring_width_left = 1,
      spring_width_right = 1;

  sw.style.transform = ''translateX(''+rx*100+''px)''
  el.style.transform = ''translateX(''+rx*50+''px)''
  er.style.transform = ''translateX(''+rx*50+''px) scaleX(-1)''

  if(x > halfW) {
    spring_width_left = 1 - rx
    spring_width_right = 1 + Math.abs(rx)
    if(spring_width_left < .5) {
      spring_width_left = .5
    }
    if(spring_width_right > 1.25) {
      spring_width_right = 1.25
    }
  } else {
    spring_width_left = 1 + Math.abs(rx)
    spring_width_right = 1 + rx
    if(spring_width_left > 1.25) {
      spring_width_left = 1.25
    }
    if(spring_width_right < .5) {
      spring_width_right = .5
    }
  }

  spl.style.transform = ''scaleX(''+spring_width_left+'')''
  spr.style.transform = ''scaleX(''+spring_width_right+'')''
})', '2022-05-11', 'Shake Weight CSS', 'Shake Weight', '', 3),

    ('<div class="gallery-container">
  <div class="thumbnails"></div>
  <div class="slides">
    <div><img src="https://picsum.photos/id/1067/540/720"></div>
    <div><img src="https://picsum.photos/id/122/540/720"></div>
    <div><img src="https://picsum.photos/id/188/540/720"></div>
    <div><img src="https://picsum.photos/id/249/540/720"></div>
    <div><img src="https://picsum.photos/id/257/540/720"></div>
    <div><img src="https://picsum.photos/id/259/540/720"></div>
    <div><img src="https://picsum.photos/id/283/540/720"></div>
    <div><img src="https://picsum.photos/id/288/540/720"></div>
    <div><img src="https://picsum.photos/id/299/540/720"></div>
  </div>
</div>', '.gallery-container {
  position: relative;
  display: flex;
  justify-content: center;
}

.thumbnails {
  position: absolute;
  bottom: 8px;
  display: flex;
  flex-direction: row;
  gap: 6px;
}

.thumbnails div {
  width: 8px;
  height: 8px;
  cursor: pointer;
  background: #aaa;
  border-radius: 100%;
}

.thumbnails div.highlighted {
  background-color: #777;
}

.slides {
  margin: 0 16px;
  display: grid;
  grid-auto-flow: column;
  gap: 1rem;
  width: 540px;
  padding: 0 0.25rem;
  height: 720px;
  overflow-y: auto;
  overscroll-behavior-x: contain;
  scroll-snap-type: x mandatory;
  scrollbar-width: none;
}

.slides > div {
  scroll-snap-align: start;
}

.slides img {
  width: 540px;
  object-fit: contain;
}

.slides::-webkit-scrollbar {
  display: none;
}', 'const slideGallery = document.querySelector(''.slides'');
const slides = slideGallery.querySelectorAll(''div'');
const thumbnailContainer = document.querySelector(''.thumbnails'');
const slideCount = slides.length;
const slideWidth = 540;

const highlightThumbnail = () => {
  thumbnailContainer
    .querySelectorAll(''div.highlighted'')
    .forEach(el => el.classList.remove(''highlighted''));
  const index = Math.floor(slideGallery.scrollLeft / slideWidth);
  thumbnailContainer
    .querySelector(`div[data-id="${index}"]`)
    .classList.add(''highlighted'');
};

const scrollToElement = el => {
  const index = parseInt(el.dataset.id, 10);
  slideGallery.scrollTo(index * slideWidth, 0);
};

thumbnailContainer.innerHTML += [...slides]
  .map((slide, i) => `<div data-id="${i}"></div>`)
  .join('''');

thumbnailContainer.querySelectorAll(''div'').forEach(el => {
  el.addEventListener(''click'', () => scrollToElement(el));
});

slideGallery.addEventListener(''scroll'', e => highlightThumbnail());

highlightThumbnail();', '2022-05-11', 'Horizontal scrolling image gallery', 'Horizontal Scroll Gallery', 'https://cdn.filestackcontent.com/ANNlFfEESsyoMRUnHCUc', 4),
       ('<main id=app>


  <h1>Pokemon Card, Holo Effect</h1>

  <section class="cards">
    <div class="card charizard animated"></div>
    <div class="card pika animated"></div>
    <div class="card eevee animated"></div>
    <div class="card mewtwo animated"></div>
  </section>






  <style class="hover"></style>

  <section class="demo">
    <div class="card"></div>
    <span class="operator">+</span>
    <div class="card"><span>color-dodge</span></div>
    <span class="operator">+</span>
    <div class="card"><span>color-dodge</span></div>
  </section>

</main>', ':root {
  --color1: rgb(0, 231, 255);
  --color2: rgb(255, 0, 231);
  --back: url(https://cdn2.bulbagarden.net/upload/1/17/Cardback.jpg);
  --charizard1: #fac;
  --charizard2: #ddccaa;
  --charizardfront: url(https://assets.codepen.io/13471/charizard-gx.webp);
  --pika1: #54a29e;
  --pika2: #a79d66;
  --pikafront: url(https://assets.codepen.io/13471/pikachu-gx.webp);
  --eevee1: #efb2fb;
  --eevee2: #acc6f8;
  --eeveefront: url(https://assets.codepen.io/13471/eevee-gx.webp);
  --mewtwo1: #efb2fb;
  --mewtwo2: #acc6f8;
  --mewtwofront: url(https://assets.codepen.io/13471/mewtwo-gx.webp);
}



.card {

  width: 71.5vw;
  height: 100vw;
    // width: clamp(200px, 61vh, 18vw);
    // height: clamp(280px, 85vh, 25.2vw);
  @media screen and (min-width: 600px) {
    // width: 61vh;
    // height: 85vh;
    // max-width: 500px;
    // max-height: 700px;
    width: clamp(12.9vw, 61vh, 18vw);
    height: clamp(18vw, 85vh, 25.2vw);
  }

  position: relative;
  overflow: hidden;
  margin: 20px;
  overflow: hidden;
  z-index: 10;
  touch-action: none;

  border-radius: 5% / 3.5%;
  box-shadow:
    -5px -5px 5px -5px var(--color1),
    5px 5px 5px -5px var(--color2),
    -7px -7px 10px -5px transparent,
    7px 7px 10px -5px transparent,
    0 0 5px 0px rgba(255,255,255,0),
    0 55px 35px -20px rgba(0, 0, 0, 0.5);

  transition: transform 0.5s ease, box-shadow 0.2s ease;
  will-change: transform, filter;

  background-color: #040712;
  background-image: var(--front);
  background-size: cover;
  background-repeat: no-repeat;
  background-position: 50% 50%;
  transform-origin: center;

}

.card:hover {
  box-shadow:
    -20px -20px 30px -25px var(--color1),
    20px 20px 30px -25px var(--color2),
    -7px -7px 10px -5px var(--color1),
    7px 7px 10px -5px var(--color2),
    0 0 13px 4px rgba(255,255,255,0.3),
    0 55px 35px -20px rgba(0, 0, 0, 0.5);
}

.card.charizard {
  --color1: var(--charizard1);
  --color2: var(--charizard2);
  --front: var(--charizardfront);
}
.card.pika {
  --color1: var(--pika1);
  --color2: var(--pika2);
  --front: var(--pikafront);
}
.card.mewtwo {
  --color1: var(--mewtwo1);
  --color2: var(--mewtwo2);
  --front: var(--mewtwofront);
}
.card.eevee {
  --color1: #ec9bb6;
  --color2: #ccac6f;
  --color3: #69e4a5;
  --color4: #8ec5d6;
  --color5: #b98cce;
  --front: var(--eeveefront);
}

.card:before,
.card:after {
  content: "";
  position: absolute;
  left: 0;
  right: 0;
  bottom: 0;
  top: 0;
  background-repeat: no-repeat;
  opacity: .5;
  mix-blend-mode: color-dodge;
  transition: all .33s ease;
}

.card:before {
  background-position: 50% 50%;
  background-size: 300% 300%;
  background-image: linear-gradient(
    115deg,
    transparent 0%,
    var(--color1) 25%,
    transparent 47%,
    transparent 53%,
    var(--color2) 75%,
    transparent 100%
  );
  opacity: .5;
  filter: brightness(.5) contrast(1);
  z-index: 1;
}

.card:after {
  opacity: 1;
  background-image: url("https://assets.codepen.io/13471/sparkles.gif"),
    url(https://assets.codepen.io/13471/holo.png),
    linear-gradient(125deg, #ff008450 15%, #fca40040 30%, #ffff0030 40%, #00ff8a20 60%, #00cfff40 70%, #cc4cfa50 85%);
  background-position: 50% 50%;
  background-size: 160%;
  background-blend-mode: overlay;
  z-index: 2;
  filter: brightness(1) contrast(1);
  transition: all .33s ease;
  mix-blend-mode: color-dodge;
  opacity: .75;
}

.card.active:after,
.card:hover:after {
  filter: brightness(1) contrast(1);;
  opacity: 1;
}

.card.active,
.card:hover {
  animation: none;
  transition: box-shadow 0.1s ease-out;
}

.card.active:before,
.card:hover:before {
  animation: none;
  background-image: linear-gradient(
    110deg,
    transparent 25%,
    var(--color1) 48%,
    var(--color2) 52%,
    transparent 75%
  );
  background-position: 50% 50%;
  background-size: 250% 250%;
  opacity: .88;
  filter: brightness(.66) contrast(1.33);
  transition: none;
}

.card.active:before,
.card:hover:before,
.card.active:after,
.card:hover:after {
  animation: none;
  transition: none;
}

.card.animated {
  transition: none;
  animation: holoCard 12s ease 0s 1;
  &:before {
    transition: none;
    animation: holoGradient 12s ease 0s 1;
  }
  &:after {
    transition: none;
    animation: holoSparkle 12s ease 0s 1;
  }
}




@keyframes holoSparkle {
  0%, 100% {
    opacity: .75; background-position: 50% 50%; filter: brightness(1.2) contrast(1.25);
  }
  5%, 8% {
    opacity: 1; background-position: 40% 40%; filter: brightness(.8) contrast(1.2);
  }
  13%, 16% {
    opacity: .5; background-position: 50% 50%; filter: brightness(1.2) contrast(.8);
  }
  35%, 38% {
    opacity: 1; background-position: 60% 60%; filter: brightness(1) contrast(1);
  }
  55% {
    opacity: .33; background-position: 45% 45%; filter: brightness(1.2) contrast(1.25);
  }
}

@keyframes holoGradient {
  0%, 100% {
    opacity: 0.5;
    background-position: 50% 50%;
    filter: brightness(.5) contrast(1);
  }
  5%, 9% {
    background-position: 100% 100%;
    opacity: 1;
    filter: brightness(.75) contrast(1.25);
  }
  13%, 17% {
    background-position: 0% 0%;
    opacity: .88;
  }
  35%, 39% {
    background-position: 100% 100%;
    opacity: 1;
    filter: brightness(.5) contrast(1);
  }
  55% {
    background-position: 0% 0%;
    opacity: 1;
    filter: brightness(.75) contrast(1.25);
  }
}

@keyframes holoCard {
  0%, 100% {
    transform: rotateZ(0deg) rotateX(0deg) rotateY(0deg);
  }
  5%, 8% {
    transform: rotateZ(0deg) rotateX(6deg) rotateY(-20deg);
  }
  13%, 16% {
    transform: rotateZ(0deg) rotateX(-9deg) rotateY(32deg);
  }
  35%, 38% {
    transform: rotateZ(3deg) rotateX(12deg) rotateY(20deg);
  }
  55% {
    transform: rotateZ(-3deg) rotateX(-12deg) rotateY(-27deg);
  }
}



.card.eevee:hover {
  box-shadow:
    0 0 30px -5px white,
    0 0 10px -2px white,
    0 55px 35px -20px rgba(0, 0, 0, 0.5);
}
.card.eevee:hover:before,
.card.eevee.active:before {
  background-image: linear-gradient(
    115deg,
    transparent 20%,
    var(--color1) 36%,
    var(--color2) 43%,
    var(--color3) 50%,
    var(--color4) 57%,
    var(--color5) 64%,
    transparent 80%
  );
}




.demo .card {
  background-image: var(--back);
  font-size: 2vh
}
.demo .card > span {
  position: relative;
  top: 45%;
}

.demo .card:nth-of-type(1),
.demo .card:nth-of-type(2),
.demo .card:nth-of-type(3) {
  width: 20vh;
  height: 27.5vh;
  box-shadow: inset 0 0 0 1px rgba(white,0.4), 0 25px 15px -10px rgba(0, 0, 0, 0.5);
  animation: none;
}

.demo .card:nth-of-type(1),
.demo .card:nth-of-type(2),
.demo .card:nth-of-type(3) {
  &:before, &:after {
    animation: none;
    // opacity: 1;
  }
}
.demo .card:nth-of-type(1) {
  &:before, &:after { display: none; }
}
.demo .card:nth-of-type(2) {
  background: none;
  &:before { display: none; }
}
.demo .card:nth-of-type(3) {
  background: none;
  &:after { display: none; }
}

.operator {
  display: inline-block;
  vertical-align: middle;
  font-size: 6vh;
}






html, body {
  height: 100%;
  background-color: #333844;
  padding: 0;
  z-index: 1;
  transform: translate3d(0,0,0.1px);
}
body {
  color: white;
  background-color: #333844;
  font-family: "Heebo", sans-serif;
  text-align: center;
}
h1 {
  display: block;
  margin: 30px 0;
}
p {
  margin-top: 5px;
  font-weight: 200;
}
#app {
  position: relative;
}

.demo,
.cards {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-evenly;
  perspective: 2000px;
  position: relative;
  z-index: 1;
  transform: translate3d(0.1px, 0.1px, 0.1px )
}
.demo {
  flex-direction: row;
  justify-content: center;
}

@media screen and (min-width: 600px) {
  .cards {
    flex-direction: row;
  }
}






.cards .card {
  &:nth-child(2) {
    &, &:before, &:after {
      animation-delay: 0.25s;
    }
  }
  &:nth-child(3) {
    &, &:before, &:after {
      animation-delay: 0.5s;
    }
  }
  &:nth-child(4) {
    &, &:before, &:after {
      animation-delay: 0.75s;
    }
  }
}', '/*

  using
    - an animated gif of sparkles.
    - an animated gradient as a holo effect.
    - color-dodge mix blend mode

*/
var x;
var $cards = $(".card");
var $style = $(".hover");

$cards
  .on("mousemove touchmove", function(e) {
    // normalise touch/mouse
    var pos = [e.offsetX,e.offsetY];
    e.preventDefault();
    if ( e.type === "touchmove" ) {
      pos = [ e.touches[0].clientX, e.touches[0].clientY ];
    }
    var $card = $(this);
    // math for mouse position
    var l = pos[0];
    var t = pos[1];
    var h = $card.height();
    var w = $card.width();
    var px = Math.abs(Math.floor(100 / w * l)-100);
    var py = Math.abs(Math.floor(100 / h * t)-100);
    var pa = (50-px)+(50-py);
    // math for gradient / background positions
    var lp = (50+(px - 50)/1.5);
    var tp = (50+(py - 50)/1.5);
    var px_spark = (50+(px - 50)/7);
    var py_spark = (50+(py - 50)/7);
    var p_opc = 20+(Math.abs(pa)*1.5);
    var ty = ((tp - 50)/2) * -1;
    var tx = ((lp - 50)/1.5) * .5;
    // css to apply for active card
    var grad_pos = `background-position: ${lp}% ${tp}%;`
    var sprk_pos = `background-position: ${px_spark}% ${py_spark}%;`
    var opc = `opacity: ${p_opc/100};`
    var tf = `transform: rotateX(${ty}deg) rotateY(${tx}deg)`
    // need to use a <style> tag for psuedo elements
    var style = `
      .card:hover:before { ${grad_pos} }  /* gradient */
      .card:hover:after { ${sprk_pos} ${opc} }   /* sparkles */
    `
    // set / apply css class and style
    $cards.removeClass("active");
    $card.removeClass("animated");
    $card.attr( "style", tf );
    $style.html(style);
    if ( e.type === "touchmove" ) {
      return false;
    }
    clearTimeout(x);
  }).on("mouseout touchend touchcancel", function() {
    // remove css, apply custom animation on end
    var $card = $(this);
    $style.html("");
    $card.removeAttr("style");
    x = setTimeout(function() {
      $card.addClass("animated");
    },2500);
  });', '2022-05-14', 'Pokemon cards with effects', 'Pokemon Cards Holo', '', 2);




INSERT INTO categories (category)
VALUES ('Java'),
('JavaScript'),
('HTML'),
('CSS');

/* running tests for categories */
INSERT INTO post_categories (post_id, category_id)
VALUES (1, 1),
(2, 3),
(3, 4),
(4, 3),
(5, 1);



INSERT INTO post_stats (down_votes_count, up_votes_count, post_post_id )
VALUES (0,0,1),
(0,0,2),
(0,0,3),
(0,0,4),
(0,0,5);
