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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/brands.min.css" integrity="sha512-W/zrbCncQnky/EzL+/AYwTtosvrM+YG/V6piQLSe2HuKS6cmbw89kjYkp3tWFn1dkWV7L1ruvJyKbLz73Vlgfg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

<section class="contact-page pad-tb bg-gradient3">
    <div class="container ">
        <div class="row justify-content-between ">
            <div class="col-lg-8 m-auto ">
                <div class="niwax23form shadow">
                    <div class="common-heading text-l">
                        <h2 class="mt0 mb0 text-center mb-5">Purchese of Spare Parts</h2>
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
                                <form action="{{ route('product-checkout-store') }}" id="contactform" method="post" novalidate="novalidate">
                                    @csrf
                                    <input type="hidden" name="product_id" value="{{ $product_id->id}}">
                                    <div class="fieldsets row">
                                        <div class="col-md-4 form-group floating-label">
                                            <div class="formicon"><i class="fas fa-user"></i></div>
                                            <input type="text" placeholder=" " value="" id="name" class="floating-input" name="name">
                                            <label >@lang('lang.FullName') <span style="color: red">*</span></label>
                                            @error('name')
                                            <div>{{ $message }}</div>
                                            @enderror
                                            <div class="error-label"></div>
                                        </div>
                                        <div class="col-md-4 form-group floating-label">
                                            <div class="formicon"><i class="fas fa-phone-alt"></i></div>
                                            <input type="tel" placeholder=" " value="" required="required" id="mobile_number" class="floating-input" name="phone">
                                            <label>@lang('lang.MobileNumber')<span style="color: red">*</span></label>
                                            @error('phone')
                                            <div>{{ $message }}</div>
                                            @enderror
                                            <div class="error-label"></div>
                                        </div>
                                        <div class="col-md-4 form-group floating-label">
                                            <div class="formicon"><i class="fas fa-envelope"></i></div>
                                            <input type="email" placeholder=" " value="" email required="required" id="email" class="floating-input" name="email">
                                            <label>@lang('lang.EmailAddress')<span style="color: red">*</span></label>
                                            @error('email')
                                            <div>{{ $message }}</div>
                                            @enderror
                                            <div class="error-label"></div>
                                        </div>
                                    </div>
                                    <div class="fieldsets row">
                                        <div class="col-md-4 form-group floating-label">
                                            <div class="formicon"><i class="fas fa-map-marker-alt"></i></div>
                                            <input type="text" placeholder=" " required="required" value="" id="your_location" class="floating-input" name="location">
                                            <label>@lang('lang.YourLocation')<span style="color: red">*</span></label>
                                            @error('location')
                                            <div>{{ $message }}</div>
                                            @enderror
                                            <div class="error-label"></div>
                                        </div>
                                        <div class="col-md-4 form-group floating-label">
                                            <div class="formicon"><i class='fas fa-calendar-minus'></i></div>
                                            <input type="datetime-local" id="myID" placeholder=" data and time " value="" required="required" id="email" class="floating-input" name="date">
                                            <label>@lang('lang.date')<span ></span></label>
                                            @error('email')
                                            <div>{{ $message }}</div>
                                            @enderror
                                            <div class="error-label"></div>
                                        </div>

                                    </div>
                                    <div class="fieldsets row">

                                        @php
                                        $brands = App\Models\Category::all();
                                        @endphp
                                        <div class="form-group col-sm-4">
                                            <span>@lang('lang.BrandName')</span>
                                            <select name="carBrand" id="Dtype2" required>
                                                <option>@lang('lang.SelectBrand')</option>
                                                @foreach ($brands as $brand)
                                                <option value="{{ $brand->category_name }}">
                                                    {{ session()->get('locale')=='bn'? $brand->brand_bn: $brand->category_name}}
                                                </option>
                                                @endforeach
                                            </select>
                                            <div class="help-block with-errors"></div>
                                        </div>
                                        <div class="form-group col-sm-4">
                                            <span>@lang('lang.TemplateName')</span>
                                            <select name="carModel" id="Dtype2" required>
                                                <option>@lang('lang.SelectTemplate')</option>
                                                @php
                                                $models = App\Models\gallery::all();
                                                @endphp
                                                @foreach ($models as $item)
                                                <option value="{{ $item->gallery  }}">
                                                    {{ session()->get('locale')=='bn'?  $item->model_name_bn:  $item->gallery}}
                                                </option>
                                                @endforeach
                                            </select>
                                            <div class="help-block with-errors"></div>
                                        </div>
                                        @php
                                        $carNumYears = App\Models\caryear::all();
                                        @endphp
                                        <div class="form-group col-sm-4">
                                            <span>@lang('lang.CarModel')</span>
                                            <select name="car_year_number" id="Dtype2" required>
                                                <option>@lang('lang.CarYear')</option>
                                                @foreach ($carNumYears as $item)
                                                <option value="{{$item->carYearNum  }}"> {{$item->carYearNum }}</option>
                                                @endforeach
                                            </select>
                                            <div class="help-block with-errors"></div>
                                        </div>



                                    </div>
                                    <div class="fieldsets row">
                                        <span>Car Registration Number</span>
                                        @php
                                        $metros = App\Models\metro::all();
                                        @endphp
                                        <div class="form-group col-sm-1">

                                            <select name="metro" id="Dtype2" required>

                                                @foreach ($metros as $item)
                                                <option value="{{ $item->metro_name }}">
                                                    {{$item->metro_name }}
                                                </option>
                                                @endforeach
                                            </select>
                                            <div class="help-block with-errors"></div>
                                        </div>



                                        @php
                                        $letters = App\Models\letter::all();
                                        @endphp
                                        <div class="form-group col-sm-1">

                                            <select name="letter" id="Dtype2" required>

                                                @foreach ($letters as $item)
                                                <option value="{{ $item->letter_name  }}">
                                                    {{ $item->letter_name  }}
                                                    {{-- {{ session()->get('locale')=='bn'?  $ga->model_name_bn:  $ga->gallery}} --}}
                                                </option>
                                                @endforeach

                                            </select>
                                            <div class="help-block with-errors"></div>
                                        </div>

                                        <div class="col-md-4 form-group floating-label">
                                            <div class="formicon"></i></div>

                                            <input type="text" placeholder="" value="" id="name" class="floating-input" name="registration">

                                            <label>registration<span style="color: ">*</span></label>
                                            @error('name')
                                            <div>{{ $message }}</div>
                                            @enderror
                                            <div class="error-label"></div>
                                        </div>

                                   </div>


                                   {{-- spare part  start--}}
                                   <h2 class="mt0 mb0 text-center mb-5" style="font-size:20px">Purchese of Spare Parts</h2>
                                   <div class="fieldsets row">
                                    @php
                                    $spareParts = App\Models\sparePart::all();
                                    @endphp

                                    <div class="form-group col-sm-3">

                                        <select name="spareParts" id="Dtype3" required>

                                            @foreach ( $spareParts as $item)
                                            <option value="{{ $item->sparepart_name  }}">
                                                {{ $item->sparepart_name }}
                                                {{-- {{ session()->get('locale')=='bn'?  $ga->model_name_bn:  $ga->gallery}} --}}
                                            </option>
                                            @endforeach

                                        </select>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="col-md-3 form-group floating-label">
                                        <div class="formicon"></div>

                                        <input type="text" placeholder="" value="" id="name" class="floating-input" name="partPartial">

                                        <label>Pic/Set/Ltrs/Size <span style="color: ">*</span></label>
                                        @error('name')
                                        <div>{{ $message }}</div>
                                        @enderror
                                        <div class="error-label"></div>
                                    </div>

                                    <div class="form-group col-sm-3">

                                        <select name="spareParts" id="Dtype3" required>

                                            @foreach ( $spareParts as $item)
                                            <option value="{{ $item->sparepart_name  }}">
                                                {{ $item->sparepart_name }}
                                                {{-- {{ session()->get('locale')=='bn'?  $ga->model_name_bn:  $ga->gallery}} --}}
                                            </option>
                                            @endforeach

                                        </select>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="col-md-3 form-group floating-label">
                                        <div class="formicon"></div>

                                        <input type="text" placeholder="" value="" id="name" class="floating-input" name="partPartial">

                                        <label>Pic/Set/Ltrs/Size <span style="color: ">*</span></label>
                                        @error('name')
                                        <div>{{ $message }}</div>
                                        @enderror
                                        <div class="error-label"></div>
                                    </div>






                                     </div>{{--1 row spare end --}}

                                   {{-- spare part  start--}}

                                   <div class="fieldsets row">
                                    @php
                                    $spareParts = App\Models\sparePart::all();
                                    @endphp

                                    <div class="form-group col-sm-3">

                                        <select name="spareParts" id="Dtype3" required>

                                            @foreach ( $spareParts as $item)
                                            <option value="{{ $item->sparepart_name  }}">
                                                {{ $item->sparepart_name }}
                                                {{-- {{ session()->get('locale')=='bn'?  $ga->model_name_bn:  $ga->gallery}} --}}
                                            </option>
                                            @endforeach

                                        </select>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="col-md-3 form-group floating-label">
                                        <div class="formicon"></div>

                                        <input type="text" placeholder="" value="" id="name" class="floating-input" name="partPartial">

                                        <label>Pic/Set/Ltrs/Size <span style="color: ">*</span></label>
                                        @error('name')
                                        <div>{{ $message }}</div>
                                        @enderror
                                        <div class="error-label"></div>
                                    </div>

                                    <div class="form-group col-sm-3">

                                        <select name="spareParts" id="Dtype3" required>

                                            @foreach ( $spareParts as $item)
                                            <option value="{{ $item->sparepart_name  }}">
                                                {{ $item->sparepart_name }}
                                                {{-- {{ session()->get('locale')=='bn'?  $ga->model_name_bn:  $ga->gallery}} --}}
                                            </option>
                                            @endforeach

                                        </select>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="col-md-3 form-group floating-label">
                                        <div class="formicon"></div>

                                        <input type="text" placeholder="" value="" id="name" class="floating-input" name="partPartial">

                                        <label>Pic/Set/Ltrs/Size <span style="color: ">*</span></label>
                                        @error('name')
                                        <div>{{ $message }}</div>
                                        @enderror
                                        <div class="error-label"></div>
                                    </div>






                                     </div>{{--1 row spare end --}}

                                   {{-- spare part  start--}}

                                   <div class="fieldsets row">
                                    @php
                                    $spareParts = App\Models\sparePart::all();
                                    @endphp

                                    <div class="form-group col-sm-3">

                                        <select name="spareParts" id="Dtype3" required>

                                            @foreach ( $spareParts as $item)
                                            <option value="{{ $item->sparepart_name  }}">
                                                {{ $item->sparepart_name }}
                                                {{-- {{ session()->get('locale')=='bn'?  $ga->model_name_bn:  $ga->gallery}} --}}
                                            </option>
                                            @endforeach

                                        </select>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="col-md-3 form-group floating-label">
                                        <div class="formicon"></div>

                                        <input type="text" placeholder="" value="" id="name" class="floating-input" name="partPartial">

                                        <label>Pic/Set/Ltrs/Size <span style="color: ">*</span></label>
                                        @error('name')
                                        <div>{{ $message }}</div>
                                        @enderror
                                        <div class="error-label"></div>
                                    </div>

                                    <div class="form-group col-sm-3">

                                        <select name="spareParts" id="Dtype3" required>

                                            @foreach ( $spareParts as $item)
                                            <option value="{{ $item->sparepart_name  }}">
                                                {{ $item->sparepart_name }}
                                                {{-- {{ session()->get('locale')=='bn'?  $ga->model_name_bn:  $ga->gallery}} --}}
                                            </option>
                                            @endforeach

                                        </select>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="col-md-3 form-group floating-label">
                                        <div class="formicon"></div>

                                        <input type="text" placeholder="" value="" id="name" class="floating-input" name="partPartial">

                                        <label>Pic/Set/Ltrs/Size <span style="color: ">*</span></label>
                                        @error('name')
                                        <div>{{ $message }}</div>
                                        @enderror
                                        <div class="error-label"></div>
                                    </div>






                                     </div>{{--1 row spare end --}}

                                   {{-- spare part  start--}}

                                   <div class="fieldsets row">
                                    @php
                                    $spareParts = App\Models\sparePart::all();
                                    @endphp

                                    <div class="form-group col-sm-3">

                                        <select name="spareParts" id="Dtype3" required>

                                            @foreach ( $spareParts as $item)
                                            <option value="{{ $item->sparepart_name  }}">
                                                {{ $item->sparepart_name }}
                                                {{-- {{ session()->get('locale')=='bn'?  $ga->model_name_bn:  $ga->gallery}} --}}
                                            </option>
                                            @endforeach

                                        </select>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="col-md-3 form-group floating-label">
                                        <div class="formicon"></div>

                                        <input type="text" placeholder="" value="" id="name" class="floating-input" name="partPartial">

                                        <label>Pic/Set/Ltrs/Size <span style="color: ">*</span></label>
                                        @error('name')
                                        <div>{{ $message }}</div>
                                        @enderror
                                        <div class="error-label"></div>
                                    </div>

                                    <div class="form-group col-sm-3">

                                        <select name="spareParts" id="Dtype3" required>

                                            @foreach ( $spareParts as $item)
                                            <option value="{{ $item->sparepart_name  }}">
                                                {{ $item->sparepart_name }}
                                                {{-- {{ session()->get('locale')=='bn'?  $ga->model_name_bn:  $ga->gallery}} --}}
                                            </option>
                                            @endforeach

                                        </select>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="col-md-3 form-group floating-label">
                                        <div class="formicon"></div>

                                        <input type="text" placeholder="" value="" id="name" class="floating-input" name="partPartial">

                                        <label>Pic/Set/Ltrs/Size <span style="color: ">*</span></label>
                                        @error('name')
                                        <div>{{ $message }}</div>
                                        @enderror
                                        <div class="error-label"></div>
                                    </div>






                                     </div>{{--1 row spare end --}}

                                   {{-- spare part  start--}}

                                   <div class="fieldsets row">
                                    @php
                                    $spareParts = App\Models\sparePart::all();
                                    @endphp

                                    <div class="form-group col-sm-3">

                                        <select name="spareParts" id="Dtype3" required>

                                            @foreach ( $spareParts as $item)
                                            <option value="{{ $item->sparepart_name  }}">
                                                {{ $item->sparepart_name }}
                                                {{-- {{ session()->get('locale')=='bn'?  $ga->model_name_bn:  $ga->gallery}} --}}
                                            </option>
                                            @endforeach

                                        </select>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="col-md-3 form-group floating-label">
                                        <div class="formicon"></div>

                                        <input type="text" placeholder="" value="" id="name" class="floating-input" name="partPartial">

                                        <label>Pic/Set/Ltrs/Size <span style="color: ">*</span></label>
                                        @error('name')
                                        <div>{{ $message }}</div>
                                        @enderror
                                        <div class="error-label"></div>
                                    </div>

                                    <div class="form-group col-sm-3">

                                        <select name="spareParts" id="Dtype3" required>

                                            @foreach ( $spareParts as $item)
                                            <option value="{{ $item->sparepart_name  }}">
                                                {{ $item->sparepart_name }}
                                                {{-- {{ session()->get('locale')=='bn'?  $ga->model_name_bn:  $ga->gallery}} --}}
                                            </option>
                                            @endforeach

                                        </select>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="col-md-3 form-group floating-label">
                                        <div class="formicon"></div>

                                        <input type="text" placeholder="" value="" id="name" class="floating-input" name="partPartial">

                                        <label>Pic/Set/Ltrs/Size <span style="color: ">*</span></label>
                                        @error('name')
                                        <div>{{ $message }}</div>
                                        @enderror
                                        <div class="error-label"></div>
                                    </div>

                                     </div>{{--1 row spare end --}}

                                </div>
                             </div>




                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="check1" onchange="toggleTextarea()">
                            <label class="form-check-label" for="check1">@lang('lang.Others')</label>
                          </div>

                          <textarea id="textarea1" class="hidden" name="Others" rows="4" cols="50"></textarea>



                        <div class="fieldsets mt20"> <button type="submit" id="p" name="submit" class="btn btn-main bg-btn w-fit mb20"><span>@lang('lang.OrderNow')<i class="fas fa-chevron-right fa-icon"></i></span> <span class="loader"></span></button> </div>
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

