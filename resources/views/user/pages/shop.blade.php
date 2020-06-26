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
                        <div class="title-shop">Our Shop</div>
                            <div class="slider__input">



                                           <select name="area_id" class="location" id="area_id">
                                               <option value="" disabled selected hidden>Select Area</option>
                                               @foreach($areas as $area)
                                                  <option value="{{$area->id}}">{{$area->name}}</option>
                                               @endforeach
                                           </select>
                                           <br>
                                           <br>
                                           <br>
                                           <select name="restaurant_id" class="restaurant_select" id="restaurant_id">
                                               <option value="" disabled selected hidden>Choose A Restaurant</option>
                                           </select>

                                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <button class="btn btn-explore explore">Explore</button>
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

<!-- Shop #4
============================================= -->
<section id="shop" class="shop shop-4 bg-gray pb-90" style="position: relative">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-8 col-md-8">
                <div class="row">
                    <!-- Projects Filter
                    ============================================= -->
                    <div class="col-xs-12 col-sm-12  col-md-12 shop-filter">
                        <ul class="list-inline">
                            @foreach($foodCategories as $category)
                                <li><a href="#" data-filter=".{{$category->id}}">{{$category->name}}</a></li>
                            @endforeach
                           
                        </ul>
                    </div>
                    <!-- .projects-filter end -->
                </div>
                <!-- .row end -->
                <div id="shop-all" class="row">
                    <h1 style="margin-left:35%;">Please select a restaurant </h1>

                </div>
                <!-- .row end -->


            
            </div>

        </div>
             <!-- .row end -->
    </div>
    <!-- .container end -->


                <div class="side-bar">
                    <h3 class="basket-heading">Your Cart</h3>

                    <table class="table table-bordered">
                        <thead>
                            <tr class="cart-product">
                                <th class="cart-product-item">Product</th>
                                <th class="cart-product-price">Price</th>
                                <th class="cart-product-quantity">Quantity</th>
                                <th class="cart-product-total">Total</th>
                            </tr>
                        </thead>
                        <tbody id="cart-table">

                         <tr class="cart-product-action">
                                <td colspan="4">
                                    <div class="row clearfix">
                                        <div class="col-xs-12 col-sm-6 col-md-6">

                    <h5>Cart Totals :</h5>
                    <ul class="list-unstyled">
                        <li>Sub-total :<span class="pull-right text-right" id="cart_total">Tk 0.00</span></li>
                        <li>Delivery :<span class="pull-right text-right">Tk 45</span></li>
                        <li>Order Total :<span class="pull-right text-right" id="cart_subtotal">Tk 0.00</span></li>
                    </ul>
                    </div>
                    <!-- .col-md-6 end -->
                                        <a style="float:right; top:50px; right: 15px" class="btn btn--primary" id="confirm_order">Confirm Order</a>

                                    </div>

                                </td>
                            </tr>
                        </tbody>
                    </table>

                </div>

            <!-- Modal -->
            <div id="myModal" class="modal fade" role="dialog">
              <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Customer Information</h4>
                  </div>
                  <div class="modal-body">
                    <div class="form-section" style="padding: 25px;">
                        <h5>Please provide below information</h5>

                        <p id="customerInfoWarning"  style="display:none; color:red;">Please fill all the infos</p>
                        <form action="/action_page.php">
                                <div class="form-group">
                                    <label for="customerName">Name:</label>
                                    <input type="text" class="form-control" name="name" id="customerName">
                                </div>
                                <div class="form-group">
                                    <label for="customerAddress">Address:</label>
                                    <input type="text" class="form-control" name="address" id="customerAddress">
                                </div>

                                <div class="form-group">
                                    <label for="customerPhone ">Phone Number:</label>
                                    <input type="text" class="form-control" name="phone" id="customerPhone">
                                </div>
                                
                                <!-- <button type="submit" class="btn btn-default pull-right">Submit</button> -->
                        
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button id="submitCustomerInfo" class="btn btn-default">Submit</button>
                    </form>
                  </div>
                </div>

              </div>
            </div>

</section>
<!-- #shop end -->
@endsection

