@extends('user/app')

 @section('main-content')

 <!-- Page Title #2
============================================= -->
<section id="page-title" class="page-title bg-overlay bg-parallax bg-overlay-gradient">
    <div class="bg-section">
        <img src="{{asset('user/assets/images/page-title/13.jpg')}}" alt="Background" />
    </div>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1">
                <div class="title title-2 text-center">
                    <div class="title--content">
                        <div class="title--img">
                            <img src="{{asset('user/assets/images/page-title/chef-hat.png')}}" alt="chef hat">
                        </div>
                        <div class="title--heading">
                            <h1>I don't like food that's too carefully arranged; it makes me think that the chef is spending too much time arranging and not enough time cooking.</h1>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <ol class="breadcrumb">
                        <li><a class="active">about</a></li>
                    </ol>
                    <div class="divider--shape-1down"></div>
                </div>
                <!-- .title end -->
            </div>
            <!-- .col-md-12 end -->
        </div>
        <!-- .row end -->
    </div>
    <!-- .container end -->
</section>
<!-- #page-title end -->

<!-- =============History=================-->
<section id="banner5" class="banner banner-5 text-center">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3">
                <div class="heading heading-1 text--center mb-40">
                    <p class="heading--subtitle">Welcome To FoodComb</p>
                    <h2 class="heading--title">Our History</h2>
                    <div class="divider--shape-4"></div>
                </div>
                <!-- .heading end -->
            </div>
            <!-- .col-md-6 end -->
        </div>
        <!-- .row end -->
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1">
                <div class="banner--desc">
                    FoodComb is an unique restaurent in Sylhet, the resturant was designed with the history in mind we have created a soft industrial dining room, combined with an open kitchen and online delivery system.
                </div>
            </div>
        </div>
        <!-- .row end -->
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-4">
                <div class="history-panel">
                    <h6>2014</h6>
                    <h3>Grand Opening</h3>
                    <div class="divider--shape-13"></div>
                    <p>FoodComb was opened in September 6, 2014, the interior was created by the most famous artists. Today our restaurant welcomes 150 people!</p>
                </div>
            </div>
            <!-- .col-md-4 end -->
            <div class="col-xs-12 col-sm-12 col-md-4">
                <div class="history-panel">
                <h6>2018</h6>
                <h3>Second Branch</h3>
                <div class="divider--shape-13"></div>
                <p>Since the very first day, FoodComb was a gathering place for every kind of people. Therefore we decided to open our second branch!</p>
                </div>
            </div>
            <!-- .col-md-4 end -->
            <div class="col-xs-12 col-sm-12 col-md-4">
                <div class="history-panel">
                    <h6>2020</h6>
                    <h3>Great Taste Award</h3>
                    <div class="divider--shape-13"></div>
                    <p>FoodComb was and still remains not just a restaurant, but also a trustworthy Online Food Delivery Site. We are happy to announce that we claim the Grate taste award.</p>
                </div>
            </div>
            <!-- .col-md-4 end -->
        </div>
        <!-- .row end -->
    </div>
    <!-- .container end -->
</section>
<!-- #banner5 end -->

<!-- Chefs 
============================================= -->

