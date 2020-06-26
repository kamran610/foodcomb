@extends('user/app')

@section('main-content')
<!-- Hero Section
====================================== -->
<section id="slider" class="slider slide-overlay-black">
<!-- START REVOLUTION SLIDER 5.0 -->
<div class="rev_slider_wrapper">
<div id="slider1" class="rev_slider"  data-version="5.0">
<ul>
<!-- slide 1 -->
<li data-transition="zoomin"
data-slotamount="default" 
data-easein="Power4.easeInOut" 
data-easeout="Power4.easeInOut" 
data-masterspeed="2000">
<!-- MAIN IMAGE -->
<img src="{{asset('user/assets/images/sliders/slide-bg/11.jpg')}}" alt="Slide Background Image"  width="1920" height="1280">
<!-- LAYER NR. 1 -->
<div class="tp-caption" 
data-x="center" data-hoffset="0" 
data-y="center" data-voffset="-130" 
data-whitespace="nowrap"
data-width="none"
data-height="none"
data-frames='[{"delay":1500,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'                        data-splitin="none" 
data-splitout="none" 
data-responsive_offset="on">
<div class="slide--subheadline">FoodComb Offers You</div>
</div>


<!-- LAYER NR. 2 -->
<div class="tp-caption" 
data-x="center" data-hoffset="0" 
data-y="center" data-voffset="-65" 
data-whitespace="nowrap"
data-width="none"
data-height="none"
data-frames='[{"delay":1750,"speed":1000,"frame":"0","from":"y:50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'                     data-splitin="none" 
data-splitout="none" 
data-responsive_offset="on">
<div class="slide--headline">The Best Tasting Experience!</div>
</div>

<!-- LAYER NR. 3 -->
<div class="tp-caption" 
data-x="center" data-hoffset="0" 
data-y="center" data-voffset="20" 
data-width="none"
data-height="none"
data-frames='[{"delay":2000,"speed":1500,"frame":"0","from":"y:50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]' 
data-splitin="none" 
data-splitout="none" 
data-responsive_offset="on">
<div class="slide--bio text-center">FoodComb is a restaurant and online food delivery in Sylhet. We have<br> awesome recipes and the most talented chefs in town! </div>
</div>

<!-- LAYER NR. 4 -->
<div class="tp-caption" 
data-x="center" data-hoffset="0" 
data-y="center" data-voffset="100" 
data-width="none"
data-height="none"
data-whitespace="nowrap"
data-frames='[{"delay":2250,"speed":1000,"frame":"0","from":"x:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'                        data-splitin="none" 
data-splitout="none" 
data-actions='[{"event":"click","action":"jumptoslide","slide":"rs-164","delay":""}]'
data-basealign="slide" 
data-responsive_offset="on" 
data-responsive="off">
<div class="slide-action">
<a class="btn btn--white btn--bordered btn--lg" href="{{route('reserve')}}">Get A Reservation Now</a>
</div>
</div>
</li>

<!-- slide 2 -->
<li data-transition="slideoverdown"
data-slotamount="default" 
data-easein="Power4.easeInOut" 
data-easeout="Power4.easeInOut" 
data-masterspeed="2000">
<!-- MAIN IMAGE -->
<img src="{{asset('user/assets/images/sliders/slide-bg/3.jpg')}}" alt="Slide Background Image"  width="1920" height="1280">
<!-- LAYER NR. 1 -->
<div class="tp-caption" 
data-x="center" data-hoffset="0" 
data-y="center" data-voffset="-130" 
data-whitespace="nowrap"
data-width="none"
data-height="none"
data-frames='[{"delay":1500,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'                        data-splitin="none" 
data-splitout="none" 
data-responsive_offset="on">
<div class="slide--subheadline">Hello, We Are FoodComb</div>
</div>

<!-- LAYER NR. 2 -->
<div class="tp-caption" 
data-x="center" data-hoffset="0" 
data-y="center" data-voffset="-65" 
data-whitespace="nowrap"
data-width="none"
data-height="none"
data-frames='[{"delay":1750,"speed":1000,"frame":"0","from":"y:50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'                     data-splitin="none" 
data-splitout="none" 
data-responsive_offset="on">
<div class="slide--headline">We Serve Quality Food</div>
</div>

