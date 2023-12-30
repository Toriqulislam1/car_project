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

{{-- registration style --}}
{{-- .container{
width: 100%;
height: 100vh;
background: #e3f9ff;
display: flex;
align-items: center;
justify-content: center;
}
.calculator{
background: #3a4452;
padding: 20px;
border-radius: 10px;
}
.calculator form input{
border: 0;
outline: 0;
width: 60px;
height: 60px;
border-radius: 10px;
box-shadow: -8px -8px 15px rgba(255, 255, 255, 0.1),5px 5px 15px rgba(0, 0, 0, 0.2);
background: transparent;
font-size: 20px;
color: #fff;
cursor: pointer;
margin: 10px;
}

form .display{
display: flex;
justify-content: flex-end;
margin: 20px 0;
}
form .display input{
text-align: right;
flex: 1;
font-size: 45px;
box-shadow: none;
}
form input.equal{
width: 145px;
}



form input.operator{
color: #33ffd8;
} --}}

{{-- registration style end --}}

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

                <form action="{{ route('checkout-store') }}" id="contactform" method="post" novalidate="novalidate">
                  @csrf
                  <input type="hidden" name="product_id" value="{{ $product_id ?? session('product_id') }}">

                  <div class="fieldsets row">
                    <div class="col-md-4 form-group floating-label">


                      <div class="formicon"><i class="fas fa-user"></i></div>

                      <input type="text" placeholder=" " value="{{ session('test.name') }}" id="name"
                        class="floating-input" name="name">

                      <label>@lang('lang.FullName')<span style="color: red">*</span></label>
                      @error('name')
                      <div>{{ $message }}</div>
                      @enderror
                      <div class="error-label"></div>
                    </div>

                    <div class="col-md-4 form-group floating-label">
                      <div class="formicon"><i class="fas fa-phone-alt"></i></div>
                      <input type="tel" placeholder=" " value="{{ session('test.phone') }}" required="required"
                        id="mobile_number" class="floating-input" name="phone">
                      <label>@lang('lang.MobileNumber')<span style="color: red">*</span></label>
                      @error('phone')
                      <div>{{ $message }}</div>
                      @enderror
                      <div class="error-label"></div>
                    </div>

                    <div class="col-md-4 form-group floating-label">
                        <div class="formicon"><i class="fas fa-envelope"></i></div>
                        <input type="email" placeholder=" " value="{{ session('test.email') }}" email required="required"
                          id="email" class="floating-input" name="email">
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
                      <input type="text" placeholder=" " required="required" value="{{ session('test.location') }}"
                        id="your_location" class="floating-input" name="location">
                      <label>@lang('lang.YourLocation')<span style="color: red">*</span></label>
                      @error('location')
                      <div>{{ $message }}</div>
                      @enderror
                      <div class="error-label"></div>
                    </div>

                    <div class="col-md-4 form-group floating-label">
                        <div class="formicon"><i class='fas fa-calendar-minus'></i></div>
                        <input type="datetime-local" id="myID" placeholder=" data and time "
                          value="{{ session('test.date') }}" required="required" id="email" class="floating-input"
                          name="date">
                        <label>@lang('lang.date')<span style="color: ">*</span></label>
                        @error('email')
                        <div>{{ $message }}</div>
                        @enderror
                        <div class="error-label"></div>
                      </div>

                  </div>
                  {{-- row end --}}

                  <div class="fieldsets row">


                    @php
                    $brands = App\Models\Category::all();
                    @endphp




                    <div class="form-group col-sm-4">
                        <span>@lang('lang.BrandName')</span>
                      <select name="carBrand" id="Dtype2" required>
                        <option value>@lang('lang.SelectBrand')</option>
                        @foreach ($brands as $brand)
                        <option value="{{ $brand->category_name }}" {{ ($brand->category_name ==
                          session('test.carBrand')) ? 'selected' : '' }}>
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
                        @foreach ($Ga as $ga)
                        <option value="{{ $ga->gallery  }}">
                          {{ session()->get('locale')=='bn'?  $ga->model_name_bn:  $ga->gallery}}
                        </option>
                        @endforeach

                      </select>
                      <div class="help-block with-errors"></div>
                    </div>
                    @php
                    $carNumYears = App\Models\caryear::all();
                @endphp

              <div class="col-md-4 form-group floating-label">
                  <span>@lang('lang.CarModel')</span>
                  <select name="car_year_number" id="Dtype2" required>
                    <option>@lang('lang.CarYear')</option>
                      @foreach ($carNumYears as $item)
                      <option value= "{{ $item->carYearNum }}">
                        {{ $item->carYearNum  }}
                        </option>
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


                        <div class="formicon"><i class="fa fa-car"></i></div>

                        <input type="text" placeholder="" value="" id="name"
                          class="floating-input" name="registration">

                        <label>Serial Number<span style="color: red">*</span></label>
                        @error('name')
                        <div>{{ $message }}</div>
                        @enderror
                        <div class="error-label"></div>
                      </div>

                  </div>


              </div>
            </div>

            <span>@lang('lang.SelectService')</span>
            @foreach ($services as $service)
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="checkbox" name="service[]" id="inlineCheckbox1"
                value="{{ $service->id}}" {{ in_array($service->id, session('test.service', [])) ? 'checked' : '' }}>
              <label class="form-check-label" for="inlineCheckbox1">{{ $service->content_title }}</label>
            </div>
            @endforeach

            <div class="form-check">
              <input class="form-check-input" type="checkbox" id="check1" onchange="toggleTextarea()">
              <label class="form-check-label" for="check1">@lang('lang.Others')</label>
            </div>

            <textarea id="textarea1" class="hidden" name="Others" rows="4" cols="50"></textarea>

            <div class="fieldsets mt20"> <button type="submit" id="p" name="submit"
                class="btn btn-main bg-btn w-fit mb20"><span>@lang('lang.OrderNow')<i
                    class="fas fa-chevron-right fa-icon"></i></span> <span class="loader"></span></button> </div>
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