<section id="testimonial1" class="testimonial testimonial-1 bg-overlay bg-overlay-dark bg-parallax pb-90">
	<div class="bg-section">
        <img src="" alt="Background" />
    </div>
	<div class="divider--shape-1up"></div>
        <div class="row clearfix">
            <div class="col-xs-12 col-sm-12 col-md-8 col-md-offset-2">
                <div class="heading heading-1 mb-40 text--center">
                    <p class="heading--subtitle">Credits Goes to</p>
                    <h2 class="heading--title color-white">Our Telented chefs</h2>
                </div>
            </div>
            <!-- .col-md-8 end -->
        </div>
    <div class="container">
        <div class="row">
            <!-- Member #1 -->
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="member">
                    <div class="member-img">
                        <img src="{{asset('user/assets/images/team/1.jpg')}}" alt="member">
                        <div class="member-overlay">
                            <div class="member-hover">
                                <div class="pos-vertical-center">
                                    <div class="member-social">
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-instagram"></i></a>
                                    </div>
                                    <!-- .memebr-social end -->
                                    <div class="member-desc">
                                        <p>Passion for cooking is in his genes. He grew up appreciating outstanding food and service at an early age.</p>
                                    </div>
                                    <!-- .memebr-desc end -->
                                </div>
                                <!-- .pos-vertical-center end -->
                            </div>
                            <!-- .memebr-hover end -->
                        </div>
                        <!-- .memebr-ovelay end -->
                    </div>
                    <!-- .member-img end -->
                    <div class="member-info">
                        <h5>Todd Stephen</h5>
                        <h6>CEO & Founder</h6>
                    </div>
                    <!-- .member-info end -->
                </div>
                <!-- .member end -->
            </div>
            <!-- .col-md-3 end -->

            <!-- Member #2 -->
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="member">
                    <div class="member-img">
                        <img src="{{asset('user/assets/images/team/2.jpg')}}" alt="member">
                        <div class="member-overlay">
                            <div class="member-hover">
                                <div class="pos-vertical-center">
                                    <div class="member-social">
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-instagram"></i></a>
                                    </div>
                                    <!-- .memebr-social end -->
                                    <div class="member-desc">
                                        <p>Passion for cooking is in his genes. He grew up appreciating outstanding food and service at an early age.</p>
                                    </div>
                                    <!-- .memebr-desc end -->
                                </div>
                                <!-- .pos-vertical-center end -->
                            </div>
                            <!-- .memebr-hover end -->
                        </div>
                        <!-- .memebr-ovelay end -->
                    </div>
                    <!-- .member-img end -->
                    <div class="member-info">
                        <h5>Walter Adler</h5>
                        <h6>Master Chef</h6>
                    </div>
                    <!-- .member-info end -->
                </div>
                <!-- .member end -->
            </div>
            <!-- .col-md-3 end -->

            <!-- Member #3 -->
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="member">
                    <div class="member-img">
                        <img src="{{asset('user/assets/images/team/3.jpg')}}" alt="member">
                        <div class="member-overlay">
                            <div class="member-hover">
                                <div class="pos-vertical-center">
                                    <div class="member-social">
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-instagram"></i></a>
                                    </div>
                                    <!-- .memebr-social end -->
                                    <div class="member-desc">
                                        <p>Passion for cooking is in his genes. He grew up appreciating outstanding food and service at an early age.</p>
                                    </div>
                                    <!-- .memebr-desc end -->
                                </div>
                                <!-- .pos-vertical-center end -->
                            </div>
                            <!-- .memebr-hover end -->
                        </div>
                        <!-- .memebr-ovelay end -->
                    </div>
                    <!-- .member-img end -->
                    <div class="member-info">
                        <h5>James Carter</h5>
                        <h6>Thai Master Chef</h6>
                    </div>
                    <!-- .member-info end -->
                </div>
                <!-- .member end -->
            </div>
            <!-- .col-md-3 end -->

            <!-- Member #4 -->
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="member">
                    <div class="member-img">
                        <img src="{{asset('user/assets/images/team/4.jpg')}}" alt="member">
                        <div class="member-overlay">
                            <div class="member-hover">
                                <div class="pos-vertical-center">
                                    <div class="member-social">
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-instagram"></i></a>
                                    </div>
                                    <!-- .memebr-social end -->
                                    <div class="member-desc">
                                        <p>Passion for cooking is in his genes. He grew up appreciating outstanding food and service at an early age.</p>
                                    </div>
                                    <!-- .memebr-desc end -->
                                </div>
                                <!-- .pos-vertical-center end -->
                            </div>
                            <!-- .memebr-hover end -->
                        </div>
                        <!-- .memebr-ovelay end -->
                    </div>
                    <!-- .member-img end -->
                    <div class="member-info">
                        <h5>Michael Luke</h5>
                        <h6>Chinese Master Chef</h6>
                    </div>
                    <!-- .member-info end -->
                </div>
                <!-- .member end -->
            </div>
            <!-- .col-md-3 end -->

            <!-- Member #5 -->
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="member">
                    <div class="member-img">
                        <img src="{{asset('user/assets/images/team/5.jpg')}}" alt="member">
                        <div class="member-overlay">
                            <div class="member-hover">
                                <div class="pos-vertical-center">
                                    <div class="member-social">
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-instagram"></i></a>
                                    </div>
                                    <!-- .memebr-social end -->
                                    <div class="member-desc">
                                        <p>Passion for cooking is in his genes. He grew up appreciating outstanding food and service at an early age.</p>
                                    </div>
                                    <!-- .memebr-desc end -->
                                </div>
                                <!-- .pos-vertical-center end -->
                            </div>
                            <!-- .memebr-hover end -->
                        </div>
                        <!-- .memebr-ovelay end -->
                    </div>
                    <!-- .member-img end -->
                    <div class="member-info">
                        <h5>David Casper</h5>
                        <h6>Meat Delivery</h6>
                    </div>
                    <!-- .member-info end -->
                </div>
                <!-- .member end -->
            </div>
            <!-- .col-md-3 end -->

            <!-- Member #6 -->
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="member">
                    <div class="member-img">
                        <img src="{{asset('user/assets/images/team/6.jpg')}}" alt="member">
                        <div class="member-overlay">
                            <div class="member-hover">
                                <div class="pos-vertical-center">
                                    <div class="member-social">
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-instagram"></i></a>
                                    </div>
                                    <!-- .memebr-social end -->
                                    <div class="member-desc">
                                        <p>Passion for cooking is in his genes. He grew up appreciating outstanding food and service at an early age.</p>
                                    </div>
                                    <!-- .memebr-desc end -->
                                </div>
                                <!-- .pos-vertical-center end -->
                            </div>
                            <!-- .memebr-hover end -->
                        </div>
                        <!-- .memebr-ovelay end -->
                    </div>
                    <!-- .member-img end -->
                    <div class="member-info">
                        <h5>Mostafa Amin</h5>
                        <h6>Chef Assistant</h6>
                    </div>
                    <!-- .member-info end -->
                </div>
                <!-- .member end -->
            </div>
            <!-- .col-md-3 end -->

            <!-- Member #7 -->
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="member">
                    <div class="member-img">
                        <img src="{{asset('user/assets/images/team/7.jpg')}}" alt="member">
                        <div class="member-overlay">
                            <div class="member-hover">
                                <div class="pos-vertical-center">
                                    <div class="member-social">
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-instagram"></i></a>
                                    </div>
                                    <!-- .memebr-social end -->
                                    <div class="member-desc">
                                        <p>Passion for cooking is in his genes. He grew up appreciating outstanding food and service at an early age.</p>
                                    </div>
                                    <!-- .memebr-desc end -->
                                </div>
                                <!-- .pos-vertical-center end -->
                            </div>
                            <!-- .memebr-hover end -->
                        </div>
                        <!-- .memebr-ovelay end -->
                    </div>
                    <!-- .member-img end -->
                    <div class="member-info">
                        <h5>John Arax</h5>
                        <h6>Kitchen Care</h6>
                    </div>
                    <!-- .member-info end -->
                </div>
                <!-- .member end -->
            </div>
            <!-- .col-md-3 end -->

            <!-- Member #8 -->
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="member">
                    <div class="member-img">
                        <img src="{{asset('user/assets/images/team/8.jpg')}}" alt="member">
                        <div class="member-overlay">
                            <div class="member-hover">
                                <div class="pos-vertical-center">
                                    <div class="member-social">
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-instagram"></i></a>
                                    </div>
                                    <!-- .memebr-social end -->
                                    <div class="member-desc">
                                        <p>Passion for cooking is in his genes. He grew up appreciating outstanding food and service at an early age.</p>
                                    </div>
                                    <!-- .memebr-desc end -->
                                </div>
                                <!-- .pos-vertical-center end -->
                            </div>
                            <!-- .memebr-hover end -->
                        </div>
                        <!-- .memebr-ovelay end -->
                    </div>
                    <!-- .member-img end -->
                    <div class="member-info">
                        <h5>Anthony Kevin</h5>
                        <h6>Chef Assistant</h6>
                    </div>
                    <!-- .member-info end -->
                </div>
                <!-- .member end -->
            </div>
            <!-- .col-md-3 end -->

        </div>
        <div class="divider--shape-1down"></div>
    </div>
