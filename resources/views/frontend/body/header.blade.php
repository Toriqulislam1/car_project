<style>
    .dropbtn {
        background-color: white;
        color: black;
        padding: 16px;
        font-size: 16px;
        border: none;
        cursor: pointer;
        font-family: 'Poppins', sans-serif
    }

    .dropdown {
        position: relative;
        display: inline-block;
    }

    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
        z-index: 1;
    }

    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }

    .dropdown-content a:hover {
        background-color: #f1f1f1
    }

    .dropdown:hover .dropdown-content {
        display: block;
    }

    .dropdown:hover .dropbtn {
        background-color: white;
    }

      /* li  a.active {
        color:#DD7A25 !important;
    } */

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
    $(document).ready(function() {
        var head = document.getElementsByClassName("navarea")[0];
        var activeTab = head.getElementsByTagName("a");
        for (var i = 0; i < activeTab.length; i++) {
            $(activeTab[i]).click(function() {
                var tab = document.getElementsByClassName("active");
                tab[0].className = tab[0].className.replace("active", "");
                this.className += "active";
            });
        }
    });

</script>

@php
$setting = App\Models\setting::find(1);
@endphp




<header class="header-pr nav-bg-w main-header navfix fixed-top menu-white" style="background: white;">
    <div class="container m-pad">
        <div class="menu-header">
            <div class="dsk-logo"><a class="nav-brand" href="{{ url('/') }}">

                    <img src="{{ asset($setting->logo) }}" alt="Logo" class="mega-darks-logo" />
                </a>
            </div>

            <div class="custom-nav" role="navigation">


                <ul class="nav-list onepge navarea ">
                    <li class=" active " ><a href="{{ url('/') }}" class=" @yield('header-select','active')" >Home</a></li>
                    <li><a href="{{ route('service-index-page') }}" class="{{ Request::is('page/service')?'active':'' }}" style="font-size: 16px;
                        color: black;
                        font-family: 'Poppins', sans-serif;
                        font-weight: 500;
                        padding: 0px 15px;
                        line-height: 85px;
                        /* text-transform: uppercase; */
                        position: relative;
                        overflow: hidden;">Services</a></li>
                    <li><a href="{{ route('work-index-page') }}" class="{{ Request::is('page/work')?'active':'' }}" style="font-size: 16px;
                        color: black;
                        font-family: 'Poppins', sans-serif;
                        font-weight: 500;
                        padding: 0px 15px;
                        line-height: 85px;
                        /* text-transform: uppercase; */
                        position: relative;
                        overflow: hidden;">Work</a></li>
                    <li><a href="{{ route('SpareParts-index-page') }}" class="{{ Request::is('page/parts')?'active':'' }}" style="font-size: 16px;
                        color: black;
                        font-family: 'Poppins', sans-serif;
                        font-weight: 500;
                        padding: 0px 15px;
                        line-height: 85px;
                        /* text-transform: uppercase; */
                        position: relative;
                        overflow: hidden;">Spare Parts</a></li>


                    @if(Auth::check())
                    <div class="dropdown">
                        <button class="dropbtn" style="font-family: 'Poppins', sans-serif;">Dashboard</button>
                        <div class="dropdown-content">
                            <a class="dropdown-item" href="{{ route('user-profile-index') }}">Profile</a>
                            <a class="dropdown-item" href="{{ route('order-show-user-profile') }}">service Order</a>
                            <a class="dropdown-item" href="{{ route('order-user-payment') }}">service Payment invoice</a>
                            <a class="dropdown-item" href="{{ route('product-order') }}">product order</a>
                            <a class="dropdown-item" href="{{ route('logout-user') }}">Logout</a>

                        </div>
                    </div>
                    @else
                    <a style="  font-size: 16px;
                      color: #000;
                      font-family: 'Poppins', sans-serif;
                      font-weight: 500;
                      padding: 0px 15px;
                      line-height: 85px;
                      /* text-transform: uppercase; */
                      position: relative;
                      overflow: hidden;" href="{{ route('login-index') }}" class="menu-links">Login</a>
                    @endif

                    <li>
                        <div class="dropdown">
                            <button class="dropbtn">Language</button>
                            <div class="dropdown-content">
                                <a class="dropdown-item" href="{{route('localization', ['locale' => 'en'])}}">English</a>
                                <a class="dropdown-item" href="{{route('localization', ['locale' => 'bn'])}}">বাংলা</a>
                            </div>
                        </div>
                    </li>
                    <li><a href="https://wa.me/+8801535880909" class="btn-outline icon-btn" style="
                        background: #00E676;">Chat With Us <i class="fab fa-whatsapp"></i></a> </li>

                </ul>
            </div>
            <div class="mobile-menu2">
                <ul class="mob-nav2">
                    <li class="navm-"> <a class="toggle" href="#"><span></span></a></li>
                </ul>
            </div>
        </div>

        <nav id="main-nav">
            <ul class="first-nav">
                <li><a href="#home" class="menu-links">Home</a></li>
                <li><a href="#services" class="menu-links">Services</a></li>
                <li><a href="#work" class="menu-links">Work</a></li>
                <li><a href="{{ route('login-index') }}" class="menu-links">Login</a></li>

                @if(Auth::check())
                <div class="dropdown">
                    <button class="dropbtn">Dashboard</button>
                    <div class="dropdown-content">
                        <a class="dropdown-item" href="{{ route('user-profile-index') }}">Profile</a>
                        <a class="dropdown-item" href="{{ route('order-show-user-profile') }}">service Order</a>
                        <a class="dropdown-item" href="{{ route('order-user-payment') }}">service Payment invoice</a>
                        <a class="dropdown-item" href="{{ route('product-order') }}">product order</a>
                        <a class="dropdown-item" href="{{ route('logout-user') }}">Logout</a>

                    </div>
                </div>
                {{-- @else
                <a style="  font-size: 16px;
                  color: #000;
                  font-family: 'Poppins', sans-serif;
                  font-weight: 500;
                  padding: 0px 15px;
                  line-height: 85px;
                  text-transform: uppercase;
                  position: relative;
                  overflow: hidden;" href="{{ route('login-index') }}" class="menu-links">Login</a> --}}
                @endif

            </ul>
        </nav>

    </div>

</header>

