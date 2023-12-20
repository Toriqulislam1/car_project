@extends('frontend.front_master')
@section('content')
@section('title')
car
@endsection
@php
$setting = App\Models\setting::find(1);
@endphp

<div class="onloadpage" id="page_loader">
    <div class="pre-content">
        <div class="logo-pre"> <img src="{{ asset($setting->logo) }}" alt="Logo" class="mega-darks-logo" /></div>
    </div>
</div>
<section class="hero-section niwax-lp1" data-background="{{ asset('frontend/assets/images/banner/banner.jpeg') }}" id="home">
    <div class="text-block">
        <div class="container">
            <div class="row v-center justify-content-between">
                <div class="col-lg-6">
                    <div class="header-headings">
                        <span class="text-effect-1">@lang('lang.AllVehicle')</span>
                        <h1 class="wow fadeIn mt20 mb30 cd-headline clip" data-wow-delay=".4s">@lang('lang.Allvehicle_shor')
                            {{-- <span class="cd-words-wrapper"> <b class="is-visible">car</b> </span> </h1> --}}
                            <p class="wow fadeIn" data-wow-delay=".8s">@lang('lang.Allvehicle_shor_span')</p>

                            <div class="niwaxbtnvideo mt30">
                                <div class="video-btn  d-flex v-center gap10">
                                    <div class="video-intro-ppx"><a class="video-link play-video" href="https://www.youtube.com/watch?v=SZEflIVnhH8?autoplay=1&rel=0"><span class="triangle-play"></span></a></div>
                                    <div class="title-hero">
                                        <p>Play Video</p>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
                <div class="col-lg-5 v-center">
                    <div class="form-block formcover shadow">
                        <h4>@lang('lang.quote')</h4>

                        <form id="contactForm" data-bs-toggle="validator" action="{{ route('contact-form') }}" method="POST" class="shake mt30">
                            @csrf
                            <div class="row">
                                <div class="form-group col-sm-6">
                                    <input type="text" id="name" placeholder="@lang('lang.name')" name="full_name" required data-error="Please fill Out">
                                    <div class="help-block with-errors"></div>
                                </div>
                                <div class="form-group col-sm-6">
                                    <input type="email" id="email" name="email_address" placeholder="@lang('lang.email')" required>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-sm-6">
                                    <input type="text" id="mobile" name="mobile" placeholder="@lang('lang.mobile')" required data-error="Please fill Out">
                                    <div class="help-block with-errors"></div>
                                </div>
                                @php
                                $service_name = App\Models\Services::all();
                                @endphp
                                <div class="form-group col-sm-6">
                                    <select name="subject" id="Dtype" required>
                                        <option value>@lang('lang.select')</option>
                                        @foreach ($service_name as $name)
                                        <option value="{{ $name->content_title }}">{{ session()->get('locale')=='bn'?  $name->breadcrumb_title_bn:  $name->content_slide_title }}</option>
                                        @endforeach
                                    </select>
                                    <div class="help-block with-errors"></div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-sm-12">
                                        <input type="text" id="name" placeholder="@lang('lang.YourLocation')" name="location" required data-error="Please fill Out">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <textarea id="message" rows="5" name="message" placeholder="@lang('lang.message')" required></textarea>
                                    <div class="help-block with-errors"></div>
                                </div>
                                <button type="submit" id="form-submit" class="btn btn-main bg-btn3">@lang('lang.Submit')</button>
                                <div id="msgSubmit" class="h3 text-center hidden"></div>
                                <div class="clearfix"></div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

