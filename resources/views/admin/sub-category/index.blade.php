@extends('admin.master')
@section('body')
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">SubCategory</h4>
            </div><!--end card-header-->
            <div class="card">
                <div class="card-header border-bottom d-flex justify-content-between">
                    <h3 class="card-title">All SubCategory Info</h3>
                    <a href="{{ route('sub-category.create') }}" class="btn btn-primary">Add SubCategory</a>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <p class="text-success text-center">{{ session('message') }}</p>
                        <table class="table table-bordered mb-0 table-centered">
                            <thead>
                            <tr>
                                <th>SL</th>
                                <th>SubCategory</th>
                                <th>Description</th>
                                <th>Image</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($sub_categories as $sub_category)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$sub_category->name}}</td>
                                    <td>{{$sub_category->description}}</td>
                                    <td><img src="{{asset($sub_category->image)}}" alt="" height="50"/></td>
                                    <td class="d-flex">
                                        <a href="{{route('sub-category.edit', $sub_category->id)}}" class="btn btn-primary me-2">Edit</a>
                                        <form action="{{route('sub-category.destroy', $sub_category->id)}}" method="post">
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
