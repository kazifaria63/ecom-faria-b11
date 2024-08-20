@extends('website.master')
@section('body')
    <!-- Cart-Area -->
    <section id="cart_area_two" class="ptb-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="table_desc">
                        <div class="table_page table-responsive">
                            <table>
                                <!-- Start Cart Table Head -->
                                <thead>
                                <tr>
                                    <th class="product_thumb">Image</th>
                                    <th class="product_name">Product</th>
                                    <th class="product-price">Price</th>
                                    <th class="product_quantity">Quantity</th>
                                    <th class="product_total">Total</th>
                                    <th class="product_remove">Remove</th>
                                </tr>
                                </thead> <!-- End Cart Table Head -->
                                <tbody>
                                <!-- Start Cart Single Item-->
                                @php($sum=0)
                                @foreach($products as $product)
                                <tr>
                                    <td class="product_thumb">
                                        <a href="product-single.html">
                                            <img src="{{ asset($product->options->image) }}" alt="img"></a>
                                    </td>
                                    <td class="product_name">
                                        <a href="product-single.html">{{  $product->name }}</a>
                                        <p class="product-des">
                                            <span><em>Color:</em> {{  $product->options->color }}</span>
                                            <span><em>Size:</em> {{  $product->options->size }}</span>
                                        </p>
                                    </td>
                                    <td class="product-price">TK. {{$product->price}}</td>
                                    <td class="product_quantity">
                                        <form action="{{ route('cart.update',$product->rowId) }}" method="post">
                                            @csrf
                                            @method('PUT')
                                            <div class="input-group">
                                                <input type="text" class="form-control" value="{{ $product->qty }}" name="qty">
                                                <button type="submit" class="theme-btn-one btn-black-overlay btn_sm btn btn-rounded">Update</button>
                                            </div>
                                        </form>
                                    </td>
                                    @php( $sum = $sum + ($product->price*$product->qty) )

                                    <td class="product_total">{{$product->price*$product->qty}}</td>
                                    <td>
                                    <form class="product_remove" action="{{ route('cart.destroy',$product->rowId) }}" method="post">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit"><i class="far fa-trash-alt"></i></button>
                                    </form>
                                    </td>
                                </tr> <!-- End Cart Single Item-->
                                @endforeach
                                <!-- Start Cart Single Item-->
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="coupon_inner_two">
                        <input class="mb-2" placeholder="Coupon code" type="text">
                        <button type="submit" class="theme-btn-one btn-black-overlay btn_sm">Apply coupon</button>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12">
                    <div class="coupon_code right" data-aos="fade-up" data-aos-delay="400">
                        <h3>Cart Total</h3>
                        <div class="coupon_inner">
                            <div class="cart_subtotal">
                                <p>Subtotal</p>
                                <p class="cart_amount">{{ round($sum) }}</p>
                            </div>
                            <div class="cart_subtotal ">
                                <p>Shipping</p>
                                <p class="cart_amount"><span>Shipping Rate:</span> {{ $shipping = 100 }}</p>
                            </div>
                            <div class="cart_subtotal ">
                                <p>Tax(15%)</p>
                                <p class="cart_amount"><span>Tax Rate:</span> {{ $tax = round( ($sum * 0.15) ) }}</p>
                            </div>

                            <div class="cart_subtotal">
                                <p>Total</p>
                                <p class="cart_amount">{{  $grandTotal = $sum + $tax + $shipping }}</p>
                            </div>
                            <div class="checkout_btn">
                                <a href="{{ route('home') }}" class="theme-btn-one btn-black-overlay btn_sm">Continue shopping</a>
                                <a href="{{ route('checkout') }}" class="theme-btn-one btn-black-overlay btn_sm">Proceed to Checkout</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
