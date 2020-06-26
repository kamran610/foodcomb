
<!-- footer#1
============================================= -->
<footer id="footer" class="footer footer-1 text-center">
<!-- Widget Section
============================================= -->
<div class="footer--widget text--center">
<div class="container">
<div class="row">
<div class="col-xs-12 col-sm-3 col-md-4">
<div class="footer--widget-content">
<h3>Our address</h3>
<p>Any Building, At Your Road,<br> Zindabazar, Sylhet.</p>
<a class="link--styled" href="#">View On Map</a>
</div>
</div>
<!-- .col-md-3 end -->
<div class="col-xs-12 col-sm-6 col-md-4">
<div class="footer--reservation">
<div class="divider--shape-10up"></div>
<h3>Make A Reservation</h3>
<div class="divider--shape-11"></div>
<div class="footer--reservation-wrapper">
<ul class="list-unstyled">
<li>Week days <span>09.00am – 11:00pm</span></li>
<li>Thursday <span>09:00am – 04.00pm</span></li>
<li>Friday <span>Day off</span></li>
</ul>
<a class="btn btn--primary btn--bordered btn--block" data-toggle="modal" href="{{route('reserve')}}">Find A Table</a>
</div>
<div class="divider--shape-10down"></div>
</div>
</div>
<!-- .col-md-3 end -->
<div class="col-xs-12 col-sm-3 col-md-4">
<div class="footer--widget-content">
<h3>Contact us</h3>
<p class="mb-0">Main Email: foodcomb@gmail.com</p>
<p class="mb-0">Phone: +880 1798999888</p>
<a class="link--styled" href="{{route('contacts')}}">Send A Message</a>
</div>
</div>
<!-- .col-md-3 end -->

</div>
</div>
<!-- .container end -->
</div>
<!-- .footer-widget end -->
<!--Social
============================================= -->
<div class="footer--social">
<div class="container">
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-12 text-center">
<div class="footer--social-icons">
<a href="#"><i class="fa fa-facebook"></i></a>
<a href="#"><i class="fa fa-twitter"></i></a>
<a href="#"><i class="fa fa-instagram"></i></a>
<a href="#"><i class="fa fa-pinterest"></i></a>
<a href="#"><i class="fa fa-tripadvisor"></i></a>
</div>
<!-- .social-icons end -->
</div>
<!-- .col-md-6 end -->
</div>
<!-- .row end -->
</div>
<!-- .container end -->
</div>
<!-- .footer-widget end -->
<!-- Copyrights
============================================= -->
<div class="footer--copyright text-center">
<div class="divider--shape-dark"></div>
<div class="container">
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-12">
<span>&copy; 2019 FoodComb, With Love by </span> <a href="http://themeforest.net/user/zytheme/portfolio?ref=zytheme">Kamran & Mahir</a>
</div>
</div>
</div>
<!-- .container end -->
</div>
<!-- .footer-copyright end -->
</footer>
</div>
<!-- #wrapper end -->

<!-- Footer Scripts
============================================= -->
<script src="{{asset('user/assets/js/jquery-2.2.4.min.js')}}"></script>
<script src="{{asset('user/assets/js/plugins.js')}}"></script>
<script src="{{asset('user/assets/js/functions.js')}}"></script>
hello
@stack('scripts')

@section('footer-grey')

@show