{{-- service section --}}
<section class="dg-service2 pad-tb" id="services">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="common-heading text-center">
                    <span class="text-effect-2">@lang('lang.title')</span>
                    <h2 class="mb30"> @lang('lang.title-our') </h2>
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
                            <a href="{{ route('details-service-page',$item->id) }}"><img src="{{$item->thamble }}" alt="portfolio" class="img-fluid"> </a>
                        </div>
                        <div class="item-info">
                            <h4><a href="{{ route('details-service-page',$item->id) }}"> {{ session()->get('locale')=='bn'?  $item->breadcrumb_title_bn:  $item->content_slide_title}}</a></h4>
                        </div>

                        <div class="priceoderbtn"><a href="{{ route('checkOut-index',$item->id) }}" class="niwax-btn3" style="padding: 0 16px !important; line-height: 33px !important;">@lang('lang.select')</a></div>
                    </div>
                </div>
                @endforeach

            </div>
        </div>
</section>



{{-- @php
$portfolios = App\Models\Portfolio::all();
@endphp --}}

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

        {{-- <div class="row card-list justify-content-center">
            @foreach ($portfolios as $portfolio)


            <div class="col-lg-4 col-md-6 grid-sizer"></div>

            <div class="col-lg-4 col-sm-6 single-card-item app">
                <div class="isotope_item hover-scale">
                    <div class="item-image">
                        <a href="#"><img src="{{ asset( $portfolio->port_image ) }}" alt="portfolio" class="img-fluid" /> </a>
                    </div>
                    <div class="item-info">
                        <h4><a href="#">{{ $portfolio->port_title  }}</a></h4>
                        <p>{{ $portfolio->port_subtitle }}</p>
                    </div>
                </div>
            </div>


            @endforeach

        </div> --}}

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
                            <a href="{{ route('details-service-page',$item->id) }}"><img src="{{$item->thamble }}" alt="portfolio" class="img-fluid"> </a>
                        </div>
                        <div class="item-info">
                            <h4><a href="{{ route('details-service-page',$item->id) }}"> {{ session()->get('locale')=='bn'?  $item->breadcrumb_title_bn:  $item->content_slide_title}}</a></h4>
                        </div>

                        <div class="priceoderbtn"><a href="{{ route('checkOut-index',$item->id) }}" class="niwax-btn3" style="padding: 0 16px !important; line-height: 33px !important;">@lang('lang.select')</a></div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</section>




{{-- product start --}}
<div class="shop-products-bhv pt20 pb60" id="SpareParts">
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
                        <a href="{{route('product-preview', $product->id)  }}"><img src="{{ $product->image }}" class="img-fluid" alt="product"></a>
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


{{-- product end --}}




<section class="why-choos-lg pad-tb deep-dark">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="common-heading text-l">
                    <span>Who We Are</span>
                    <h2 class="mb20">Since 2000, We've Been the Most Dependable Web Design Company.</h2>
                    <p>We have produced IT solutions at a worldwide level by using the full potential of the latest disruptive technologies as one of the leading IT consulting companies in India. We have produced IT solutions at a worldwide level by using the full potential of the latest disruptive technologies as one of the leading IT consulting companies in India.</p>
                    <p>We have produced IT solutions at a worldwide level by using the full potential of the latest disruptive technologies as one of the leading IT consulting companies in India.</p>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="img-design h-scl-">
                    <div class="imgac "> <img src="{{ asset('frontend/assets/images/hero/creative-ag2a.jpg') }}" alt="creative agnecy html template" class="ag-dg1 img-fluid h-scl-base"></div>
                    <div class="imgac h-scl-base"><img src="{{ asset('frontend/assets/images/hero/creative-ag2b.jpg') }}" alt="creative agnecy html template" class="ag-dg2 img-fluid "></div>
                    <div class="shpdez1 shpdzz"></div>
                    <div class="shpdez2 shpdzz"></div>
                    <div class="shpdez3 shpdzz"></div>
                    <div class="shpdez4 shpdzz"></div>
                </div>
            </div>
            <div class="col-lg-6 mt30">
                <div class="itm-media-object mt40 tilt-3d">
                    <div class="media">
                        <div class="img-ab- base" data-tilt data-tilt-max="20" data-tilt-speed="1000"><img src="{{ asset('frontend/assets/images/icons/computers.svg') }}" alt="icon" class="layer"></div>
                        <div class="media-body">
                            <h4>Streamlined Project Management</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc aliquet ligula nec leo elementum semper. Mauris aliquet egestas metus.</p>
                        </div>
                    </div>
                    <div class="media mt40">
                        <div class="img-ab- base" data-tilt data-tilt-max="20" data-tilt-speed="1000"><img src="{{ asset('frontend/assets/images/icons/worker.svg') }}" alt="icon" class="layer"></div>
                        <div class="media-body">
                            <h4>A Dedicated Team of Experts</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc aliquet ligula nec leo elementum semper. Mauris aliquet egestas metus.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 mt30">
                <div class="itm-media-object mt40 tilt-3d">
                    <div class="media">
                        <div class="img-ab- base" data-tilt data-tilt-max="20" data-tilt-speed="1000"><img src="{{ asset('frontend/assets/images/icons/computers.svg') }}" alt="icon" class="layer"></div>
                        <div class="media-body">
                            <h4>Streamlined Project Management</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc aliquet ligula nec leo elementum semper. Mauris aliquet egestas metus.</p>
                        </div>
                    </div>
                    <div class="media mt40">
                        <div class="img-ab- base" data-tilt data-tilt-max="20" data-tilt-speed="1000"><img src="{{ asset('frontend/assets/images/icons/worker.svg') }}" alt="icon" class="layer"></div>
                        <div class="media-body">
                            <h4>A Dedicated Team of Experts</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc aliquet ligula nec leo elementum semper. Mauris aliquet egestas metus.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@php
