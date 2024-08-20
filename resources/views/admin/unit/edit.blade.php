@extends('admin.master')
@section('body')
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header border-bottom d-flex justify-content-between">
                    <h4 class="card-title">Edit Unit Form</h4>
                    <a href="{{ route('unit.index') }}" class="btn btn-primary"> All Unit</a>
                </div><!--end card-header-->
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <p class="text-success text-center">{{session('message')}}</p>
                            <form class="form-horizontal" action="{{ route('unit.update', $unit->id) }}" method="post" enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Unit Name</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" value="{{ $unit->name }}" type="text" name="name" placeholder="Enter your Unit Name">
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Unit Code</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" value="{{ $unit->code }}" type="text" name="code" placeholder="Enter your Unit Name">
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Unit Description</label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control" name="description">{{ $unit->description }}</textarea>
                                    </div>
                                </div>
                                <button class="btn btn-primary" type="submit">Update Unit Info</button>
                            </form>
                        </div>
                    </div>
                </div><!--end card-body-->
            </div><!--end card-->
        </div><!--end col-->
    </div><!--end row-->
@endsection