<!-- LAYER NR. 3 -->
<div class="tp-caption" 
data-x="center" data-hoffset="0" 
data-y="center" data-voffset="20" 
data-width="none"
data-height="none"
data-transform_idle="o:1;"
data-frames='[{"delay":2000,"speed":1500,"frame":"0","from":"y:50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]' 
data-splitin="none" 
data-splitout="none" 
data-responsive_offset="on">
<div class="slide--bio text-center">FoodComb is a restaurant and online food delivery in Sylhet. We have<br>awesome recipes and the most talented chefs in town! </div>
</div>

<!-- LAYER NR. 4 -->
<div class="tp-caption" 
data-x="center" data-hoffset="0" 
data-y="center" data-voffset="100" 
data-width="none"
data-height="none"
data-whitespace="nowrap"
data-frames='[{"delay":2250,"speed":1000,"frame":"0","from":"x:50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"x:50px;opacity:0;","ease":"Power3.easeInOut"}]'                      data-splitin="none" 
data-splitout="none" 
data-actions='[{"event":"click","action":"jumptoslide","slide":"rs-164","delay":""}]'
data-basealign="slide" 
data-responsive_offset="on" 
data-responsive="off">
<div class="slide-action">
<a class="btn btn--primary" href="{{route('shop')}}">Order Now</a>
</div>
</div>
</li>

<!-- slide 3 -->
<li data-transition="incube-horizontal"
data-slotamount="default" 
data-easein="Power4.easeInOut" 
data-easeout="Power4.easeInOut" 
data-masterspeed="2000">
<!-- MAIN IMAGE -->
<img src="{{asset('user/assets/images/sliders/slide-bg/12.jpg')}}" alt="Slide Background Image"  width="1920" height="1280">
<!-- LAYER NR. 1 -->
<div class="tp-caption" 
data-x="center" data-hoffset="0" 
data-y="center" data-voffset="-65" 
data-whitespace="nowrap"
data-width="none"
data-height="none"
data-frames='[{"delay":1500,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'                        data-splitin="none" 
data-splitout="none" 
data-responsive_offset="on">
<div class="slide--subheadline">Made With Love</div>
</div>

<!-- LAYER NR. 2 -->
<div class="tp-caption" 
data-x="center" data-hoffset="0" 
data-y="center" data-voffset="0" 
data-whitespace="nowrap"
data-width="none"
data-height="none"
data-frames='[{"delay":1750,"speed":1000,"frame":"0","from":"y:50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'                     data-splitin="none" 
data-splitout="none" 
data-responsive_offset="on"
>
<div class="slide--headline">Hot and Ready to Serve</div>
</div>

<!-- LAYER NR. 3 -->
<div class="tp-caption" 
data-x="center" data-hoffset="0" 
data-y="center" data-voffset="100" 
data-width="none"
data-height="none"
data-frames='[{"delay":2000,"speed":1000,"frame":"0","from":"y:50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'                     data-splitin="none" 
data-splitout="none" 
data-responsive_offset="on">
<div class="slide--bio text-center">FoodComb is a restaurant and online food delivery in Sylhet. We have<br>awesome recipes and the most talented chefs in town! </div>
</div>
</li>

</ul>
</div>
<!-- END REVOLUTION SLIDER -->
</div>
<!-- END OF SLIDER WRAPPER -->
</section>

<!-- tabs
============================================= -->

<!-- specials #1
============================================= -->
<section id="specials" class="specials specials-1 bg-overlay bg-overlay-dark4 bg-parallax text--center">
<div class="bg-section">
<img src="{{asset('user/assets/images/background/8.jpg')}}" alt="Background" />
</div>
<div class="container">
<div class="divider--shape-1up"></div>
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-8 col-md-offset-2">
<div class="heading heading-1 mb-50 text--center">
<p class="heading--subtitle">What’s for lunch?</p>
<h2 class="heading--title color-white">Check Our Daily Specials</h2>
</div>
</div>
<!-- .col-md-8 end -->
</div>
<!-- .row end -->
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1">
<div class="dishes-wrapper text--center">


@foreach ($dailySpecials as $dailySpecial)
    <!-- Dish #1 -->
    <div class="dish-panel">
    <div class="dish--price">${{$dailySpecial->price}}</div>
    <h3 class="dish--title">{{$dailySpecial->name}}</h3>
    <p class="dish--desc">{{$dailySpecial->description}}</p>
    <div class="divider--shape-12"></div>
    </div>
    <!-- .dish end -->

@endforeach


</div>
<!-- .dishes-wrapper end -->
</div>
<!-- .col-md-10 end -->
</div>
<!-- .row end -->
<div class="divider--shape-1down"></div>
</div>
<!-- .container end -->
</section>
<!-- #specials1 end -->
      




