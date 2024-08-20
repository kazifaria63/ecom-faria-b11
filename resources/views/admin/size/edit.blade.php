@extends('admin.master')
@section('body')
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header border-bottom d-flex justify-content-between">
                    <h4 class="card-title">Edit Size Form</h4>
                    <a href="{{ route('size.index') }}" class="btn btn-primary"> All Size</a>
                </div><!--end card-header-->
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <p class="text-success text-center">{{session('message')}}</p>
                            <form class="form-horizontal" action="{{ route('size.update', $size->id) }}" method="post" enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Size Name</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" value="{{ $size->name }}" type="text" name="name" placeholder="Enter your Size Name">
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Size Code</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" value="{{ $size->code }}" type="text" name="code" placeholder="Enter your Size Name">
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Size Description</label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control" name="description">{{ $size->description }}</textarea>
                                    </div>
                                </div>
                                <button class="btn btn-primary" type="submit">Update Size Info</button>
                            </form>
                        </div>
                    </div>
                </div><!--end card-body-->
            </div><!--end card-->
        </div><!--end col-->
    </div><!--end row-->
@endsection
