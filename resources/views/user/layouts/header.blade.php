<header id="navbar-spy" class="header header-1 header-transparent header-bordered header-fixed">
<nav id="primary-menu" class="navbar navbar-fixed-top">
<div class="container">
<!-- Brand and toggle get grouped for better mobile display -->
<div class="navbar-header">
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1" aria-expanded="false">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<a class="logo" href="{{route('home')}}">
<img class="logo-light" src="{{asset('user/assets/images/logo/food-light.png')}}" alt="granny Logo">
<img class="logo-dark" src="{{asset('user/assets/images/logo/food-dark1.png')}}" alt="granny Logo">
</a>
</div>





<div class="module-container pull-right">
<!-- Module Reservation -->  
<div class="module module-reservation">
<a class="btn-popup" data-toggle="modal" href="{{route('reserve')}}"><i class="fa fa-calendar-check-o"></i>Reservation</a>
</div> 
<!-- Module Reservation End-->  

<!-- Module Order -->  
<div class="module module-order">
<a class="btn-popup" data-toggle="modal" href="{{route('shop')}}"><i class="fa fa-shopping-bag"></i>Shop Now</a>
</div> 
<!-- Module Order End--> 

<!-- Module Cart--> 
<div class="module module-side-nav">
<div class="module-icon side-nav-icon">
@if(Auth::check())
    <a class="user" href=""><i class="fa fa-user"></i></a>

    <span>
        <a class='logout btn-popup' href="/logout"> Logout </a>
    </span>
@else
    <a href="{{route('login')}}"><i class="fa fa-sign-in"></i></a>

@endif
</div>
</div>
<!-- Module Cart End--> 

</div> 
<!-- .module-container end -->


<!-- Collect the nav links, forms, and other content for toggling -->
<div class="collapse navbar-collapse pull-right" id="navbar-collapse-1">
<ul class="nav navbar-nav nav-pos-right navbar-left">
<!-- Home Menu -->
<li>
<a class="menu-item" href="{{route('home')}}" >Home</a>
</li>
<!-- li end -->

<!-- About Menu -->
<li>
<a class="menu-item" href="{{route('about')}}" >About</a>
</li>
<!-- li end -->

<!-- Menu Menu -->
<li>
<a class="menu-item" href="{{route('menu')}}" >Menu</a>
</li>
<!-- li end -->

<!--<li>
<a class="menu-item" href="">gallery</a>
</li>-->
<!-- li end -->

<!-- Blog Menu-->
<!-- <li>
<a class="menu-item" href="{{route('guest')}}" >GuestBook</a>
</li> -->
<!-- li end -->


<!-- Contacts Menu -->
<li>
<a class="menu-item" href="{{route('contacts')}}" >Contacts</a>
</li>
<!-- li end -->

</ul>
<!-- ul end -->
</div>
<!-- /.navbar-collapse -->
</div>
<!-- /.container-fluid -->
</nav>
</header>
@push('scripts')
<script>
    $('.user').click(function () {
        event.preventDefault();
        $('.logout').css('display','block');
        
    });

    $(document).click(function () {

        
            $('.logout').css('display','none');
        
        
    });

   
</script>
    
@endpush