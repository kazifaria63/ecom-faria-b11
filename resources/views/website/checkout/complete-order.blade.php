@extends('website.master')
@section('body')
    <!-- Checkout-Area -->
    <section id="checkout_one" class="ptb-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <div class="card card-body">
                        <p>{{session('message')}}</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
