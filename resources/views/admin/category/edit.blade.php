@extends('admin.master')
@section('body')
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header border-bottom d-flex justify-content-between">
                    <h4 class="card-title">Edit Category Form</h4>
                    <a href="{{ route('category.index') }}" class="btn btn-primary"> All Category</a>
                </div><!--end card-header-->
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <p class="text-success text-center">{{session('message')}}</p>
                            <form class="form-horizontal" action="{{ route('category.update', $category->id) }}" method="post" enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Category Name</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" value="{{ $category->name }}" type="text" name="name" placeholder="Enter your Category Name">
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Category Description</label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control" name="description">{{ $category->description }}</textarea>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Category Image</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" name="image" type="file"/>
                                        <img src="{{asset($category->image)}}" alt="" height="100"/>
                                    </div>
                                </div>
                                <button class="btn btn-primary" type="submit">Update Category Info</button>
                            </form>
                        </div>
                    </div>
                </div><!--end card-body-->
            </div><!--end card-->
        </div><!--end col-->
    </div><!--end row-->
@endsection
