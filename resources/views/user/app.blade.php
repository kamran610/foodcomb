<!DOCTYPE html>
<html dir="ltr" lang="en-US">

<head>
   @include('user/layouts/head')

</head>

<body class="page-dark">
<div class="preloader">
<div class="spinner">
<div class="bounce1"></div>
<div class="bounce2"></div>
<div class="bounce3"></div>
</div>
</div>
<!-- Document Wrapper
============================================= -->
<div id="wrapper" class="wrapper clearfix">

@include('user/layouts/header')

    @section('main-content')

    @show

<div class="clearfix"></div>
    @include('user/layouts/footer')

</div>
</body>

</html>
