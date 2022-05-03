INSERT INTO posts (content, date_published, description, title)
VALUES ('content', '2022-05-26', 'ssome desc', 'title'),
        ('<!doctype html>
          <html lang="en">
          <head>
              <meta charset="UTF-8">
              <meta name="viewport"
                    content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
              <meta http-equiv="X-UA-Compatible" content="ie=edge">
              <link rel="stylesheet" href="./Hero-1.css">
              <title>Document</title>
          </head>
          <body>
          <!--This creates a hero section-->

          <div class="hero_container ">
              <h2 class="text_center">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure, quasi.</h2>
              <div class="hero_row">
                  <div class="hero_col">
                      <h3>Title</h3>
                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A asperiores et exercitationem explicabo
                          incidunt itaque modi omnis quo ullam voluptatibus.</p>
                  </div>
                  <div class="hero_col">
                      <h3>Title 2</h3>
                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate error est laboriosam placeat quae,
                          quaerat.</p>
                  </div>
              </div>
          </div>
          </body>
          </html>', '2022-05-03', 'Some HTML for a hero with custom css', 'Hero.html'),
          ('
.hero_container {
    width: inherit;
    padding: 25vh;
}

/*flex*/
.hero_col {
    display: flex;
    flex-direction: column;
    justify-content: center;
    padding: 10vh 15vh;
    margin: 5vh;
    height: inherit;
}

.hero_row {
    display: flex;
    justify-content: space-evenly;
    align-items: baseline;
    width: inherit;
}

/*Text Css*/
.text_center {
    text-align: center;
}

@media screen and (max-width: 425px) {
    * {
        text-align: center;
    }

    .hero_row {
        flex-direction: column;
    }

    .hero_col {
        padding: 5vh;
    }

    .hero_container {
        padding: 5vh;
    }
}', '2022-05-03', 'CSS for the Hero file I made', 'Hero.css'),
('<!DOCTYPE html>
  <html lang="en">
  <head>
      <meta charset="UTF-8">
      <link rel="stylesheet" href="./Footer-1.css">
      <title>Footer</title>
  </head>
  <body>
  <footer>
      <div class="footer_container">
          <!--First Section of footer here-->
          <div class="footer_section">
              <div class="footer_section_col">

                  <div class="footer_items">
                      <h4>Follow Me!</h4>
                  </div>

                  <div class="footer_items">
                      <a href="#">Github</a>
                      <a href="#">Instagram</a>
                      <a href="#">LinkedIn</a>
                      <a href="#">Twitter</a>
                  </div>

              </div>

              <div class="footer_section_col">
                  <div class="footer_items">
                      <h4>Contact Me</h4>
                      <form action="">
                          <input type="text" name="fname" id="fname" placeholder="First Name">
                          <br>
                          <input type="text" name="lname" id="lname" placeholder="Last Name">
                          <br>
                          <input type="email" name="Email" id="Email" placeholder="Enter.Email@example.com">
                          <br>
                          <input type="tel" name="phone" id="phone" placeholder="(000) 000-0000">
                          <br>
                          <textarea name="message" id="message" cols="30" rows="10">Mario, youre pretty cool and We would love to hire you. Please contact me as soon as possible!
                              </textarea>
                          <br>

                          <button type="submit">Send Message</button>

                      </form>
                  </div>
              </div>
          </div>
          <br>
          <hr style="width: 80%; margin: auto;">
          <br>

          <div class="footer_section">
              <div class="footer_section_col">
                  <div class="footer_items"><a href="#">link</a></div>
                  <div class="footer_items"><a href="#">link</a></div>
                  <div class="footer_items"><a href="#">link</a></div>
              </div>
              <div class="footer_section_col">
                  <div class="footer_items"><a href="#">link</a></div>
                  <div class="footer_items"><a href="#">link</a></div>
                  <div class="footer_items"><a href="#">link</a></div>
              </div>
              <div class="footer_section_col">
                  <div class="footer_items"><a href="#">link</a></div>
                  <div class="footer_items"><a href="#">link</a></div>
                  <div class="footer_items"><a href="#">link</a></div>
              </div>
          </div>
      </div>
  </footer>

  </body>
  </html>', '2022-05-06', 'some footer I made last night', 'Footer.html'),
  (':root {
        --buttonColor: #DA4167;
        --buttonHover: #93B5C6;
        --dark-bg: #22223B;
        --headers: #80FFE8;
        --footer-bg: #ADACB5;
    }

    /*Footer section*/

    footer {
        width: 100%;
        background-color: var(--footer-bg);
        color: black;
        position: relative;
    }


    /*form section*/

    form input , form textarea {
        width: 100%;
        border-radius: 5px;
        margin: 5px 0;
        font-size: 15px;
        padding: 5px;
    }


    form button {
        padding: 5px;
        text-align: center;
        font-size: 15px;
        cursor: pointer;
        background-color: var(--buttonColor);
        color: white;
        border-radius: 5px;
        border: solid 1px var(--dark-bg);
        transition: 250ms;

    }
    form button:hover {
        font-size: 20px;
        background-color: var(--buttonHover);
        transition: 250ms;
    }

    footer h4 {
        font-size: 25px;
        color: var(--headers);
    }

    /*footer continued...*/

    .footer_section {
        display: flex;
        justify-content: space-between;

    }

    .footer_section_col {
        margin: auto;
    }

    .footer_items {
        display: flex;
        flex-direction: column;
        justify-content: space-evenly;
        margin: 25px 0;
    }

    footer a {
        color: var(--dark-bg);
        transition: 150ms;
        text-decoration: none;
        font-size: 20px;
    }

    footer a:hover {
        color: var(--headers);
        transition: 250ms;
        font-size: 25px;
    }', '2022-05-06', 'CSS file for the footer I uploaded', 'Footer.css');


INSERT INTO categories (category)
VALUES ('Java'),
('JavaScript'),
('HTML'),
('CSS');

/* running tests for categories */
INSERT INTO post_categories (post_id, category_id)
VALUES (2, 3),
(3, 4),
(4, 3),
(5, 4);