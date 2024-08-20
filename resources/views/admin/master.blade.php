
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from mannatthemes.com/dastone/default/ by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 11 Jul 2024 14:35:39 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="utf-8" />
    <title>Dastone - Admin & Dashboard Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="" name="author" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <!-- quill css -->
    <link href="{{ asset('/') }}admin/assets/libs/quill/quill.core.css" rel="stylesheet" type="text/css" />
    <link href="{{ asset('/') }}admin/assets/libs/quill/quill.bubble.css" rel="stylesheet" type="text/css" />
    <link href="{{ asset('/') }}admin/assets/libs/quill/quill.snow.css" rel="stylesheet" type="text/css" />


    <!-- App favicon -->
    <link rel="shortcut icon" href="{{ asset('/') }}admin/assets/images/favicon.ico">

    <link href="{{ asset('/') }}admin/plugins/select2/select2.min.css" rel="stylesheet" type="text/css" />

    <!-- jvectormap -->
    <link href="{{ asset('/') }}admin/plugins/jvectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet">
    <link href="{{ asset('/') }}admin/plugins/huebee/huebee.min.css" rel="stylesheet" type="text/css" />
    <link href="{{ asset('/') }}admin/plugins/timepicker/bootstrap-material-datetimepicker.css" rel="stylesheet">
    <link href="{{ asset('/') }}admin/plugins/bootstrap-touchspin/css/jquery.bootstrap-touchspin.min.css" rel="stylesheet" />


    <!-- App css -->
    <link href="{{ asset('/') }}admin/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="{{ asset('/') }}admin/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <link href="{{ asset('/') }}admin/assets/css/metisMenu.min.css" rel="stylesheet" type="text/css" />
    <link href="{{ asset('/') }}admin/plugins/daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css" />
    <link href="{{ asset('/') }}admin/assets/css/app.min.css" rel="stylesheet" type="text/css" />

</head>

<body class="">
<!-- Left Sidenav -->
@include('admin.include.left-sidebar')
<!-- end left-sidenav-->


<div class="page-wrapper">
    <!-- Top Bar Start -->
@include('admin.include.header')
<!-- Top Bar End -->

    <!-- Page Content-->
    <div class="page-content">
        <div class="container-fluid">
            <!-- Page-Title -->
            @yield('body')


        </div><!-- container -->

        @include('admin.include.footer')
    </div>
    <!-- end page content -->
</div>
<!-- end page-wrapper -->




<!-- jQuery  -->
<script src="{{ asset('/') }}admin/assets/js/jquery.min.js"></script>
<script src="{{ asset('/') }}admin/assets/js/bootstrap.bundle.min.js"></script>
<script src="{{ asset('/') }}admin/assets/js/metismenu.min.js"></script>
<script src="{{ asset('/') }}admin/assets/js/waves.js"></script>
<script src="{{ asset('/') }}admin/assets/js/feather.min.js"></script>
<script src="{{ asset('/') }}admin/assets/js/simplebar.min.js"></script>
<script src="{{ asset('/') }}admin/assets/js/moment.js"></script>
<script src="{{ asset('/') }}admin/plugins/daterangepicker/daterangepicker.js"></script>

<script src="{{ asset('/') }}admin/plugins/apex-charts/apexcharts.min.js"></script>
<script src="{{ asset('/') }}admin/plugins/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
<script src="{{ asset('/') }}admin/plugins/jvectormap/jquery-jvectormap-us-aea-en.js"></script>
<script src="{{ asset('/') }}admin/assets/pages/jquery.analytics_dashboard.init.js"></script>

<script src="{{ asset('/') }}admin/plugins/select2/select2.min.js"></script>
<script src="{{ asset('/') }}admin/plugins/huebee/huebee.pkgd.min.js"></script>
<script src="{{ asset('/') }}admin/plugins/timepicker/bootstrap-material-datetimepicker.js"></script>
<script src="{{ asset('/') }}admin/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
<script src="{{ asset('/') }}admin/plugins/bootstrap-touchspin/js/jquery.bootstrap-touchspin.min.js"></script>

<script src="{{ asset('/') }}admin/assets/pages/jquery.form-editor.init.js"></script>
<!-- App js -->
<script src="{{ asset('/') }}admin/assets/js/app.js"></script>








<!-- SELECT2 JS -->
<script src="{{ asset('/') }}admin/assets/plugins/select2/select2.full.min.js"></script>
<!-- FORM ELEMENTS JS -->
<script src="{{ asset('/') }}admin/assets/js/formelementadvnced.js"></script>
<!-- INTERNAL Summernote Editor js -->
<script src="{{ asset('/') }}admin/assets/plugins/summernote-editor/summernote1.js"></script>
<script src="{{ asset('/') }}admin/assets/js/summernote.js"></script>

<!-- ckeditor -->
<script src="{{ asset('/') }}admin/assets/libs/%40ckeditor/ckeditor5-build-classic/build/ckeditor.js"></script>

<!-- init js -->
<script src="{{ asset('/') }}admin/assets/js/pages/form-editor.init.js"></script>
</body>


<!-- Mirrored from mannatthemes.com/dastone/default/ by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 11 Jul 2024 14:37:03 GMT -->
</html>
