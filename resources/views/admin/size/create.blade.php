@extends('admin.master')
@section('body')
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header border-bottom d-flex justify-content-between">
                    <h4 class="card-title">Add Size Form</h4>
                    <a href="{{ route('size.index') }}" class="btn btn-primary"> All Size</a>
                </div><!--end card-header-->
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <p class="text-success text-center">{{session('message')}}</p>
                            <form class="form-horizontal" action="{{ route('size.store') }}" method="post" enctype="multipart/form-data">
                                @csrf
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Size Name</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" type="text" name="name" placeholder="Enter your Size Name">
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Size Code</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" type="text" name="code" placeholder="Enter your Size Code">
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Size Description</label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control" name="description"></textarea>
                                    </div>
                                </div>
                                <button class="btn btn-primary" type="submit">Create New Size</button>
                            </form>
                        </div>
                    </div>
                </div><!--end card-body-->
            </div><!--end card-->
        </div><!--end col-->
    </div><!--end row-->
@endsection
