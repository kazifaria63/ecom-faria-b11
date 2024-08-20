@extends('admin.master')
@section('body')
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header border-bottom d-flex justify-content-between">
                    <h4 class="card-title">Edit Color Form</h4>
                    <a href="{{ route('color.index') }}" class="btn btn-primary"> All Color</a>
                </div><!--end card-header-->
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <p class="text-success text-center">{{session('message')}}</p>
                            <form class="form-horizontal" action="{{ route('color.update', $color->id) }}" method="post" enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Color Name</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" value="{{ $color->name }}" type="text" name="name" placeholder="Enter your Color Name">
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Color Code</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" value="{{ $color->code }}" type="color" name="code" placeholder="Enter your Color Name">
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Color Description</label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control" name="description">{{ $color->description }}</textarea>
                                    </div>
                                </div>
                                <button class="btn btn-primary" type="submit">Update Color Info</button>
                            </form>
                        </div>
                    </div>
                </div><!--end card-body-->
            </div><!--end card-->
        </div><!--end col-->
    </div><!--end row-->
@endsection