$Industries = App\Models\Industries::all();
@endphp

<div class="niwax-company-awards-cover">
    <div class="container">
        <div class="row v-center">
            <div class="companytime col-lg-3">
                <p>2 Yesrs* <span>Industry Experience</span></p>
            </div>
            <div class="companyawards col-lg-9">
                <div class="niwax-logo-awards niwax-logo-slider owl-carousel">
                    @foreach ($Industries as $Industrie)
                    <div class="industry-workfors">
                        <img src="{{ asset($Industrie->ind_photo ) }}" alt="img">
                        <h6>{{ $Industrie->ind_title}}</h6>
                    </div>
                    @endforeach

                </div>
            </div>
        </div>
    </div>
</div>



@php
$testimonials = App\Models\Blog::orderBy('id','desc')->get();
@endphp

{{-- <section class="bg-gradient1 dark-bg4 pad-tb">
    <div class="container">
    <div class="row justify-content-center">
    <div class="col-lg-8">
    <div class="common-heading ptag">
    <span>Reviews</span>
    <h2>Client Testimonials</h2>
    <p class="mb30">Check our customers success stories.</p>
    </div>
    </div>
    </div>
    <div class="row">

    <div class="col-md-12 mt30">
    <div class="niwax-review-slider owl-carousel center-dots">
    @foreach ($testimonials as $testimonial)

    <div class="reviews-card pr-shadow">
    <div class="row v-center">
    <div class="col"> <span class="revbx-lr"><i class="fas fa-quote-left"></i></span> </div>
    <div class="col"> <span class="revbx-rl"><img src="{{ asset($testimonial->company_logo ) }}" alt="review service logo"></span> </div>
</div>
<div class="review-text">
    <p>{!! $testimonial->blog_description !!}</p>
</div>
<div class="-client-details-">
    <div class="-reviewr">
        <img src="{{ asset($testimonial->person_img) }}" alt="Good Review" class="img-fluid">
    </div>
    <div class="reviewer-text">
        <h4>{{ $testimonial->person_name }}</h4>
        <p>{{ $testimonial->designation }}, <small>{{ $testimonial->company_name }}</small></p>
        <div class="star-rate">
            <ul>
                @for($i = 1; $i <= $testimonial->rating_num ; $i++)
                    <li> <a href="javascript:void(0)" class="chked"><i class="fas fa-star" aria-hidden="true"></i></a> </li>
                    @endfor
            </ul>
        </div>
    </div>
</div>
</div>
@endforeach

</div>
</div>
</div>
</div>
</section> --}}




</body>

@endsection