@push('scripts')
<script type="text/javascript">
    var restaurants = '<?=json_encode($restaurants)?>';
    var already_added = [];
    var selected_restaurant = [];
    var food_price_list = [];
    var cart_info = {};

    $( document ).ready(function() {

    $('#area_id').change(() => {
        console.log('hello');
        var area_id = $('#area_id').val();
        console.log(area_id);
        var available_restaurants = 0;
        var obj = JSON.parse(restaurants);
        var html ='';
        obj.forEach(element => {
            console.log(element);
            if (Number(area_id) === element.area_id) {
                html += '<option value="'+element.id+'">'+element.name+'</option>';  

                available_restaurants += 1;  
            } 
            
        });
        
        if(available_restaurants === 0){
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'No restaurants available at that area.'
                })
            }
       
        
        $('#restaurant_id').html(html);
    });
      $('.explore').on("click", () => {
        event.preventDefault();
        var area_id = $('#area_id').val();
        var restaurant_id = $('#restaurant_id').val();
        var food_family_id = $(event.target).data('food_family_id');

        console.log(area_id);
        console.log(restaurant_id);
        console.log(food_family_id);

        $.ajax({
          url: "{{url('getItems')}}",
          method: "POST",
          data:{
            area_id:area_id,
            restaurant_id:restaurant_id,
            food_family:food_family_id,
          },
          success: function (data) {
            console.log(data);

            var list_item = '';



                $.each(data, function(i, value) {
                  var food_type_splitted = value.food_type.split(" - ");
                  var image_link = "<?= url('') ?>"
                    console.log(image_link+'/'+value.food_image);
                    
                  list_item += '<div class="col-xs-12 col-sm-6 col-md-3 productFilter '+value.category_id+'">'+
                                      '<div class="product-item">'+
                                          '<div class="product--img">'+
                                              '<img src="'+ image_link+'/'+value.food_image +'" alt="Product" />'+
                                              '<div class="product--hover">'+
                                                   '<div class="product--action">'+
                                                      '<a class="add-to-cart" onclick="cart_add_function()" data-food_name="'+value.name+'" data-food_price="'+value.price+'"  data-food_id="'+value.id+'" data-food_restaurant_id="'+value.restaurant_id+'">Add to Cart</a>'+
                                                  '</div>'+
                                              '</div>'+
                                              '<div class="divider--shape-1down"></div>'+
                                          '</div>'+
                                          '<div class="product--content">'+
                                              '<div class="product--type">'+
                                                  '<span>Organic</span>'+
                                              '</div>'+
                                              '<div class="product--title">'+
                                                  '<h3><a href="#">'+value.name+'</a></h3>'+
                                              '</div>'+
                                              '<div class="product--price">'+
                                                  '<span>Price: Tk '+value.price+'</span>'+
                                              '</div>'+
                                          '</div>'+
                                      '</div>'+
                                  '</div>';
                });
            $('#shop-all').html();
            $('#shop-all').html(list_item);
          }
        })
      });
    });
    function removeFood(foodName, foodMenuId, foodPrice){
        event.preventDefault();

        var $button = $(event.target);
        var oldValue = $button.closest('.cart-product').remove();
        console.log('Clicked remove');
        cart_info[foodMenuId] = null;

        var attributes_mushed = foodMenuId + '_' + foodPrice + '_' + foodName;
        already_added = already_added.filter(e => e != attributes_mushed);
        food_price_list.splice(food_price_list.indexOf(foodPrice),1)
        console.log(attributes_mushed);
        console.log(already_added);
        update_total_cart();
        
    };
    function cart_add_function() {
      event.preventDefault();
      console.log('Hello');
      var food_menu_id = $(event.target).data('food_id');
      var food_price = $(event.target).data('food_price');
      var food_name = $(event.target).data('food_name');
      var food_restaurant_id = $(event.target).data('food_restaurant_id');

        console.log(selected_restaurant.length);
        
      if( selected_restaurant.length < 1 || selected_restaurant.includes(food_restaurant_id)){
        selected_restaurant.push(food_restaurant_id);
      } else{
        return;
      }

      var attributes_mushed = food_menu_id + '_' + food_price + '_' + food_name;
      console.log(already_added);
      if (already_added.includes(attributes_mushed)) {
        return;
      } else{
        already_added.push(attributes_mushed);
        food_price_list.push(food_price);
      }



      

      

      var id = 'cart_table';
      var food_row = '<tr class="cart-product">'+
                        '<td class="cart-product-item">'+
                            '<a  onclick="removeFood(\''+food_name+'\',\''+food_menu_id+'\',\''+food_price+'\')">'+
                                '<div class="cart-product-remove">'+
                                    '<i class="fa fa-close"></i>'+
                                '</div>'+
                            '</a>'+
                            '<div class="cart-product-name">'+
                                '<h6>'+food_name+'</h6>'+
                            '</div>'+
                        '</td>'+
                        '<td class="cart-product-price">Tk'+food_price+'</td>'+
                        '<td class="cart-product-quantity">'+
                            '<div class="product-quantity">'+
                                '<a onclick="food_quantity_decrement()"><i class="fa fa-minus"></i></a>'+
                                  '<input type="text" value="1" data-food_id="'+food_menu_id+'" data-item_price="'+food_price+'" id="pro1-qunt" readonly>'+
                                '<a onclick="food_quantity_increment()"><i class="fa fa-plus"></i></a>'+
                            '</div>'+
                        '</td>'+
                        '<td class="cart-product-total single_item_total" data-item_total="'+food_price+'">TK'+food_price+'</td>'+
                    '</tr>';
        var food_map = {
          'food_id': food_menu_id,
          'food_name': food_name,
          'food_price': food_price,
          'quantity':1,
          'food_restaurant_id':food_restaurant_id
        }

        cart_info[food_menu_id] = food_map;
        $('#cart-table').prepend(food_row);
        update_total_cart();
    }

    function food_quantity_increment() {
      event.preventDefault();
      var $button = $(event.target);

      var oldValue = $button.parent().parent().find('input').val();
      if (oldValue <= 5) {
        var newValue = Number(oldValue) + 1;
      } else {
        var newValue = oldValue;
      }
      $button.parent().parent().find('input').val(newValue);

      var basePrice = $button.parent().parent().find('input').data('item_price');
      var itemId = $button.parent().parent().find('input').data('food_id');

      var itemTotal = Number(basePrice) * Number(newValue);
      $button.parent().parent().parent().parent().find('.cart-product-total').html("Tk"+itemTotal);
      $button.parent().parent().parent().parent().find('.cart-product-total').data("item_total");

      cart_info[itemId]["quantity"] = newValue;
      update_total_cart();
    }

    function food_quantity_decrement() {
      event.preventDefault();
      var $button = $(event.target);

      var oldValue = $button.parent().parent().find('input').val();
      if (oldValue > 1) {
        var newValue = Number(oldValue) - 1;
      } else{
        var newValue = oldValue
      }

      $button.parent().parent().find('input').val(newValue);

      var basePrice = $button.parent().parent().find('input').data('item_price');
      var itemId = $button.parent().parent().find('input').data('food_id');
      var itemTotal = Number(basePrice) * Number(newValue);
      $button.parent().parent().parent().parent().find('.cart-product-total').html("Tk"+itemTotal);
      $button.parent().parent().parent().parent().find('.cart-product-total').data("item_total",itemTotal);

      var item_total = $button.parent().parent().parent().parent().find('.cart-product-total').data('item_total');
      cart_info[itemId]["quantity"] = newValue;
      update_total_cart();
    }



    function update_total_cart() {


      var $all_item_total = $('.single_item_total');

      var total_price = 0;
      var sub=0;
      $.each(cart_info, function(index, value){
          if (value === null) {
              return;
          }
        total_price += value.food_price * value.quantity ;
      });
      sub =total_price + 45; 
      console.log(total_price);

      $('#cart_total').html('Tk '+total_price);
      $('#cart_subtotal').html('Tk '+sub);
    }


    $('#confirm_order').on('click', function() {
      event.preventDefault();
      console.log('hello');
      
      @if(!$userLoggedIn)
        const swalWithBootstrapButtons = Swal.mixin({
            customClass: {
                confirmButton: 'btn btn-success <?php echo $userLoggedIn?>',
                cancelButton: 'btn btn-info'
            },
            buttonsStyling: false
        });

      swalWithBootstrapButtons.fire({
            icon: 'question',
            title: 'User Info required',
            text: 'register as a user or login',
            footer: '<a href>Why do I have this issue?</a>',
            confirmButtonText: 'Register',
            cancelButtonText: 'Login',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
        }).then((result) => {
            console.log(result);
            
            if (result.value) {
                var area_id = $('#area_id').val();
                var restaurant_id = $('#restaurant_id').val();

                var data = {
                            area_id:area_id,
                            restaurant_id:restaurant_id,
                            cart_info:cart_info,
                        };
                localStorage.setItem("cart_info", JSON.stringify(data));    
                window.location.href = "{{url('')}}/register";

                
            } else if(result.dismiss === Swal.DismissReason.cancel) {
                var data = {
                            area_id:area_id,
                            restaurant_id:restaurant_id,
                            cart_info:cart_info,
                        };
                localStorage.setItem("cart_info", JSON.stringify(data));

                window.location.href = "{{url('')}}/login";

            }
        }); 
      @else
            submitOrder('{{Auth::user()->name}}','Sylhet Bangladesh','01637765144');
      @endif
    });

    function submitOrder(customerName, customerAddress, customerPhone){
        event.preventDefault();
        console.log('customer-info-clicked');
        
        var area_id = $('#area_id').val();
        var restaurant_id = $('#restaurant_id').val();
        var customerName = $('#customerName').val();
        var customerAddress = $('#customerAddress').val();
        var customerPhone = $('#customerPhone').val();
        
        if (0) {
            $('#customerInfoWarning').css('display', 'block');
        } else {
            
            $.ajax({
                url: "{{url('order')}}",
                method: "POST",
                data:{
                    area_id:area_id,
                    restaurant_id:restaurant_id,
                    cart_info:cart_info,
                    customer_name: customerName,
                    customer_address: customerAddress,
                    customer_phone: customerPhone,
                    order_from: {{Auth::check() ? Auth::user()->id: 0}},
                },
                success: function (datarecvd) {
                    Swal.fire({
                        icon: 'success',
                        title: 'Your Order has been placed.',
                        showConfirmButton: true
                    })
                    console.log(datarecvd);
                }
            });
        }
        
    };
</script>
@endpush
