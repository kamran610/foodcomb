@extends('user/app')

@section('main-content')


<!-- Page Title #4
============================================= -->
<section id="page-title" class="page-title bg-overlay bg-parallax bg-overlay-gradient">
    <div class="bg-section">
        <img src="{{asset('user/assets/images/page-title/10.jpg')}}" alt="Background" />
    </div>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="title title-4 text-center">
                    <div class="title--content">
                        <div class="title--subtitle">Contact us</div>
                        <div class="title--heading">
                            <h1>Get In Toutch</h1>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <ol class="breadcrumb">
                        <li class="active">Contact</li>
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

<!-- Contact #1
============================================= -->
<section id="contact1" class="contact contact-1">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="contact--desc">
                                <p>FoodComb is an unique restaurent in Sylhet, the resturant was designed with the history in mind we have created a soft industrial dining room, combined with an open kitchen and online delivery system.</p>
                            </div>
                            <div class="row mb-30">
                                <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="contact--info">
                                        <h3>Our Address</h3>
                                        <p>Any Building, At Your Road,</p>
                                        <p>Zindabazar, Sylhet.</p>
                                        <a class="link--styled" href="#">Visit Us</a>
                                    </div>
                                </div>
                                <!-- .col-md-6 end -->
                                <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="contact--info">
                                        <h3>Our Phone</h3>
                                        <p>Office Telephone : +880 1700000000</p>
                                        <p>Mobile : +880 1700000099</p>
                                        <a class="link--styled" href="#">Call Us</a>
                                    </div>
                                </div>
                                <!-- .col-md-6 end -->
                            </div>
                            <!-- .row end -->
                            <div class="row">
                                <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="contact--info">
                                        <h3>Our Email</h3>
                                        <p>Main Email: foodcomb@gmail.com</p>
                                        <p>Inquiries : Info@foodcomb.com</p>
                                        <a class="link--styled" href="#">Send a Message</a>
                                    </div>
                                </div>
                                <!-- .col-md-6 end -->
                                <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="contact--info">
                                        <h3>Follow Us</h3>
                                        <div class="social-icons">
                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                            <a href="#"><i class="fa fa-instagram"></i></a>
                                            <a href="#"><i class="fa fa-tripadvisor"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <!-- .col-md-6 end -->
                            </div>
                            <!-- .row end -->
                        </div>
                        <!-- .col-md-3 end -->

                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="contact-form">
                                <form method="post" action="{{url('/contactSubmit')}}" id="contact_form_contact">
                                    {{csrf_field()}}
                                    <div class="row">
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="f_name" id="name" placeholder="First Name:" required>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="l_name" id="last" placeholder="Last Name" required>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="email" class="form-control" name="e_mail" id="email" placeholder="Email:" required>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="phone" id="phone_number" placeholder="Phone:" maxlength="11" size="11" required>
                                        </div>
                                        <div class="col-md-12">
                                            <textarea class="form-control" name="message" id="message" rows="2" placeholder="Message" required></textarea>
                                        </div>

                                        <div class="col-md-12" style="display:none">
                                            <input value="Send Message" type="submit" id="submit_contact_form_hidden" name="submit" class="btn btn--secondary btn--block mt-10">
                                        </div>

                                        <div class="col-md-12">
                                            <input value="Send Message" id="submit_contact_form" name="submit" class="btn btn--secondary btn--block mt-10">
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-12">
												<!--Alert Message-->
                            					<div class="contact-result"></div>
											</div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- .col-md-6 end -->
                    </div>
                    <!-- .row end -->
                </div>
            </div>
            <!-- .col-md-12 end -->
        </div>
        <!-- .row end -->
    </div>
    <!-- .container end -->
</section>
<!-- #contact1 end -->

@endsection

@push('scripts')


    <script type="text/javascript">
        @if(isset($newContact))
            $( document ).ready(function() {
                swal({
                    title: "Message sent",
                    text: "One of our representative will call you",
                    icon: "success",
                });
            })
        @endif
        
        $( document ).ready(function() {
            
            $("#submit_contact_form").on("click", function(event){
                event.preventDefault();
                var formError = [];

                var phoneNumber = $("#contact_form_contact #phone_number").val();
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
                    console.log("HEllo");
                    
                    $("#submit_contact_form_hidden").trigger( "click" );
                }
            })
        });
    </script>
@endpush