</section>
<!-- #team1 end  -->



<!-- Features 
============================================= -->

<section id="testimonial1" class="testimonial testimonial-1 bg-overlay bg-overlay-dark bg-parallax pb-90">
		<div class="bg-section">
        <img src="{{asset('user/assets/images/background/1.jpg')}}" alt="Background" />
    </div>
	<div class="divider--shape-1up"></div>
        <div class="row clearfix">
            <div class="col-xs-12 col-sm-12 col-md-8 col-md-offset-2">
                <div class="heading heading-1 mb-40 text--center">
                    <p class="heading--subtitle">Explore</p>
                    <h2 class="heading--title color-white">Our  Best features</h2>
                </div>
            </div>
            <!-- .col-md-8 end -->
        </div>

	
    <div class="container">
        <div class="row">
            <!-- Panel #1 -->
            <div class="col-xs-12 col-sm-12 col-md-4">
                <div class="feature-panel">
                    <div class="feature--icon">
                        <img src="{{asset('user/assets/images/icons/1.png')}}" alt="feature img">
                    </div>
                    <div class="feature--content">
                        <h3>Daily Fresh Menus</h3>
                        <p>FoodComb help you treat yourself with a different meal everyday, thanks to our daily changing menus and our awesome creative chefs!</p>
                    </div>
                </div>
                <!-- .feature-panel end -->
            </div>
            <!-- .col-md-4 end -->

            <!-- Panel #2 -->
            <div class="col-xs-12 col-sm-12 col-md-4">
                <div class="feature-panel">
                    <div class="feature--icon">
                        <img src="{{asset('user/assets/images/icons/2.png')}}" alt="feature img">
                    </div>
                    <div class="feature--content">
                        <h3>Fresh Ingredient</h3>
                        <p>Who said healthy food can't also be delicious? FoodComb's creative chefs use fresh and seasonal ingredients to make affordable, tasty and nourishing meals.</p>
                    </div>
                </div>
                <!-- .feature-panel end -->
            </div>
            <!-- .col-md-4 end -->

            <!-- Panel #3 -->
            <div class="col-xs-12 col-sm-12 col-md-4">
                <div class="feature-panel">
                    <div class="feature--icon">
                        <img src="{{asset('user/assets/images/icons/3.png')}}" alt="feature img">
                    </div>
                    <div class="feature--content">
                        <h3>Tasty Meals</h3>
                        <p>Who said healthy food can't also be delicious? FoodComb's creative chefs use fresh and seasonal ingredients to make affordable, tasty and nourishing meals.</p>
                    </div>
                </div>
                <!-- .feature-panel end -->
            </div>
            <!-- .col-md-4 end -->
            <!-- Panel #4 -->
            <div class="col-xs-12 col-sm-12 col-md-4">
                <div class="feature-panel">
                    <div class="feature--icon">
                        <img src="{{asset('user/assets/images/icons/4.png')}}" alt="feature img">
                    </div>
                    <div class="feature--content">
                        <h3>Creative Chef</h3>
                        <p>FoodComb help you treat yourself with a different meal everyday, thanks to our daily changing menus and our awesome creative chefs!</p>
                    </div>
                </div>
                <!-- .feature-panel end -->
            </div>
            <!-- .col-md-4 end -->

            <!-- Panel #5 -->
            <div class="col-xs-12 col-sm-12 col-md-4">
                <div class="feature-panel">
                    <div class="feature--icon">
                        <img src="{{asset('user/assets/images/icons/18.png')}}" alt="feature img">
                    </div>
                    <div class="feature--content">
                        <h3>Healthy Food</h3>
                        <p>Who said healthy food can't also be delicious? FoodComb's creative chefs use fresh and seasonal ingredients to make affordable, tasty and nourishing meals.</p>
                    </div>
                </div>
                <!-- .feature-panel end -->
            </div>
            <!-- .col-md-4 end -->

            <!-- Panel #6 -->
            <div class="col-xs-12 col-sm-12 col-md-4">
                <div class="feature-panel">
                    <div class="feature--icon">
                        <img src="{{asset('user/assets/images/icons/6.png')}}" alt="feature img">
                    </div>
                    <div class="feature--content">
                        <h3>Awesome Coffee</h3>
                        <p>Who said healthy food can't also be delicious? FoodComb's creative chefs use fresh and seasonal ingredients to make affordable, tasty and nourishing meals.</p>
                    </div>
                </div>
                <!-- .feature-panel end -->
            </div>
            <!-- .col-md-4 end -->

        </div>
        <!-- .row end -->     
    </div>
    <!-- .container end -->

