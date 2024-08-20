@extends('admin.master')
@section('body')
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Bordered table</h4>
            </div><!--end card-header-->
            <div class="card">
                <div class="card-header border-bottom d-flex justify-content-between">
                    <h3 class="card-title">All Color Info</h3>
                    <a href="{{ route('color.create') }}" class="btn btn-primary">Add Color</a>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <p class="text-success text-center">{{ session('message') }}</p>
                        <table class="table table-bordered mb-0 table-centered">
                            <thead>
                            <tr>
                                <th>SL</th>
                                <th>Color</th>
                                <th>Code</th>
                                <th>Description</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($colors as $color)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$color->name}}</td>
                                    <td>{{$color->code}}</td>
                                    <td>{{$color->description}}</td>
                                    <td class="d-flex">
                                        <a href="{{route('color.edit', $color->id)}}" class="btn btn-primary me-2">Edit</a>
                                        <form action="{{route('color.destroy', $color->id)}}" method="post">
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
