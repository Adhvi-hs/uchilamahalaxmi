<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="Temple.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- ======= Hero Section ======= -->
<section id="hero" class="d-flex align-items-center">

    <div class="container">
        <div class="row gy-4">
            <div class="col-lg-6 order-2 order-lg-1 d-flex flex-column justify-content-center">
                <h1>Step into serenity at Uchila Mahalaxmi Temple</h1>
                <h2>A temple is a place of contemplation and self reflection where you find yourself</h2>
                <div>
                    <a href="userlogin.aspx" class="btn-get-started scrollto">Get Started</a>
                </div>
            </div>
            <div class="col-lg-6 order-1 order-lg-2 hero-img">
                <img src="assets/img/portfolio/temp2.jpg"  class="img-fluid animated" alt="" >
                <%--<img src="~/assets/img/portfolio/temp2.jpg" class="img-fluid animated" alt="">--%> 
            </div>
        </div>
    </div>

</section><!-- End Hero -->

<main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
        <div class="container">

            <div class="row justify-content-between">
                <div class="col-lg-5 d-flex align-items-center justify-content-center about-img">
                    <img src="assets/img/portfolio/t444.jpg"  class="img-fluid" alt="" data-aos="zoom-in">
                </div>
                <div class="col-lg-6 pt-5 pt-lg-0">
                    <h3 data-aos="fade-up">About Us</h3>
                    <p data-aos="fade-up" data-aos-delay="100">
                        It is established by Mogaveera community Kula Guru Sri Madhava Mangala on the land donated by Sadiya Sahukar, has undergone a massive transformation at an estimated cost of Rs 32 crore. The sanctum sanctorum and abodes of Bhadrakali, Prasanna Ganapathi and Naga have been built using granite while other structures including outer walls, Guru Peeta, Raja Gopura, Yaga Shaale, Vasantha Mantapa, Ratha Beedi, open-air theatre, underground drainage and interlocked floor etc too have come up during the renovation.
                    </p>
                    <div class="row">
                        <div class="col-md-6" data-aos="fade-up" data-aos-delay="100">
                            <h4>Deities</h4>
                            <p>Mahalaxmi, Bhadrakali, Prasanna Ganapathi and Naga</p>
                        </div>
                        <div class="col-md-6" data-aos="fade-up" data-aos-delay="200">
                            <h4>History</h4>
                            <p>It was built in 1957 by Kula Guru Sri Madhava Mangala </p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section><!-- End About Section -->
    <!-- ======= Services Section ======= -->
    <section id="services" class="services section-bg">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>Services</h2>
                <p>Check out the great services offered by the website</p>
            </div>

            <div class="row">
                <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
                    <div class="icon-box">
                        <div class="icon"><i class="bx bxl-dribbble"></i></div>
                        <h4 class="title"><a href="userlogin.aspx" >Seva Booking</a></h4>
                        <p class="description">Book your seva and pay online.</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="200">
                    <div class="icon-box">
                        <div class="icon"><i class="bx bx-file"></i></div>
                        <h4 class="title"><a href="userlogin.aspx" >Darshana Booking</a></h4>
                        <p class="description">Book special darshana to avoid standing in line for hours.</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="300">
                    <div class="icon-box">
                        <div class="icon"><i class="bx bx-tachometer"></i></div>
                        <h4 class="title"><a href="userlogin.aspx" >Donation</a></h4>
                        <p class="description">Donate for the development of the temple.</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="400">
                    <div class="icon-box">
                        <div class="icon"><i class="bx bx-world"></i></div>
                        <h4 class="title"><a href="userlogin.aspx" >Feedback</a></h4>
                        <p class="description">Provide your valuable reviews about the services offered by the temple.</p>
                    </div>
                </div>

            </div>

        </div>
    </section><!-- End Services Section -->
    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>Gallery</h2>
                <p>Check out our beautifull Gallery</p>
            </div>

            <div class="row" data-aos="fade-up" data-aos-delay="100">
                <div class="col-lg-12">
                    <ul id="portfolio-flters">
                        <li data-filter="*" class="filter-active">All</li>
                        <li data-filter=".filter-app">Architecture</li>
                        <li data-filter=".filter-card">Festival</li>
                        <li data-filter=".filter-web">Exterior</li>
                    </ul>
                </div>
            </div>

            <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">

                <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                    <div class="portfolio-wrap">
                        <img src="assets/img/portfolio/arch1 (1).JPG" class="img-fluid" alt="">
                        <div class="portfolio-links">
                            <a href="assets/img/portfolio/arch1 (1).JPG" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Architecture 1"><i class="bi bi-plus"></i></a>
                          
                        </div>
                        <div class="portfolio-info">
                            <p>Architecture</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                    <div class="portfolio-wrap">
                        <img src="assets/img/portfolio/ext1.jpg" class="img-fluid" alt="">
                   
                        <div class="portfolio-links">
                            <a href="assets/img/portfolio/ext1.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Exterior 1"><i class="bi bi-plus"></i></a>
                           
                        </div>
                        <div class="portfolio-info">
                         
                            <p>Exterior</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                    <div class="portfolio-wrap">
                        <img src="assets/img/portfolio/arch1 (2).jpg" class="img-fluid" alt="">
                   
                        <div class="portfolio-links">
                            <a href="assets/img/portfolio/arch1 (2).jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Architecture 2"><i class="bi bi-plus"></i></a>
                           
                        </div>
                        <div class="portfolio-info">
                         
                            <p>Architecture</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                    <div class="portfolio-wrap">
                        <img src="assets/img/portfolio/t1.jpeg" class="img-fluid" alt="">
                        <div class="portfolio-links">
                            <a href="assets/img/portfolio/t1.jpeg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Exterior 3"><i class="bi bi-plus"></i></a>
                           
                        </div>
                        <div class="portfolio-info">
                            
                            <p>Exterior</p>
                        </div>
                    </div>
                </div>


                <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                    <div class="portfolio-wrap">
                        <img src="assets/img/portfolio/ext3.jpg" class="img-fluid" alt="">
                     
                        <div class="portfolio-links">
                            <a href="assets/img/portfolio/ext3.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Exterior 2"><i class="bi bi-plus"></i></a>
                           
                        </div>
                        <div class="portfolio-info">
                           
                            <p>Exterior</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                    <div class="portfolio-wrap">
                        <img src="assets/img/portfolio/temp2.jpg" class="img-fluid" alt="">
                        <div class="portfolio-links">
                            <a href="assets/img/portfolio/temp2.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Architecture 3"><i class="bi bi-plus"></i></a>
                           
                        </div>
                        <div class="portfolio-info">
                          
                            <p>Architecture</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                    <div class="portfolio-wrap">
                        <img src="assets/img/portfolio/fest1.JPG" class="img-fluid" alt="">
                        <div class="portfolio-links">
                            <a href="assets/img/portfolio/fest1.JPG" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Festival 1"><i class="bi bi-plus"></i></a>
                           
                        </div>
                        <div class="portfolio-info">
                            
                            <p>Festival</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                    <div class="portfolio-wrap">
                        <img src="assets/img/portfolio/fest4.jpg" class="img-fluid" alt="">
                        <div class="portfolio-links">
                            <a href="assets/img/portfolio/fest4.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Festival 3"><i class="bi bi-plus"></i></a>
                           
                        </div>
                        <div class="portfolio-info">
                          
                            <p>Festival</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                    <div class="portfolio-wrap">
                        <img src="assets/img/portfolio/fest2.jpg" class="img-fluid" alt="">
                        <div class="portfolio-links">
                            <a href="assets/img/portfolio/fest2.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Festival 2"><i class="bi bi-plus"></i></a>
                           
                        </div>
                        <div class="portfolio-info">
                           
                            <p>festival</p>
                        </div>
                    </div>
                </div>



            </div>

        </div>
    </section><!-- End Portfolio Section -->
    <!-- ======= F.A.Q Section ======= -->
    <section id="faq" class="faq section-bg">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>F.A.Q</h2>
                <p>Frequently Asked Questions</p>
            </div>

            <ul class="faq-list" data-aos="fade-up" data-aos-delay="100">

                <li>
                    <div data-bs-toggle="collapse" class="collapsed question" href="#faq1">Which deities are worshiped at the temple?<i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
                    <div id="faq1" class="collapse" data-bs-parent=".faq-list">
                        <p>
                            Goddess Mahalaxmi, Prasanna Ganapathi, Naga are worshipped in the temple.
                        </p>
                    </div>
                </li>

                <li>
                    <div data-bs-toggle="collapse" href="#faq2" class="collapsed question">When does annual festival take place? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
                    <div id="faq2" class="collapse" data-bs-parent=".faq-list">
                        <p>
                           Annual festival takes place on April 7.
                        </p>
                    </div>
                </li>

                <li>
                    <div data-bs-toggle="collapse" href="#faq3" class="collapsed question">What is the distance between Mangalore to Uchila Mahalaxmi temple?<i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
                    <div id="faq3" class="collapse" data-bs-parent=".faq-list">
                        <p>
                            Ditance from Mangalore to Uchila Mahalaxmi temple is 39km. You can reach the temple by bus or you can book a cab from mangalore.
                        </p>
                    </div>
                </li>

                <li>
                    <div data-bs-toggle="collapse" href="#faq4" class="collapsed question">What is the best time in a year to visit the temple? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
                    <div id="faq4" class="collapse" data-bs-parent=".faq-list">
                        <p>
                            You can visit the temple during Navarathri when nine forms of goddess Durga is worshipped.
                        </p>
                    </div>
                </li>

                <li>
                    <div data-bs-toggle="collapse" href="#faq5" class="collapsed question">What is the Darshana timmings in the temple? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
                    <div id="faq5" class="collapse" data-bs-parent=".faq-list">
                        <p>
                            You can get darshana from 8:00am to 1:00pm and 3:00pm to 6:00pm
                        </p>
                    </div>
                </li>

                <li>
                    <div data-bs-toggle="collapse" href="#faq6" class="collapsed question">What are the facilities available in the temple? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
                    <div id="faq6" class="collapse" data-bs-parent=".faq-list">
                        <p>
                            Facilities available in the temple are Annasantharpane, Parking, Function Hall, Washroom and Drinking Water.
                        </p>
                    </div>
                </li>

            </ul>

        </div>
    </section><!-- End F.A.Q Section -->
    <!-- ======= Team Section ======= -->
    <section id="seva" class="team">
        <div class="container">

            <div class="section-title" data-aos="fade-up">
               
                <p>Seva List</p>
            </div>

            <div class="row">

                <div class="col-xl-3 col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="100">
                    <div class="member">
                        <img src="assets/img/portfolio/rang.jpeg"  class="img-fluid" alt="" >
                       
                        <div class="member-info">
                            <div class="member-info-content">
                                <h4>Ranga pooje</h4>
                                <span>It is a performed with deepa which will benifit from overcomming obstacles. </span>
                            </div>
                          
                        </div>
                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="200">
                    <div class="member">
                        <img src="assets/img/portfolio/ranga (4).jpg" class="img-fluid" alt="">
                       
                        <div class="member-info">
                            <div class="member-info-content">
                                <h4>Hoovina pooje</h4>
                                <span>It is  a pooja in which the diety is decorated in several types of flower.</span>
                            </div>
                         
                        </div>
                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="300">
                    <div class="member">
                        <img src="images/kukum.jpg" class="img-fluid" alt=""/>
                        <%--<img src="images/kumkumarchane.jpg" class="img-fluid" alt="" />--%>
                      
                       
                        <div class="member-info">
                            <div class="member-info-content">
                                <h4>Kumkumarchane</h4>
                                <span>It is performed by offering pinch of kumkum to the feet of diety.</span>
                            </div>
                           
                        </div>
                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="400">
                    <div class="member">
                        <img src="images/hann.jpg" class="img-fluid" alt="" />
                        <%--<img src="assets/img/portfolio/hk.jpg" class="img-fluid" alt="">--%>
                       
                        <div class="member-info">
                            <div class="member-info-content">
                                <h4>Hannu kayi</h4>
                                <span>Coconut and fruits are offered to the diety</span>
                            </div>
                           
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="400">
                    <div class="member">
                        <img src="assets/img/portfolio/alankar.jpg" class="img-fluid" alt="">
                       
                        <div class="member-info">
                            <div class="member-info-content">
                                <h4>Alankara pooje</h4>
                                <span>It is a pooja performed by decorating diety with ornaments and saree.</span>
                            </div>
                           
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="400">
                    <div class="member">
                        <img src="images/prasad.jpg"  class="img-fluid" alt=""/>
                        <%--<img src="images/pra.jpg" class="img-fluid" alt="" />--%>
                        <%--<img src="assets/img/portfolio/prasada.jpg" class="img-fluid" alt="">--%>
                       
                        <div class="member-info">
                            <div class="member-info-content">
                                <h4>Prasada</h4>
                                <span>Prasada is food and water offered to the diety during pooja then it is distributed to the devotees.  </span>
                            </div>
                           
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="400">
                    <div class="member">
                        <img src="images/akshara.jpg" class="img-fluid" alt="" />
                        <%--<img src="assets/img/portfolio/aksha2.jpg" class="img-fluid" alt="">--%>
                     
                        <div class="member-info">
                            <div class="member-info-content">
                                <h4>Aksharabhyasa</h4>
                                <span>A ceremony to introduce child to the world of education by worshipping diety.</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="400">
                    <div class="member">
                        <img src="images/lal.jpg" class="img-fluid" alt="" />
                        <%--<img src="assets/img/portfolio/ls.jpg" class="img-fluid" alt="">--%>
                        <div class="member-info">
                            <div class="member-info-content">
                                <h4>Lalitha sahasranama</h4>
                                <span>It ensures a life free from the poverty ,ill health ,mental stress etc</span>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </section><!-- End Team Section -->
    <!-- ======= Contact Us Section ======= -->
    <section id="contact" class="contact">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>Contact Us</h2>
                <p>Contact us the get started</p>
            </div>

            <div class="row">

                <div class="col-lg-5 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
                    <div class="info">
                        <div class="address">
                            <i class="bi bi-geo-alt"></i>
                            <h4>Location:</h4>
                            <p>  Edapally - Panvel Hwy, Uchilakere, Karnataka 574117</p>
                        </div>

                        <div class="email">
                            <i class="bi bi-envelope"></i>
                            <h4>Email:</h4>
                            <p>uchilamahalaxmi55@gmail.com</p>
                        </div>

                        <div class="phone">
                            <i class="bi bi-phone"></i>
                            <h4>Call:</h4>
                            <p>+91 7022981615</p>
                        </div>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3884.613782791235!2d74.75077217479254!3d13.186734187148803!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bbcb1950f1715db%3A0x1714516ebdf8552d!2sShree%20Mahalakshmi%20Devasthana%20Shree%20Kshetra%20Ucchila!5e0!3m2!1sen!2sin!4v1687106184973!5m2!1sen!2sin" frameborder="0" style="border:0; width: 100%; height: 290px;" allowfullscreen></iframe>
                    </div>

                </div>

                <div class="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
                    <form action="forms/contact.php" method="post" role="form" class="php-email-form">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="name">Your Name</label>
                                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                            </div>
                            <div class="form-group col-md-6 mt-3 mt-md-0">
                                <label for="name">Your Email</label>
                                <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                            </div>
                        </div>
                        <div class="form-group mt-3">
                            <label for="name">Subject</label>
                            <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
                        </div>
                        <div class="form-group mt-3">
                            <label for="name">Message</label>
                            <textarea class="form-control" name="message" rows="10" required></textarea>
                        </div>
                        <div class="my-3">
                            <div class="loading">Loading</div>
                            <div class="error-message"></div>
                            <div class="sent-message">Your message has been sent. Thank you!</div>
                        </div>
                       
                        <div class="text-center">
                            <button type="submit">Send Message</button>

                        </div>
                    </form>
                </div>

            </div>

        </div>
    </section><!-- End Contact Us Section -->

</main><!-- End #main -->


<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="~/assets/vendor/aos/aos.js"></script>
<script src="~/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="~/assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="~/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="~/assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="~/assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="~/assets/js/main.js"></script>
</asp:Content>
