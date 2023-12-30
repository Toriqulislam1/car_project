
@extends('frontend.front_master')
@section('content')
@section('header-select','active')
@section('title')
  spare part
@endsection

@php
$products = App\Models\product::all();
@endphp


<div class="shop-products-bhv pt20  pb60" id="SpareParts" style="margin-top: 100px">
    <div class="container">

        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="common-heading pp">
                    <span class="text-center">@lang('lang.product-span')</span>
                    <h2 class="text-center">@lang('lang.product-title')</h2>
                </div>
            </div>
        </div>

        <div class="row">
            @foreach ($products as $product )
            <div class="col-lg-4">
                <div class="rpb-shop-items-dv s-block mt60">
                    <div class="rpb-shop-items-img">
                        <a href="{{route('product-preview', $product->id)  }}"><img src="{{ asset($product->image) }}" class="img-fluid" alt="product"></a>
                    </div>
                    <div class="rpb-shop-items-info">
                        <div class="rpb-shop-items-tittl">
                            <h3><a href="{{route('product-preview', $product->id)  }}">{{ session()->get('locale')=='bn'?  $product->title_bn:  $product->title}}</a></h3>

                        </div>

                        <div class="rpb-shop-items-flex">
                            <div class="rpb-shop-inf-ll">
                                <div class="rpb-itm-pric"><span class="offer-prz">{{ $product->price-$product->discount }}</span> <span class="regular-prz">{{ $product->price }}</span></div>
                                @php
                                $sales = App\Models\productOrder::where('product_id',$product->id)->count();

                                @endphp
                                <div class="rpb-itm-sale">{{ $sales }} Sales</div>
                            </div>

                            <div class="rpb-shop-inf-rr">
                                <div class="rpb-shop-flxbt">
                                    {{-- <a href="{{route('product-preview', $product->id)  }}" class="rpb-shop-prev" data-bs-toggle="tooltip" title="View the Item Demo">Preview</a> --}}
                                    <a href="{{ route('product.checkout',$product->id) }}" class="rpb-shop-prev" data-bs-toggle="tooltip" title="View the Item Demo">@lang('lang.buy_now')</a>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>






@endsection
