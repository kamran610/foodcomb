@extends('user/app')

@section('main-content')

<!-- Page Title #4
============================================= -->
<section id="page-title" class="page-title bg-overlay bg-parallax bg-overlay-gradient">
    <div class="bg-section">
        <img src="{{asset('user/assets/images/page-title/5.jpg')}}" alt="Background" />
    </div>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="title title-4 text-center">
                    <div class="title--content">
                        <div class="title--subtitle">Book a table</div>
                        <div class="title--heading">
                            <h1>Online Reservation</h1>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <ol class="breadcrumb">
                        <li class="active">Reservation</li>
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

<!-- Reservation #1
============================================= -->
<section id="reservation1" class="reservation bg-white pt-0 pb-0">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1">
                <div class="reservation-form mt-10 mb-10 text-center">
                    <div class="reservation--dec">
                        You can Book a table online easily in just a couple of minutes. We take reservations for lunch and dinner, just check the availability of your table & book it now!
                    </div>
                    <form method="post" action="{{url('/makereservation')}}" id="reserve_form">
                        {{csrf_field()}}
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="select-branch">
                                    <i class="fa fa-angle-down"></i>
                                    <select class="form-control" name="res-branch" id="branch">
                                           <option value="" disabled selected hidden>Select Branch</option>
                                           @foreach ($available_areas as $area)
                                                <option value="{{$area->id}}">{{$area->name}}</option>
                                                
                                                @if( $area->id > 1 )
                                                @break
                                            @endif

                                           @endforeach
                                </select>
                            </div>

                            <div class="col-xs-12 col-sm-12 col-md-4">
                                <div class="form-select">
                                    <i class="fa fa-angle-down"></i>
                                    <select class="form-control" name="res-pepole" id="num">
									<option value="1">1 People</option>
                                    <option value="2">2 People</option>
									<option value="3">3 People</option>
									<option value="4">4 People</option>
									<option value="5">5 People</option>
									<option value="6">6 People</option>
									<option value="8">8 People</option>
									<option value="10">10 People</option>
								</select>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-4">
                                <div class="form-select">
                                    <i class="fa fa-angle-down"></i>
                                    <input class="form-control" type="date" name="date">
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-4">
                                <div class="form-select">
                                    <i class="fa fa-angle-down"></i>
                                    <select class="form-control" name="res-time" id="time">
									<option value="10:00">10:00 am</option>
                                    <option value="11:00">11:00 am</option>
                                    <option value="12:00">12:00 PM</option>
                                    <option value="01:00">01:00 PM</option>
                                    <option value="02:00">02:00 PM</option>
									<option value="03:00">03:00 PM</option>
									<option value="08:00">08:00 PM</option>
                                    <option value="09:00">09:00 PM</option>
                                    <option value="10:00">10:00 PM</option>
								</select>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-4">
                                <input type="text" class="form-control" name="res-name" id="name" placeholder="Your Name" required>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-4">
                                <input type="email" class="form-control" name="res-email" id="email" placeholder="Email">
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" name="contact-phone" id="phone_number" placeholder="Phone Number" required>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <textarea class="form-control" name="res-message" id="message" rows="2" placeholder="Add a special request (optional)"></textarea>
                            </div>

                            <div class="col-xs-12 col-sm-12 col-md-12" style="display:none">
                                <button type="submit" id="submit_reserve_form_hidden" name="submit" class="btn">Find Table</button>
                            </div>


                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <button id="submit_reserve_form" name="submit" class="btn">Find Table</button>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12">
												<!--Alert Message-->
                            					<div class="reservation-result"></div>
											</div>
                        </div>
                        <!-- .row end -->
                    </form>
                    <!-- form end -->
                </div>
                <!-- .contact-form end -->
            </div>
            <!-- .col-md-8 end -->
        </div>
        <!-- .row end -->
    </div>
    <!-- .container end -->
</section>
<!-- #reservation1 end -->

@endsection

@push("scripts")
<script type="text/javascript">

@if(isset($new_reservation))
    $( document ).ready(function() {
        swal({
            title: "Reservation made",
            text: "One of our representative will call you to confirm the reservation.",
            icon: "success",
        });
    })
@endif
</script>

<script type="text/javascript">
        $( document ).ready(function() {
            
            $("#submit_reserve_form").on("click", function(event){
                event.preventDefault();
                var formError = [];

                var phoneNumber = $("#reserve_form #phone_number").val();
                var phoneNumberRegex = /^\d{11}$/;
                console.log(phoneNumber);
                
                if(phoneNumber.match(phoneNumberRegex)){
                } else{
                    formError.push("Please check your phone number");
                }

                console.log(formError);
                if (formError.length > 0) {
                    
                    formError.map((err) => {
                        alert(err);
                    })
                } else{
                    $("#submit_reserve_form_hidden").trigger('click');
                }
            })
        });
    </script>
@endpush