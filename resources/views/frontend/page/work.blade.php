@extends('frontend.front_master')
@section('content')
@section('header-select','active')
@section('title')
  work
@endsection




{{-- work start --}}
<section class="portfolio-page dark-bg4 bg-gradient6 pad-tb" id="work">
    <div class="container">

        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="common-heading pp">
                    <span class="text-center">@lang('lang.work-title')</span>
                    <h2 class="text-center">@lang('lang.workshop')</h2>
                </div>
            </div>
        </div>

        <div class="fieldsets row">
            @if(session('loginError'))
            <div class="alert alert-danger">
                <strong> {{(session('loginError')) }}</strong>
            </div>
            @endif
            <div class="row justify-content-center">
                @php
                $services = App\Models\Services::where('status',1)->get();
                @endphp
                @foreach ($services as $item )
                <div class="col-lg-4 col-sm-6 mt30 wow fadeIn" data-wow-delay=".2s">
                    <div class="isotope_item h-scl-">

                        <div class="item-image h-scl-base">
                            <a href="{{ route('details-service-page',$item->id) }}"><img src="{{asset($item->thamble) }}" alt="portfolio" class="img-fluid"> </a>
                        </div>
                        <div class="item-info">
                            <h4><a href="{{ route('details-service-page',$item->id) }}"> {{ session()->get('locale')=='bn'?  $item->breadcrumb_title_bn:  $item->content_slide_title}}</a></h4>
                        </div>

                        <div class="priceoderbtn"><a href="{{ route('checkOut-work-index',$item->id)}}" class="niwax-btn3" style="padding: 0 16px !important; line-height: 33px !important;">@lang('lang.select')</a></div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>

    </div>
</section>
{{-- work start end --}}






@endsection
