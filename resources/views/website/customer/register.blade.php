@extends('website.master')
@section('body')
    <!-- Banner Area -->
    <section id="common_banner_one">
        <div class="container ">
            <div class="row">
                <div class="col-lg-12">
                    <div class="common_banner_text">
                        <h2>Register</h2>
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li><i class="fas fa-slash"></i></li>
                            <li class="active">Register</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Register-Area -->
    <section id="login_area" class="ptb-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3 col-md-12 col-sm-12 col-12">
                    <div class="account_form">
                        <h3>Register</h3>
                        <form class="row" action="{{ route('customer.register') }}" method="post">
                            @csrf
                            <div class="default-form-box">
                                <label>Username <span>*</span></label>
                                <input type="text" class="form-control" id="name" name="name" required>
                            </div>
                            <div class="default-form-box">
                                <label>Email <span>*</span></label>
                                <input type="text" class="form-control" name="email" id="email" required>
                            </div>
                            <div class="default-form-box">
                                <label>Mobile <span>*</span></label>
                                <input type="number" class="form-control" name="mobile" id="mobile" required>
                            </div>
                            <div class="default-form-box">
                                <label>Passwords <span>*</span></label>
                                <input type="password" class="form-control" name="password" id="password" required>
                            </div>
                            <div class="login_submit">
                                <button class="theme-btn-one btn-black-overlay btn_md" type="submit">Register</button>
                            </div>
                            <p class="outer-link">Already have an account? <a href="{{ route('customer.login') }}">Login Now</a>
                            </p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>


@endsection
