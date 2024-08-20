<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from andit.co/projects/html/andshop/andshop_frontend/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 13 Jun 2024 21:08:39 GMT -->
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Title -->
    <title>Home - AndShop</title>
    <!-- Bootstrap css -->
    <link rel="stylesheet" href="{{ asset('/') }}website/assets/css/bootstrap.min.css" />
    <!-- Fontawesome css -->
    <link rel="stylesheet" href="{{ asset('/') }}website/assets/css/fontawesome.all.min.css" />
    <!-- owl.carousel css -->
    <link rel="stylesheet" href="{{ asset('/') }}website/assets/css/owl.carousel.min.css" />
    <!-- owl.theme.default css -->
    <link rel="stylesheet" href="{{ asset('/') }}website/assets/css/owl.theme.default.min.css" />
    <!-- animate css -->
    <link rel="stylesheet" href="{{ asset('/') }}website/assets/css/animate.min.css" />
    <!-- meanmenu css -->
    <link rel="stylesheet" href="{{ asset('/') }}website/assets/css/meanmenu.min.css" />
    <!-- Style css -->
    <link rel="stylesheet" href="{{ asset('/') }}website/assets/css/style.css" />
    <!-- color css -->
    <link rel="stylesheet" href="{{ asset('/') }}website/assets/css/color.css" />
    <!-- Responsive css -->
    <link rel="stylesheet" href="{{ asset('/') }}website/assets/css/responsive.css" />
    <link rel="apple-touch-icon" sizes="57x57" href="{{ asset('/') }}website/assets/img/favicon/apple-icon-57x57.png" />
    <link rel="apple-touch-icon" sizes="60x60" href="{{ asset('/') }}website/assets/img/favicon/apple-icon-60x60.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="{{ asset('/') }}website/assets/img/favicon/apple-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="{{ asset('/') }}website/assets/img/favicon/apple-icon-76x76.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="{{ asset('/') }}website/assets/img/favicon/apple-icon-114x114.png" />
    <link rel="apple-touch-icon" sizes="120x120" href="{{ asset('/') }}website/assets/img/favicon/apple-icon-120x120.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="{{ asset('/') }}website/assets/img/favicon/apple-icon-144x144.png" />
    <link rel="apple-touch-icon" sizes="152x152" href="{{ asset('/') }}website/assets/img/favicon/apple-icon-152x152.png" />
    <link rel="apple-touch-icon" sizes="180x180" href="{{ asset('/') }}website/assets/img/favicon/apple-icon-180x180.png" />
    <link rel="icon" type="image/png" sizes="192x192" href="{{ asset('/') }}website/assets/img/favicon/android-icon-192x192.png" />
    <link rel="icon" type="image/png" sizes="32x32" href="{{ asset('/') }}website/assets/img/favicon/favicon-32x32.png" />
    <link rel="icon" type="image/png" sizes="96x96" href="{{ asset('/') }}website/assets/img/favicon/favicon-96x96.png" />
    <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('/') }}website/assets/img/favicon/favicon-16x16.png" />
    <link rel="manifest" href="{{ asset('/') }}website/assets/img/favicon/manifest.json" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="msapplication-TileImage" content="{{ asset('/') }}website/assets/img/favicon/ms-icon-144x144.png" />
    <meta name="theme-color" content="#ffffff" />
</head>

<body>
<!-- Preloader Area -->
<div id="preloader">
    <div id="status">
        <img src="{{ asset('/') }}website/assets/img/loader.gif" alt="img" />
    </div>
</div>

<!-- Top Header Area -->
@include('website.include.header')

<!-- Navebar Area -->


<!-- Search Area -->
@yield('body')
<!-- footer Area -->
@include('website.include.footer')

<!-- CopyRight Area -->
<section id="copyright_one">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-12">
                <div class="copyright_left">
                    <h6>© CopyRight 2022
                        <span>AndShop</span>
                    </h6>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-12">
                <div class="copyright_right">
                    <img src="{{ asset('/') }}website/assets/img/common/payment.png" alt="img" />
                </div>
            </div>
        </div>
    </div>
</section>

<!-- cookie bar start -->
<div class="cookie-bar">
    <p>We use cookies to improve our site and your shopping experience. By continuing to browse our site you accept
        our cookie policy.</p>
    <a href="javascript:void(0)" class="btn theme-btn-one bg-black btn_sm">accept</a>
    <a href="javascript:void(0)" class="btn theme-btn-one bg-black btn_sm">decline</a>
</div>
<!-- cookie bar end -->

