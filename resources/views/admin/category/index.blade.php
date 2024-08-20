@extends('admin.master')
@section('body')
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Bordered table</h4>
            </div><!--end card-header-->
            <div class="card">
                <div class="card-header border-bottom d-flex justify-content-between">
                    <h3 class="card-title">All Category Info</h3>
                    <a href="{{ route('category.create') }}" class="btn btn-primary">Add Category</a>
                </div>
            <div class="card-body">
                <div class="table-responsive">
                    <p class="text-success text-center">{{ session('message') }}</p>
                    <table class="table table-bordered mb-0 table-centered">
                        <thead>
                        <tr>
                            <th>SL</th>
                            <th>Category</th>
                            <th>Description</th>
                            <th>Image</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                            @foreach($categories as $category)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$category->name}}</td>
                                    <td>{{$category->description}}</td>
                                    <td><img src="{{asset($category->image)}}" alt="" height="50"/></td>
                                    <td class="d-flex">
                                        <a href="{{route('category.edit', $category->id)}}" class="btn btn-primary me-2">Edit</a>
                                        <form action="{{route('category.destroy', $category->id)}}" method="post">
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