</section>
<!-- #feature1 end -->



<!-- Awards
============================================= -->
<section id="banner6" class="banner banner-6 text-center bg-white">

		<div class="bg-section">
        <img src="" alt="Background" />
    </div>
	<div class="divider--shape-1up"></div>
        <div class="row clearfix">
            <div class="col-xs-12 col-sm-12 col-md-8 col-md-offset-2">
                <div class="heading heading-1 mb-40 text--center">
                    <p class="heading--subtitle">Achivements</p>
                    <h2 class="heading--title color-white">Our Awards</h2>
                </div>
            </div>
            <!-- .col-md-8 end -->
        </div>
	<div class="divider--shape-1up"></div>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1">
                <ul class="panel--logos list-unstyled list-inline mb-50">
                    <li><img src="{{asset('user/assets/images/tabs/1.png')}}" alt="logo"></li>
                    <li><img src="{{asset('user/assets/images/tabs/2.png')}}" alt="logo"></li>
                    <li><img src="{{asset('user/assets/images/tabs/3.png')}}" alt="logo"></li>
                    <li><img src="{{asset('user/assets/images/tabs/4.png')}}" alt="logo"></li>
                    <li><img src="{{asset('user/assets/images/tabs/5.png')}}" alt="logo"></li>
                    <li><img src="{{asset('user/assets/images/tabs/6.png')}}" alt="logo"></li>
                    <li><img src="{{asset('user/assets/images/tabs/7.png')}}" alt="logo"></li>
                </ul>
                <h3 class="panel--heading">Since our grand opening in September 2014, FoodComb has won multiple awards from food critics and organizations</h3>
            </div>
            <!-- .col-md-10 end -->
        </div>
        <!-- .row end -->
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-4 col-md-offset-2">
                <ul class="panel--details text-left">
                    <li>The Good Food Award, Gold Seal (2015)</li>
                    <li>The Organic Food Award, Soil Association (2015)</li>
                    <li>The Great South Asian Food Award (2016)</li>
                    <li>The Food Made Good Award (2017)</li>
                    <li>The Great Food Taste Award (2018)</li>
                    <li>The Food Award, Bangladesh (2019)</li>
                </ul>
            </div>
            <!-- .col-md-4 end -->
            <div class="col-xs-12 col-sm-12 col-md-6">
                <ul class="panel--details text-left">
                    <li>The Best Food Award, Bangladesh (2015)</li>
                    <li>The Best Chef in Sylhet & Best Restaurant (2016, 2016)</li>
                    <li>The Best Emerging Asian Cuisine (2017)</li>
                    <li>The Best Dining Experience (2018)</li>
                    <li>The Best Chef in Bangladesh (2018)</li>
                    <li>The Asian Star (2019)</li>
                </ul>
            </div>
            <!-- .col-md-6 end -->
        </div>
        <!-- .row end -->
    </div>
    <!-- .container end -->
</section>
<!-- #banner6 end -->


 @endsection