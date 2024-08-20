@extends('admin.master')
@section('body')
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Bordered table</h4>
            </div><!--end card-header-->
            <div class="card">
                <div class="card-header border-bottom d-flex justify-content-between">
                    <h3 class="card-title">All Product Info</h3>
                    <a href="{{ route('product.create') }}" class="btn btn-primary">Add Product</a>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <p class="text-success text-center">{{ session('message') }}</p>
                        <table class="table table-bordered mb-0 table-centered">
                            <thead>
                            <tr>
                                <th>SL</th>
                                <th>Name</th>
                                <th>Code</th>
                                <th>Regular Price</th>
                                <th>Selling Price</th>
                                <th>Stock</th>
                                <th>Image</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($products as $product)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$product->name}}</td>
                                    <td>{{$product->code}}</td>
                                    <td>{{$product->regular_price}}</td>
                                    <td>{{$product->selling_price}}</td>
                                    <td>{{$product->stock_amount}}</td>
                                    <td><img src="{{asset($product->image)}}" alt="" height="50"/></td>
                                    <td class="d-flex">
                                        <a href="{{route('product.show', $product->id)}}" class="btn btn-primary me-2">Detail</a>
                                        <a href="{{route('product.edit', $product->id)}}" class="btn btn-primary me-2">Edit</a>
                                        <form action="{{route('product.destroy', $product->id)}}" method="post">
                                            @method('DELETE')
                                            @csrf
                                            <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure to delete this..');">Delete</button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table><!--end /table-->
                    </div><!--end /tableresponsive-->
                </div><!--end card-body-->
            </div><!--end card-->
        </div> <!-- end col -->
@endsection
