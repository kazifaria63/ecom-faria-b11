@extends('admin.master')
@section('body')
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Bordered table</h4>
            </div><!--end card-header-->
            <div class="card">
                <div class="card-header border-bottom d-flex justify-content-between">
                    <h3 class="card-title">All Brand Info</h3>
                    <a href="{{ route('brand.create') }}" class="btn btn-primary">Add Brand</a>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <p class="text-success text-center">{{ session('message') }}</p>
                        <table class="table table-bordered mb-0 table-centered">
                            <thead>
                            <tr>
                                <th>SL</th>
                                <th>Brand</th>
                                <th>Description</th>
                                <th>Image</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($brands as $brand)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$brand->name}}</td>
                                    <td>{{$brand->description}}</td>
                                    <td><img src="{{asset($brand->image)}}" alt="" height="50"/></td>
                                    <td class="d-flex">
                                        <a href="{{route('brand.edit', $brand->id)}}" class="btn btn-primary me-2">Edit</a>
                                        <form action="{{route('brand.destroy', $brand->id)}}" method="post">
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