<!--History tab
============================================= -->
<section id="tabs1" class="tabs text-center bg-white">
<div class="container">
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-12">
<!-- Nav tabs -->
<ul class="nav nav-tabs">
<li class="active"><a href="#About" data-toggle="tab">History</a></li>
<li><a href="#Awards" data-toggle="tab">Awards</a></li>
</ul>

<!-- Tab panes -->
<div class="tab-content">
<div class="tab-pane fade in active banner banner-1" id="About">
<div class="row">
<div class="col-xs-12 col-sm-6 col-md-4">
<div class="banner-panel">
<div class="banner--content">
<div class="banner--img">
<img src="{{asset('user/assets/images/banners/open.jpg')}}" alt="banner img" class="img-responsive">
</div>
<h6>2014</h6>
<h3>Grand Opening</h3>
<div class="divider--shape-13"></div>
<p>FoodComb was opened in September 6, 2014, the interior was created by the most famous artists. Today our restaurant welcomes 150 people!</p>
</div>
</div>
<!-- .banner-panel end -->
</div>
<!-- .col-md-4 end -->

<div class="col-xs-12 col-sm-6 col-md-4">
<div class="banner-panel">
<div class="banner--content">
<div class="banner--img">
<img src="{{asset('user/assets/images/banners/2nd.jpg')}}" alt="banner img" class="img-responsive">
</div>
<h6>2018</h6>
<h3>Second Branch</h3>
<div class="divider--shape-13"></div>
<p>Since the very first day, FoodComb was a gathering place for every kind of people. Therefore we decided to open our second branch!</p>
</div>
</div>
<!-- .banner-panel end -->
</div>
<!-- .col-md-4 end -->

<div class="col-xs-12 col-sm-6 col-md-4">
<div class="banner-panel">
<div class="banner--content">
<div class="banner--img">
<img src="{{asset('user/assets/images/banners/medal.jpg')}}" alt="banner img" class="img-responsive">
</div>
<h6>2020</h6>
<h3>Great Taste Award</h3>
<div class="divider--shape-13"></div>
<p>FoodComb was and still remains not just a restaurant, but also a trustworthy Online Food Delivery Site. We are happy to announce that we claim the Grate taste award.</p>
</div>
</div>
<!-- .banner-panel end -->
</div>
<!-- .col-md-4 end -->

</div>
<!-- .row end -->
</div>
<!-- .tab-pane end -->

<div class="tab-pane fade" id="Awards">
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1">
<ul class="tab--logos list-unstyled list-inline mb-50">
<li><img src="{{asset('user/assets/images/tabs/1.png')}}" alt="logo"></li>
<li><img src="{{asset('user/assets/images/tabs/2.png')}}" alt="logo"></li>
<li><img src="{{asset('user/assets/images/tabs/3.png')}}" alt="logo"></li>
<li><img src="{{asset('user/assets/images/tabs/7.png')}}" alt="logo"></li>
<li><img src="{{asset('user/assets/images/tabs/4.png')}}" alt="logo"></li>
<li><img src="{{asset('user/assets/images/tabs/5.png')}}" alt="logo"></li>
<li><img src="{{asset('user/assets/images/tabs/6.png')}}" alt="logo"></li>
</ul>
<h3 class="tab--heading">Since our grand opening in September 2014, FoodComb has won multiple awards from food critics and organizations.</h3>
</div>
<!-- .col-md-10 end -->
</div>
<!-- .row end -->
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-4 col-md-offset-2">
<ul class="tab--details text-left">
<li>The Good Food Award (2015)</li>
<li>The Food Made Good Award (2015)</li>
<li>The Great Tommy Miah Food Award (2018)</li>
<li>The Great Food Taste Award (2019)</li>
</ul>
</div>
<!-- .col-md-4 end -->
<div class="col-xs-12 col-sm-12 col-md-6">
<ul class="tab--details text-left">
<li>The Healthy Food Award (2016)</li>
<li>The Organic Food Award (2017)</li>
<li>The Best Food Award (2018)</li>
<li>The Best Chef in Sylhet & Best Restaurant (2018, 2018)</li>
</ul>
</div>
<!-- .col-md-6 end -->
</div>
<!-- .row end -->
</div>

</div>
<!-- .tabs-content end -->
</div>
<!-- .col-md-12 end -->
</div>
<!-- .row end -->
</div>
<!-- .container end -->
</section>
<!-- #tabs1 end -->







@endsection