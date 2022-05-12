INSERT INTO users (first_name, last_name, user_name, password, email)
VALUES
('Fred', 'Fredowski', 'fred', '$2a$10$WkPiJnOCCF8MWuEEbjrFk.en0tY.iAZxJxA7zqSO5/bZMwOyBm11e', 'fred@fred.com'),
('Andrew', 'Lange', 'andrew', '$2a$10$Y1MAuX.1FY.Nw.Dzo8i/3uQtik/iXorFnp0.3SX6Djb5UV81C/VlG', 'andrew@andrew.com'),
('Mario', 'Granados', 'mario', '$2a$10$cQJeEt4wR6HdAjETtcXGj.olyCfPi6JZao3sGXPdBc38oN3K1mnPC', 'mario@mario.com'),
('Angel', 'Santana', 'angel', '$2a$10$3PM249xAfQW3Vt6Hvs5FdORywDFDjpHsQmuGiDbRPfvboDbsz8fnS', 'angel@angel.com'),
('Danny', 'Turner', 'danny', '$2a$10$lc3Tq1jgPW4FcXi0JfjdL.nZ/6vj94DmnUL1ZYXYLGa2anBOi4txe', 'danny@danny.com');

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

    ('<section class="p-0 bg-img cover-background" style="background-image: url(https://bootdey.com/img/Content/bg1.jpg);">
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

highlightThumbnail();', '2022-05-11', 'Horizontal scrolling image gallery', 'Horizontal Scroll Gallery', 'https://cdn.filestackcontent.com/ANNlFfEESsyoMRUnHCUc', 4);



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
(4, 3);



INSERT INTO post_stats (down_votes_count, up_votes_count, post_post_id )
VALUES (0,0,1),
(0,0,2),
(0,0,3),
(0,0,4);
