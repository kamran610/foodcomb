@extends('user/app-grey')

@section('main-content')

<!-- Menu
============================================= -->
<section id="page-title" class="page-title bg-overlay bg-parallax bg-overlay-gradient">
    <div class="bg-section">
        <img src="{{asset('user/assets/images/page-title/7.jpg')}}" alt="Background" />
    </div>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="title title-4 text-center">
                    <div class="title--content">
                        <div class="title--subtitle">Discover</div>
                        <div class="title--heading">
                            <h1>Our Menu</h1>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <ol class="breadcrumb">
                        <li><a class="active">Menu</a>
                        </li>
                        
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

<!-- Heading #1
============================================= -->
<section id="heading1" class="heading heading-1 bg-white">
    <div class="container">
        <div class="row clearfix">
            <div class="col-xs-12 col-sm-12 col-md-8 col-md-offset-2">
                <div class="text--center">
                    <p class="heading--subtitle">Taste the best</p>
                    <h2 class="heading--title mb-0">Fresh Ingredient, Tasty Meals</h2>
                    <div class="divider--shape-4"></div>
                    <p class="heading--desc">Everyone has taste, even if they don't realize it. Even if you're not a great chef, there's nothing to stop you understanding the difference between what tastes good and what doesn't.</p>
                </div>
            </div>
            <!-- .col-md-8 end -->
        </div>
        <!-- .row end -->
    </div>
    <!-- .container end -->
</section>
<!-- #heading1 end -->


@foreach($arr as $key => $menuGroup)
@php
    $firstElem = array_values($menuGroup)[0];
@endphp

<!-- Divider #1
============================================= -->
<section id="divider1" class="section-divider bg-overlay bg-parallax bg-overlay-dark4">
    <div class="bg-section">
        <img src="{{asset('user/assets/images/background/6.jpg')}}" alt="Background" />
    </div>
    <div class="container">
        <div class="divider--shape-1up"></div>
        <div class="row clearfix">
            <div class="col-xs-12 col-sm-12 col-md-8 col-md-offset-2">
                <div class="heading heading-3 text--center">
                    <p class="heading--subtitle">{{ $firstElem->item_group_description }}</p>
                    <h2 class="heading--title mb-0 text-white">{{$firstElem->item_group}} Menu</h2>
                </div>
            </div>
            <!-- .col-md-8 end -->
        </div>
        <!-- .row end -->
        
    </div>
    <!-- .container end -->
</section>
<!-- #divider1 end -->

<!-- Menu #2
============================================= -->
<section id="menu2" class="menu menu-2 bg-white pb-60">
    <div class="container">
        <div class="row">

        @foreach($menuGroup as $single_menu)
            <!-- Dish #1 -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="dish-panel">

                    <div class="dish--img">
                    <img src="{{url($single_menu->item_image)}}" alt="Dish Image">


                        <div class="dish--overlay">
                            <a class="dish-popup" data-toggle="modal" data-target="#dishPopup_{{$single_menu->id}}"><i class="fa fa-search-plus"></i></a>
                                <div class="modal fade" tabindex="-1" role="dialog" id="dishPopup_{{$single_menu->id}}">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-body">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fa fa-times"></i></button>

                                                <div class="row reservation">
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="img-popup">
                                   <img src="{{url($single_menu->item_image)}}" alt="dish img">

            <div class="img-popup-overlay">
                    <div class="popup--price">TK. {{$single_menu->item_price}}</div>
                 <h3 class="popup--title">{{$single_menu->item_name}}</h3>
                                 </div>
                             </div>   
                         </div>
                                                    <!-- .col-md-12 end -->
                <div class="col-xs-12 col-sm-12 col-md-12">
                             <div class="content-popup">
                                        <p>{{$single_menu->item_description}}</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- .row end -->
                                            </div>
                                            
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                </div>
                                <!-- /.modal -->
                        </div>
                        
                    </div>

                    <div class="dish--content">
                        <h3 class="dish--title">{{$single_menu->item_name}}</h3>
                        <span class="dish--price">TK. {{$single_menu->item_price}}</span>
                        <p class="dish--desc">{{$single_menu->item_description}}</p>
                    </div>
                    
                </div>
                <!-- .dish end -->
            </div>
        @endforeach

        </div>
        <!-- .row end -->
    </div>
    <!-- .container end -->
</section>
<!-- #menu2 end -->
@endforeach

@endsection