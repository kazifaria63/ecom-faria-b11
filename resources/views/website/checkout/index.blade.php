@extends('website.master')
@section('body')
    <!-- Checkout-Area -->
    <section id="checkout_one" class="ptb-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                    <form class="form checkout-form" action="{{route('new-order')}}" method="POST">
                        @csrf
                        <div class="checkout-area-bg bg-white">
                            <div class="check-heading">
                                <h3>Order Checkout Information</h3>
                            </div>
                            <div class="check-out-form">
                                <form method="post">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                                            <div class="form-group">
                                                <label for="cname">Delivery Address</label>
                                                <textarea class="form-control" type="text" id="cname" name="delivery_address" placeholder="Delivery Address"></textarea>
                                            </div>
                                        </div>

                                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                                            <div class="order_review bg-white">
                                                <div class="check-heading">
                                                    <h3>Payment Method</h3>
                                                </div>
                                                <div class="single-checkbox checkbox-style-3">
                                                    <input type="radio" checked id="checkbox-3" name="payment_method" value="Cash">
                                                    <label for="checkbox-3"><span>Cash on Delivery</span></label>
                                                </div>
                                                <div class="single-checkbox checkbox-style-3">
                                                    <input type="radio" id="checkbox-4" name="payment_method" value="Online">
                                                    <label for="checkbox-4"><span>Online</span></label>
                                                </div>
                                                <div class="single-form button">
                                                    <button type="submit" class="theme-btn-one btn-black-overlay btn_sm" >Confirm Order</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                    <div class="order_review  box-shadow bg-white">
                        <div class="check-heading">
                            <h3>Cart Summary</h3>
                        </div>
                        <div class="table-responsive order_table">
                            @php($sum=0)
                            <table class="table">
                                 <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>Price</th>
                                        <th>SubTotal</th>
                                    </tr>
                                 </thead>

                                 <tbody>
                                    @foreach(Cart::content() as $item)
                                    <tr>
                                        <td>{{$item->name}} <span class="product-qty">x {{$item->qty}}</span>
                                        </td>
                                        <td>{{$item->price}}</td>
                                        <td class="product-subtotal">{{$item->price* $item->qty}}</td>
                                    </tr>
                                    @php( $sum = $sum + ($item->price*$item->qty) )
                                    @endforeach
                                 </tbody>

                                 <tfoot>
                                    <tr>
                                        <th>Tax(15%)</th>
                                        <td colspan="2" class="product-subtotal" style="text-align: right">{{ $tax = round( ($sum * 0.15) ) }}</td>
                                    </tr>
                                    <tr>
                                        <th>Shipping Charge</th>
                                        <td colspan="2" class="product-subtotal" style="text-align: right">{{ $shipping = 100 }}</td>
                                    </tr>
                                    <tr>
                                        <th>OrderTotal</th>
                                        <td colspan="2" class="product-subtotal" style="text-align: right">{{  $totalPayable = $sum + $tax + $shipping }}</td>
                                    </tr>
                                    <?php
                                    Session::put('order_total',$totalPayable);
                                    Session::put('tax_total',$tax);
                                    Session::put('shipping_total',$shipping);
                                    ?>
                                 </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
