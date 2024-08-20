@extends('admin.master')
@section('body')
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Bordered table</h4>
            </div><!--end card-header-->
            <div class="card">
                <div class="card-header border-bottom d-flex justify-content-between">
                    <h3 class="card-title">All Unit Info</h3>
                    <a href="{{ route('unit.create') }}" class="btn btn-primary">Add Unit</a>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <p class="text-success text-center">{{ session('message') }}</p>
                        <table class="table table-bordered mb-0 table-centered">
                            <thead>
                            <tr>
                                <th>SL</th>
                                <th>Unit</th>
                                <th>Code</th>
                                <th>Description</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($units as $unit)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$unit->name}}</td>
                                    <td>{{$unit->code}}</td>
                                    <td>{{$unit->description}}</td>
                                    <td class="d-flex">
                                        <a href="{{route('unit.edit', $unit->id)}}" class="btn btn-primary me-2">Edit</a>
                                        <form action="{{route('unit.destroy', $unit->id)}}" method="post">
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