<!-- Newsletter Modal Area Start-->
<div class="modal fade bd-example-modal-lg theme-modal" id="exampleModal" tabindex="-1" role="dialog"
     aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-body modal1 modal-bg">
                <div class="row">
                    <div class="col-12">
                        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>

                    </div>
                    <div class="col-lg-12">
                        <div class="row">
                            <div class="col-lg-7 col-md-12">
                                <div class="offer_modal_left">
                                    <img src="{{ asset('/') }}website/assets/img/logo.png" alt="logo">
                                    <h3>SUBSCRIBE TO NEWSLETTER</h3>
                                    <p>Subscribe to the Andshop mailing list to receive updates
                                        on new arrivals, special offers and our promotions.</p>
                                    <form action="#!">
                                        <div class="input-group mb-3">
                                            <input type="text" class="form-control"
                                                   placeholder="Recipient's username">
                                            <div class="input-group-append">
                                                <button
                                                    class="theme-btn-one btn-black-overlay btn_sm">Subscribe</button>
                                            </div>
                                        </div>
                                        <div class="check_boxed_modal">
                                            <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
                                            <label for="vehicle1">Don't show this popup again</label>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-lg-5 col-md-12">
                                <div class="offer_modal_img d-none d-lg-block">
                                    <img src="{{ asset('/') }}website/assets/img/common/modal.png" alt="img">
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Product Modal Area Start-->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="product_one_modal_top modal-content">
            <button type="button" class="close close_modal_icon" data-bs-dismiss="modal" aria-label="Close">
                <span aria-hidden="true"><i class="fas fa-times"></i></span>
            </button>
            <div class="modal-body" id="product_slider_one">
                <div class="row">
                    <div class="col-lg-5 col-md-6 col-sm-12 col-12">
                        <div class="products_modal_sliders owl-carousel owl-theme">
                            <img src="{{ asset('/') }}website/assets/img/product-image/product1.png" alt="img" />
                            <img src="{{ asset('/') }}website/assets/img/product-image/product2.png" alt="img" />
                            <img src="{{ asset('/') }}website/assets/img/product-image/product3.png" alt="img" />
                            <img src="{{ asset('/') }}website/assets/img/product-image/product4.png" alt="img" />
                            <img src="{{ asset('/') }}website/assets/img/product-image/product5.png" alt="img" />
                            <img src="{{ asset('/') }}website/assets/img/product-image/product6.png" alt="img" />
                            <img src="{{ asset('/') }}website/assets/img/product-image/product7.png" alt="img" />
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-6 col-sm-12 col-12">
                        <div class="modal_product_content_one">
                            <h3>Black fashion handbag JI9023</h3>
                            <div class="reviews_rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <span>(2 Customer Review)</span>
                            </div>
                            <h4>$317.76</h4>
                            <p>
                                Standard dummy text ever since the 1500s, when an unknown printer took a galley of
                                type and scrambled it to make a type specimen.
                            </p>
                            <div class="variable-single-item">
                                <span>Color</span>
                                <div class="product-variable-color">
                                    <label for="modal-product-color-red1">
                                        <input name="modal-product-color" id="modal-product-color-red1"
                                               class="color-select" type="radio" checked="">
                                        <span class="product-color-red"></span>
                                    </label>
                                    <label for="modal-product-color-green3">
                                        <input name="modal-product-color" id="modal-product-color-green3"
                                               class="color-select" type="radio">
                                        <span class="product-color-green"></span>
                                    </label>

                                    <label for="modal-product-color-blue5">
                                        <input name="modal-product-color" id="modal-product-color-blue5"
                                               class="color-select" type="radio">
                                        <span class="product-color-blue"></span>
                                    </label>
                                </div>
                            </div>
                            <form action="#!" id="product_count_form_one">
                                <div class="product_count_one">
                                    <div class="plus-minus-input">
                                        <div class="input-group-button">
                                            <button type="button" class="button" data-quantity="minus"
                                                    data-field="quantity">
                                                <i class="fa fa-minus" aria-hidden="true"></i>
                                            </button>
                                        </div>
                                        <input class="form-control" type="number" name="quantity" value="0" />
                                        <div class="input-group-button">
                                            <button type="button" class="button" data-quantity="plus"
                                                    data-field="quantity">
                                                <i class="fa fa-plus" aria-hidden="true"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <a href="cart.html" class="theme-btn-one btn-black-overlay btn_sm">Add To
                                        Cart</a>
                                </div>
                            </form>
                            <div class="modal_share_icons_one">
                                <h4>SHARE THIS PRODUCT</h4>
                                <div class="posted_icons_one">
                                    <a href="#!"><i class="fab fa-facebook-f"></i></a>
                                    <a href="#!"><i class="fab fa-instagram"></i></a>
                                    <a href="#!"><i class="fab fa-twitter"></i></a>
                                    <a href="#!"><i class="fab fa-linkedin-in"></i></a>
                                    <a href="#!"><i class="fab fa-google-plus-g"></i></a>
                                    <a href="#!"><i class="fab fa-pinterest-p"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Shopingcart Modal Area Start-->
