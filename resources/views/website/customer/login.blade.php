@extends('website.master')
@section('body')
    <!-- Banner Area -->
    <section id="common_banner_one">
        <div class="container ">
            <div class="row">
                <div class="col-lg-12">
                    <div class="common_banner_text">
                        <h2>Login</h2>
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li><i class="fas fa-slash"></i></li>
                            <li class="active">Login</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Checkout-Area -->
    <section id="login_area" class="ptb-100">
        <div class="container">
            <form class="card login-form" method="post" action="{{ route('customer.login') }}">
            @csrf
            <div class="row">
                <div class="col-lg-6 offset-lg-3 col-md-12 col-sm-12 col-12">
                    <div class="account_form">
                        <h3>Login</h3>
                        <form action="#">
                            <div class="default-form-box">
                                <label>Username or email <span>*</span></label>
                                <input type="text" class="form-control" name="username" id="username" required>
                            </div>
                            <div class="default-form-box">
                                <label>Passwords <span>*</span></label>
                                <input type="password" class="form-control" name="password" id="password" required>
                            </div>
                            <div class="login_submit">
                                <button class="theme-btn-one btn-black-overlay btn_md" type="submit">login</button>
                            </div>
                            <div class="remember_area">
                                <label class="checkbox-default">
                                    <input type="checkbox">
                                    <span>Remember me</span>
                                </label>
                            </div>

                            <p class="outer-link">Already have an account? <a href="{{ route('customer.register') }}">Register Now</a>
                            </p>
                        </form>
                    </div>
                </div>
            </div>
            </form>
        </div>
    </section>
@endsection
