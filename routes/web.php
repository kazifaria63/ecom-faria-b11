<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AndShopController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\SubCategoryController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\UnitController;
use App\Http\Controllers\ColorController;
use App\Http\Controllers\SizeController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CartController;
Use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\CustomerController;


Route::get('/',[AndShopController::class,'index'])->name('home');
Route::get('/shop/{id}',[AndShopController::class,'product'])->name('shop');
Route::get('/sub-category-shop/{id}',[AndShopController::class,'subCategoryProduct'])->name('sub-category-shop');
Route::get('/product/details/{id}/{slug}',[AndShopController::class,'productDetails'])->name('product.details');



Route::resource('cart',     CartController::class );
Route::get('/checkout',[CheckoutController::class,'index'])->name('checkout');
Route::post('/new-order',[CheckoutController::class,'newOrder'])->name('new-order');
Route::get('/complete-order',[CheckoutController::class,'completeOrder'])->name('complete-order');

Route::get('/customer/register',[CustomerController::class,'register'])->name('customer.register');
Route::post('/customer/register',[CustomerController::class,'saveNewCustomer'])->name('customer.register');

Route::get('/customer/login',[CustomerController::class,'login'])->name('customer.login');
Route::post('/customer/login',[CustomerController::class,'loginCheck'])->name('customer.login');
Route::get('/customer/logout',[CustomerController::class,'logout'])->name('customer.logout');


Route::middleware(['auth:sanctum', config('jetstream.auth_session'), 'verified',])->group(function () {

Route::get('/dashboard', [DashboardController::class,'index'])->name('dashboard');

Route::resource('category',     CategoryController::class );
Route::resource('sub-category', SubCategoryController::class );
Route::resource('brand',        BrandController::class );
Route::resource('unit',         UnitController::class );
Route::resource('color',        ColorController::class );
Route::resource('size',         SizeController::class );
Route::resource('product',      ProductController::class );


});