<div class="modal right fade shoppingCartModal" id="shoppingCartModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <div class="modal-body">
                <h3>My Cart (3)</h3>
                <div class="products-cart-content">
                    <div class="products-cart d-flex align-items-center">
                        <div class="products-image">
                            <a href="#"><img src="{{ asset('/') }}website/assets/img/product-image/product1.png" alt="image"></a>
                        </div>
                        <div class="products-content">
                            <h3><a href="#">Coronavirus Face Mask</a></h3>
                            <div class="products-price">
                                <span>1</span>
                                <span>x</span>
                                <span class="price">$39.00</span>
                            </div>
                        </div>
                        <a href="#" class="remove-btn"><i class="fas fa-trash-alt"></i></a>
                    </div>
                    <div class="products-cart d-flex align-items-center">
                        <div class="products-image">
                            <a href="#"><img src="{{ asset('/') }}website/assets/img/product-image/product2.png" alt="image"></a>
                        </div>
                        <div class="products-content">
                            <h3><a href="#">Protective Gloves</a></h3>
                            <div class="products-price">
                                <span>1</span>
                                <span>x</span>
                                <span class="price">$99.00</span>
                            </div>
                        </div>
                        <a href="#" class="remove-btn"><i class="fas fa-trash-alt"></i></a>
                    </div>
                    <div class="products-cart d-flex align-items-center">
                        <div class="products-image">
                            <a href="#"><img src="{{ asset('/') }}website/assets/img/product-image/product3.png" alt="image"></a>
                        </div>
                        <div class="products-content">
                            <h3><a href="#">Infrared Thermometer Gun</a></h3>
                            <div class="products-price">
                                <span>1</span>
                                <span>x</span>
                                <span class="price">$90.00</span>
                            </div>
                        </div>
                        <a href="#" class="remove-btn"><i class="fas fa-trash-alt"></i></a>
                    </div>
                </div>
                <div class="products-cart-subtotal">
                    <span>Subtotal</span>
                    <span class="subtotal">$228.00</span>
                </div>
                <div class="products-cart-btn">
                    <a href="checkout.html" class="theme-btn-one btn-black-overlay btn_md">Checkout</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Wishlist Modal Area Start-->
<div class="modal right fade shoppingWishlistModal" id="shoppingWishlistModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <div class="modal-body">
                <h3>My Wishlist (3)</h3>
                <div class="products-cart-content">
                    <div class="products-cart d-flex align-items-center">
                        <div class="products-image">
                            <a href="#"><img src="{{ asset('/') }}website/assets/img/product-image/product1.png" alt="image"></a>
                        </div>
                        <div class="products-content">
                            <h3><a href="#">Coronavirus Face Mask</a></h3>
                            <div class="products-price">
                                <span>1</span>
                                <span>x</span>
                                <span class="price">$39.00</span>
                            </div>
                        </div>
                        <a href="#" class="remove-btn"><i class="fas fa-trash-alt"></i></a>
                    </div>
                    <div class="products-cart d-flex align-items-center">
                        <div class="products-image">
                            <a href="#"><img src="{{ asset('/') }}website/assets/img/product-image/product2.png" alt="image"></a>
                        </div>
                        <div class="products-content">
                            <h3><a href="#">Protective Gloves</a></h3>
                            <div class="products-price">
                                <span>1</span>
                                <span>x</span>
                                <span class="price">$99.00</span>
                            </div>
                        </div>
                        <a href="#" class="remove-btn"><i class="fas fa-trash-alt"></i></a>
                    </div>
                    <div class="products-cart d-flex align-items-center">
                        <div class="products-image">
                            <a href="#"><img src="{{ asset('/') }}website/assets/img/product-image/product3.png" alt="image"></a>
                        </div>
                        <div class="products-content">
                            <h3><a href="#">Infrared Thermometer Gun</a></h3>
                            <div class="products-price">
                                <span>1</span>
                                <span>x</span>
                                <span class="price">$90.00</span>
                            </div>
                        </div>
                        <a href="#" class="remove-btn"><i class="fas fa-trash-alt"></i></a>
                    </div>
                </div>
                <div class="products-cart-subtotal">
                    <span>Subtotal</span>
                    <span class="subtotal">$228.00</span>
                </div>
                <div class="products-cart-btn">
                    <a href="wishlist.html" class="theme-btn-one btn-black-overlay btn_md">Wishlist</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Jquery -->
<script src="{{ asset('/') }}website/assets/js/jquery-3.6.0.min.js"></script>
<!-- Bootstrap js -->
<script src="{{ asset('/') }}website/assets/js/popper.min.js"></script>
<script src="{{ asset('/') }}website/assets/js/bootstrap.min.js"></script>
<!-- owl carousel js -->
<script src="{{ asset('/') }}website/assets/js/owl.carousel.min.js"></script>
<!-- Menu js -->
<script src="{{ asset('/') }}website/assets/js/meanmenu.min.js"></script>
<!-- Count js -->
<script src="{{ asset('/') }}website/assets/js/count.js"></script>
<!-- Timer js -->
<script src="{{ asset('/') }}website/assets/js/timer.js"></script>
<script src="{{ asset('/') }}website/assets/js/nice-select.min.js"></script>
<!-- wow.js -->
<script src="{{ asset('/') }}website/assets/js/wow.min.js"></script>
<!-- Custom js -->
<script src="{{ asset('/') }}website/assets/js/custom.js"></script>
<script>
    new WOW().init();
</script>
</body>


<!-- Mirrored from andit.co/projects/html/andshop/andshop_frontend/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 13 Jun 2024 21:09:19 GMT -->
</html>

