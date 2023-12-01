<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Models\order;
use App\Models\Gallery;
use App\Models\Services;
use App\Models\productOrder;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Hash;
use Image;


class userLoginController extends Controller
{
    function Index(){
        return view('frontend.auth.login');
    }//end

    function loginSuccess(Request $request){



        $email = $request->email;
        $password = $request->password;

        if (Auth::attempt(['email' => $email, 'password' => $password])) {


            $services = Services::all();
            if(session('test')){
                return view('frontend.order.checkout', ['services' => $services]);
            }else{
                return view('frontend.auth.userProfile');
            }




        }else{
            return back()->with('password_worng','Your credentials worng');
        }
    }//end

    function logOut(){

        Auth::logout();

        return redirect('/');


    }//end


    function IndexRegister(){

        return view('frontend.auth.register');
    }//end

    function registerStore(Request $request){

        $request->validate([
            'name' => 'required|max:255',
            'mobile' => 'required|max:20',
            'email' => 'required|unique:orders|max:30',
            'password' => 'required|max:20',

        ]);
		user::insert([

			'name' => $request->name,
			'mobile' => $request->mobile,
			'email' => $request->email,
			'password' => Hash::make($request->password),

		]);

        if(Auth::attempt(['email' => $request->email, 'password' => $request->password])){

            $services = Services::all();
            $Ga = Gallery::all();
            if(session('test')){
                return view('frontend.order.checkout', [
                    'services' => $services,
                    'Ga' =>$Ga,
                ]);
            }else{
                return view('frontend.auth.userProfile');
            }


        }


    }//end




    function userProfile(){

        $userOrders = order::where('user_id',Auth::user()->id)->get();

        return view('frontend.auth.userProfile',['userOrders'=>$userOrders]);
    }//end

    function userOrder(){

        $userOrders = order::where('user_id',Auth::user()->id)->get();
        return view('frontend.auth.userOrder',['userOrders'=>$userOrders]);
    }//end

    function userProfileEdit(){

        return view('frontend.auth.profileEdit');
    }//end

    function userProfileImage(Request $request){


		$id = User::where('id',Auth::user()->id)->get();

		$image = $request->file('image');
    	$name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
    	Image::make($image)->resize(917,1000)->save('upload/user/profile/'.$name_gen);
    	$save_url = 'upload/user/profile/'.$name_gen;


		user::find(Auth::user()->id)->update([
			'image' => $save_url,


		]);
		return redirect()->back();
    }//end

    function userInfo(Request $request){
        if(!empty($request->password)){

            user::find(Auth::user()->id)->update([
                'name' => $request->name,
                'mobile' => $request->mobile,
                'email' => $request->email,
                'password' => Hash::make($request->password),
            ]);

        }else{

            user::find(Auth::user()->id)->update([
                'name' => $request->name,
                'mobile' => $request->mobile,
                'email' => $request->email,
            ]);
        }
        return back();

    }//end

    //product order show

    function productOrderIndex(){

        $products = productOrder::where('user_id',Auth::user()->id)->get();


        return view('frontend.auth.product.productUserShow',['products'=>$products]);
    }//end

    function productOrderDownload($id){
        $products = productOrder::find($id);
        $pdf = Pdf::loadView('frontend.auth.product.invoice', ['products'=>$products])->setOptions(['defaultFont' => 'sans-serif']);
        return $pdf->stream('invoice-pdf');


    }//end


}
