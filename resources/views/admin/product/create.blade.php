@extends('admin.master')
@section('body')
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header border-bottom d-flex justify-content-between">
                    <h4 class="card-title">Add Product Form</h4>
                    <a href="{{ route('product.index') }}" class="btn btn-primary"> All Product</a>
                </div><!--end card-header-->
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <p class="text-success text-center">{{session('message')}}</p>
                            <form class="form-horizontal" action="{{ route('product.store') }}" method="post" enctype="multipart/form-data">
                                @csrf
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Category Name</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="category_id">
                                            <option value=""> -- Select Category -- </option>
                                            @foreach($categories as $category)
                                                <option value="{{$category->id}}"> {{$category->name}} </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">SubCategory Name</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="sub_category_id">
                                            <option value=""> -- Select SubCategory -- </option>
                                            @foreach($subCategories as $subCategory)
                                                <option value="{{$subCategory->id}}"> {{$subCategory->name}} </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Brand Name</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="brand_id">
                                            <option value=""> -- Select Brand -- </option>
                                            @foreach($brands as $brand)
                                                <option value="{{$brand->id}}"> {{$brand->name}} </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Unit Name</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="unit_id">
                                            <option value=""> -- Select Unit -- </option>
                                            @foreach($units as $unit)
                                                <option value="{{$unit->id}}"> {{$unit->name}} </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Product Name</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" name="name" placeholder="Enter Product Name" type="text">
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Product Code</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" name="code" placeholder="Enter Product code" type="text">
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 mb-3 form-label">Product Color</label>
                                    <div class="col-sm-10 from-group">
                                        <select multiple name="color[]" class="form-control select2-show-search form-select w-100" data-placeholder="Choose one">
                                            <option label="Choose one"></option>
                                            @foreach($colors as $color)
                                                <option value="{{$color->id}}">{{$color->name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Product Size</label>
                                    <div class="col-sm-10">
                                        <select multiple name="size[]" class="form-control select2-show-search form-select w-100" data-placeholder="Choose one">
                                            <option label="Choose one"></option>
                                            @foreach($sizes as $size)
                                                <option value="{{$size->id}}"> {{$size->name}} </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Meta Title</label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control" name="meta_title" placeholder="Enter Meta Title" type="text"></textarea>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Meta Description</label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control" name="meta_description" placeholder="Enter Meta Description" type="text"></textarea>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Product Price</label>
                                    <div class="col-sm-10">
                                        <div class="input-group">
                                             <input class="form-control" name="regular_price" placeholder="Enter Product Regular price" type="number">
                                             <input class="form-control" name="selling_price" placeholder="Enter Product Selling price" type="number">
                                        </div>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Stock Amount</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" name="stock_amount" placeholder="Enter Product Stock Amount" type="number">
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Short Description</label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control" name="short_description" type="text"></textarea>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Long Description</label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control ckeditor-classic" name="long_description"></textarea>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Image</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" name="image" type="file" accept="image/*"/>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-sm-2 form-label">Other Image</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" name="other_image[]" multiple type="file" accept="image/*"/>
                                    </div>
                                </div>
                                <button class="btn btn-primary" type="submit">Create New Product</button>
                            </form>
                        </div>
                    </div>
                </div><!--end card-body-->
            </div><!--end card-->
        </div><!--end col-->
    </div><!--end row-->
@endsection
