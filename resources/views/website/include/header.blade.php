<div class="top-header">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6 col-md-7">
                <ul class="top-header-contact-info">
                    <li><i class="fas fa-phone-volume"></i> <a href="tel:+1234567898">(+123) 456-7898</a></li>
                    <li><i class="fas fa-street-view"></i> <a href="#" target="_blank">6890 Blvd, The Bronx, NY
                            1058, USA</a>
                    </li>
                </ul>
            </div>
            <div class="col-lg-6 col-md-5">
                <ul class="top-header-menu">
                    <li>
                        <div class="dropdown language-switcher d-inline-block">
                            <button class="dropdown-toggle" type="button" data-bs-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">
                                <img src="{{ asset('/') }}website/assets/img/flag/us-flag.jpg" class="shadow-sm" alt="image">
                                <span>Eng <i class="fas fa-chevron-down"></i></span>
                            </button>
                            <div class="dropdown-menu">
                                <a href="#" class="dropdown-item d-flex align-items-center">
                                    <img src="{{ asset('/') }}website/assets/img/flag/germany-flag.jpg" class="shadow-sm" alt="flag">
                                    <span>Ger</span>
                                </a>
                                <a href="#" class="dropdown-item d-flex align-items-center">
                                    <img src="{{ asset('/') }}website/assets/img/flag/france-flag.jpg" class="shadow-sm" alt="flag">
                                    <span>Fre</span>
                                </a>
                                <a href="#" class="dropdown-item d-flex align-items-center">
                                    <img src="{{ asset('/') }}website/assets/img/flag/spain-flag.jpg" class="shadow-sm" alt="flag">
                                    <span>Spa</span>
                                </a>
                                <a href="#" class="dropdown-item d-flex align-items-center">
                                    <img src="{{ asset('/') }}website/assets/img/flag/russia-flag.jpg" class="shadow-sm" alt="flag">
                                    <span>Rus</span>
                                </a>
                                <a href="#" class="dropdown-item d-flex align-items-center">
                                    <img src="{{ asset('/') }}website/assets/img/flag/italy-flag.jpg" class="shadow-sm" alt="flag">
                                    <span>Ita</span>
                                </a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="dropdown currency-switcher d-inline-block">
                            <button class="dropdown-toggle" type="button" data-bs-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">
                                <span>USD <i class="fas fa-chevron-down"></i></span>
                            </button>
                            <div class="dropdown-menu">
                                <a href="#" class="dropdown-item">USD</a>
                                <a href="#" class="dropdown-item">INR</a>
                                <a href="#" class="dropdown-item">GBP</a>
                            </div>
                        </div>
                    </li>
                    @if(Session::get('customerId'))
                        <li><a href="my-account.html">My Account</a></li>
                        <li><a href="{{route('customer.logout')}}">Sign Out</a></li>
                        <li><a href="">Hello {{ Session::get('customerName') }}</a></li>
                    @else
                        <li><a href="{{route('customer.login')}}">Login</a></li>
                        <li><a href="{{route('customer.register')}}">Register</a></li>
                    @endif
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="navbar-area">
    <div class="drodo-responsive-nav">
        <div class="container">
            <div class="drodo-responsive-menu">
                <div class="logo">
                    <a href="{{route('home')}}">
                        <img src="{{ asset('/') }}website/assets/img/logo.png" alt="logo">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="drodo-nav">
        <div class="container">
            <nav class="navbar navbar-expand-md navbar-light">
                <a class="navbar-brand" href="{{route('home')}}">
                    <img src="{{ asset('/') }}website/assets/img/logo.png" alt="logo">
                </a>
                <div class="collapse navbar-collapse mean-menu">
                    <ul class="navbar-nav">
                        <li class="nav-item megamenu"><a href="#" class="nav-link active">All Categories<i class='fas fa-chevron-down'></i></a>
                            <ul class="dropdown-menu">
                                @foreach($categories as $category)
                                    <li class="nav-item">
                                        <a href="{{route('shop',['id' => $category->id])}}">{{$category->name}}
                                            @if(count($category->subCategory) > 0)
                                            @endif
                                        </a>

                                        @if(count($category->subCategory) > 0)
                                            <ul class="megamenu-submenu">
                                                @foreach($category->subCategory as $subCategory)
                                                    <li><a href="{{route('sub-category-shop', ['id' => $subCategory->id])}}">{{$subCategory->name}}</a></li>
                                                @endforeach
                                            </ul>
                                        @endif
                                    </li>
                                @endforeach
                            </ul>
                        </li>
                        <li class="nav-item"><a href="#" class="nav-link active">Home<i class='fas fa-chevron-down'></i></a>
                            <ul class="dropdown-menu">

                            </ul>
                        </li>
                        <li class="nav-item megamenu"><a href="#" class="nav-link">Shop<i class="fas fa-chevron-down"></i></a>
                            <ul class="dropdown-menu">
                                <li class="nav-item">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col">
                                                <h6 class="submenu-title">Shop Styles</h6>
                                                <ul class="megamenu-submenu">
                                                    <li><a href="shop.html">Shop Four Grid</a></li>
                                                </ul>
                                            </div>
                                            <div class="col">
                                                <h6 class="submenu-title">Other Page</h6>
                                                <ul class="megamenu-submenu">
                                                    <li><a href="product-single-3.html">Product Single Three</a></li>
                                                </ul>
                                            </div>
                                            <div class="col">
                                                <h6 class="submenu-title">Feature Pages</h6>
                                                <ul class="megamenu-submenu">
                                                    <li><a href="checkout-2.html">Checkout View Two</a></li>
                                                </ul>
                                            </div>
                                            <div class="col">
                                                <h6 class="submenu-title">Feature Pages</h6>
                                                <ul class="megamenu-submenu">
                                                    <li><a href="email-template-one.html">Email Template 1</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item"><a href="about-us.html" class="nav-link">About Us</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Blog <i class='fas fa-chevron-down'></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="blog-gride-1.html">Blog Grid View One</a></li>
                            </ul>
                        </li>
                        <li class="nav-item"><a href="#" class="nav-link">Pages <i class='fas fa-chevron-down'></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="about-us.html">About Us</a></li>
                            </ul>
                        </li>
                        <li class="nav-item"><a href="#" class="nav-link">Contact <i class='fas fa-chevron-down'></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="contact-us.html">Contact Us One</a></li>
                                <li><a href="contact-us-2.html">Contact Us Two</a></li>
                            </ul>
                        </li>
                    </ul>
                    <div class="others-option">
                        <div class="option-item">
                            <div class="wishlist-btn">
                                <a href="#" data-bs-toggle="modal" data-bs-target="#shoppingWishlistModal"><i
                                        class='far fa-heart'></i></a>
                            </div>
                        </div>
                        <div class="option-item">
                            <div class="cart-btn">
                                <a href="#" data-bs-toggle="modal" data-bs-target="#shoppingCartModal"><i
                                        class='fas fa-shopping-bag'></i><span>3</span></a>
                            </div>
                        </div>
                        <div class="option-item">
                            <div class="search-btn-box">
                                <i class="fas fa-search search-btn"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</div>
