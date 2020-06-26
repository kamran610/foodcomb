@extends('user/app-grey')

@section('main-content')



<!-- Page Title #4
============================================= -->
<section id="page-title" class="page-title bg-overlay bg-parallax bg-overlay-gradient">
    <div class="bg-section">
        <img src="{{asset('user/assets/images/page-title/6.jpg')}}" alt="Background" />
    </div>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="title title-4 text-center">
                    <div class="title--content">
                        <div class="title--subtitle">Products</div>
                        <div class="title--heading">
                            <h1>Shopping Cart</h1>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <ol class="breadcrumb">
                        <li class="active">Cart</li>
                    </ol>
                    <div class="divider--shape-1down divider--shape-gray"></div>
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

<!-- Shop Cart
============================================= -->
<section id="shopcart" class="shop shop-cart bg-gray">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="cart-table table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr class="cart-product">
                                <th class="cart-product-item">Product</th>
                                <th class="cart-product-price">Price</th>
                                <th class="cart-product-quantity">Quantity</th>
                                <th class="cart-product-total">Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="cart-product">
                                <td class="cart-product-item">
                                    <div class="cart-product-remove">
                                        <i class="fa fa-close"></i>
                                    </div>
                                    <div class="cart-product-img">
                                        <img src="{{asset('user/assets/images/shop/thumb/1.jpg')}}" alt="product" />
                                    </div>
                                    <div class="cart-product-name">
                                        <h6>Roast Sea Trout</h6>
                                    </div>
                                </td>
                                <td class="cart-product-price">$34.95</td>
                                <td class="cart-product-quantity">
                                    <div class="product-quantity">
                                        <a href="#"><i class="fa fa-minus"></i></a>
                                        <input type="text" value="1" id="pro1-qunt" readonly>
                                        <a href="#"><i class="fa fa-plus"></i></a>
                                    </div>
                                </td>
                                <td class="cart-product-total">$34.95</td>
                            </tr>
                            <tr class="cart-product">
                                <td class="cart-product-item">
                                    <div class="cart-product-remove">
                                        <i class="fa fa-close"></i>
                                    </div>
                                    <div class="cart-product-img">
                                        <img src="{{asset('user/assets/images/shop/thumb/2.jpg')}}" alt="product" />
                                    </div>
                                    <div class="cart-product-name">
                                        <h6>Roasted Steak Roulade</h6>
                                    </div>
                                </td>
                                <td class="cart-product-price">$54.95</td>
                                <td class="cart-product-quantity">
                                    <div class="product-quantity">
                                        <a href="#"><i class="fa fa-minus"></i></a>
                                        <input type="text" value="1" id="pro2-qunt" readonly>
                                        <a href="#"><i class="fa fa-plus"></i></a>
                                    </div>
                                </td>
                                <td class="cart-product-total">$54.95</td>
                            </tr>
                            <tr class="cart-product-action">
                                <td colspan="4">
                                    <div class="row clearfix">
                                        <div class="col-xs-12 col-sm-6 col-md-6">
                                            <form class="form-inline">
                                                <input type="text" class="form-control" id="coupon" placeholder="Coupon Code" />
                                                <button type="submit" class="btn btn--primary">Apply Coupon</button>
                                            </form>
                                        </div>
                                        <!-- .col-md-6 end -->
                                        <div class="col-xs-12 col-sm-6 col-md-6 text-right">
                                            <a class="btn btn--secondary" href="#">update cart</a>
                                            <a class="btn btn--primary" href="#">Checkout</a>
                                        </div>
                                        <!-- .col-md-6 end -->
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- .cart-table end -->
            </div>
            <!-- .col-md-12 end -->
          
            <div class="col-xs-12 col-sm-12  col-md-6">
                <div class="cart-total-amount">
                    <h6>Cart Totals :</h6>
                    <ul class="list-unstyled">
                        <li>Cart Subtotal :<span class="pull-right text-right">$ 189.00</span></li>
                        <li>Shipping :<span class="pull-right text-right">Free Shipping</span></li>
                        <li>Order Total :<span class="pull-right text-right">$ 189.00</span></li>
                    </ul>
                </div>
                <!-- .cart-total-amount end -->
            </div>
            <!-- .col-md-6 end -->
        </div>
        <!-- .row end -->
    </div>
    <!-- .container end -->
</section>
<!-- #shopcart end -->


@endsection