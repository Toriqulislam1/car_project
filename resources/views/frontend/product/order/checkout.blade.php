@extends('frontend.front_master')
@section('content')
@section('title')
check out
@endsection
<style>
    .hidden {
        display: none;
    }
</style>


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/brands.min.css"
    integrity="sha512-W/zrbCncQnky/EzL+/AYwTtosvrM+YG/V6piQLSe2HuKS6cmbw89kjYkp3tWFn1dkWV7L1ruvJyKbLz73Vlgfg=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

<section class="contact-page pad-tb bg-gradient3">
    <div class="container ">
        <div class="row justify-content-between ">
            <div class="col-lg-8 m-auto ">
                <div class="niwax23form shadow">
                    <div class="common-heading text-l">
                        <h2 class="mt0 mb0 text-center mb-5">@lang('lang.CheckOut')</h2>

                        @if(session('success'))
                        <div class="alert alert-success">
                            <strong> {{(session('success')) }}</strong>
                        </div>
                        @endif
                        @if(session('error_pass'))
                        <div class="alert alert-danger">
                            <strong> {{(session('error_pass')) }}</strong>
                        </div>
                        @endif

                        <div class="contact-form-card-pr contact-block-sw m0 iconin">
                            <div class="form-block niwaxform">

                                <form action="{{ route('product-checkout-store') }}" id="contactform" method="post"
                                    novalidate="novalidate">
                                    @csrf
                                    <input type="hidden" name="product_id"
                                        value="{{ $product_id->id}}">
                                    <div class="fieldsets row">
                                        <div class="col-md-6 form-group floating-label">


                                            <div class="formicon"><i class="fas fa-user"></i></div>

                                            <input type="text" placeholder=" " value=""
                                                id="name" class="floating-input" name="name">

                                            <label>@lang('lang.FullName')*</label>
                                            @error('name')
                                            <div>{{ $message }}</div>
                                            @enderror
                                            <div class="error-label"></div>
                                        </div>

                                        <div class="col-md-6 form-group floating-label">
                                            <div class="formicon"><i class="fas fa-phone-alt"></i></div>
                                            <input type="tel" placeholder=" " value=""
                                                required="required" id="mobile_number" class="floating-input"
                                                name="phone">
                                            <label>@lang('lang.MobileNumber')*</label>
                                            @error('phone')
                                            <div>{{ $message }}</div>
                                            @enderror
                                            <div class="error-label"></div>
                                        </div>
                                    </div>

                                    <div class="fieldsets row">
                                        <div class="col-md-6 form-group floating-label">
                                            <div class="formicon"><i class="fas fa-envelope"></i></div>
                                            <input type="email" placeholder=" " value=""
                                                email required="required" id="email" class="floating-input"
                                                name="email">
                                            <label>@lang('lang.EmailAddress')*</label>
                                            @error('email')
                                            <div>{{ $message }}</div>
                                            @enderror
                                            <div class="error-label"></div>
                                        </div>

                                        <div class="col-md-6 form-group floating-label">
                                            <div class="formicon"><i class="fas fa-map-marker-alt"></i></div>
                                            <input type="text" placeholder=" " required="required"
                                                value="" id="your_location"
                                                class="floating-input" name="location">
                                            <label>@lang('lang.YourLocation')*</label>
                                            @error('location')
                                            <div>{{ $message }}</div>
                                            @enderror
                                            <div class="error-label"></div>
                                        </div>

                                    </div>
                                    <div class="fieldsets row">
                                        <div class="col-md-6 form-group floating-label">
                                            <div class="formicon"></div>
                                            <input type="number" placeholder=" " value=""
                                                email required="required" id="email" class="floating-input"
                                                name="qty">
                                            <label>@lang('lang.qty')*</label>
                                            @error('email')
                                            <div>{{ $message }}</div>
                                            @enderror
                                            <div class="error-label"></div>
                                        </div>

                                    </div>
                            </div>


                            <div class="fieldsets mt20"> <button type="submit" id="p" name="submit"
                                    class="btn btn-main bg-btn w-fit mb20"><span>@lang('lang.OrderNow')<i
                                            class="fas fa-chevron-right fa-icon"></i></span> <span
                                        class="loader"></span></button> </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    </div>
</section>




<script>
    function toggleTextarea() {
        var checkbox = document.getElementById("check1");
        var textarea = document.getElementById("textarea1");

        if (checkbox.checked) {
            textarea.classList.remove("hidden");
        } else {
            textarea.classList.add("hidden");
        }
    }
</script>















<script>
    flatpickr("#myID", {});
</script>
<script>
    <script src="https://cdn.jsdelivr.net/npm/flatpickr">
</script>
</script>
@endsection
