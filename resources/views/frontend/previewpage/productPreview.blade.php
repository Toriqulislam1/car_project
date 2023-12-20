@extends('frontend.front_master')
@section('content')
@section('title')
car
@endsection

<!--shop products-->
<section class="shop-products-prvw pt80 pb60">
    <div class="container shop-container">
        <div class="row">

            <div class="col-lg-8">

                <div class="rpb-shop-prevw">
                    <img src="{{ asset($details->image) }}" class="w-100" alt="img">
                </div>

                <div class="rpb-item-info">
                    <div class="tab-17 tabs-layout">

                        <div class="tab-content" id="myTabContent2">
                            <div class="mt20 tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="tab1a">

                                <h4 class="mb10">Description</h4>
                                <p class="mb30"> {!!session()->get('locale')=='bn'? $details->product_long_descrp_bn:$details->details  !!}</p>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">

                <div class="rpb-item-infodv">
                    <ul>
                        <li class="price">
                            <strong>Price</strong>
                            <div class="nx-rt">
                                <div class="rpb-itm-pric"> <span class="offer-prz"> {{$details->price-$details->discount }} </span> <span class="regular-prz">{{ $details->price }}</span> </div>
                            </div>
                        </li>
                        <li>
                            <strong>Unit</strong>
                            <div class="nx-rt">{{$details->unit }}</div>
                        </li>
                        <li>
                            <strong>Stock available</strong>
                            <div class="nx-rt">{{$details->stock }}</div>
                        </li>

                        <li>
                            <a href="{{ route('product.checkout',$details->id) }}" class="btn-main bg-btn3 lnk w-100 mt10">Buy Now <span class="circle"></span> </a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection
