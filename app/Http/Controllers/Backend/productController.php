<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Image;
use App\Models\product;
use App\Models\productOrder;
use Auth;

class productController extends Controller
{
    function ProductIndex(){
        return view('admin.product.index');
    }//end

    function ProductManageIndex(){
        $products = product::all();
        return view('admin.product.manageProduct',['products'=>$products]);
    }//end

    function ProductStore(Request $request){

        $image = $request->file('image');
    	$name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
    	Image::make($image)->save('upload/product/'.$name_gen);
    	$save_url = 'upload/product/'.$name_gen;




		product::insert([

			'title' => $request->title,
			'price' => $request->price,
			'unit' => $request->unit,
			'discount' => $request->discount,
			'image' => $save_url,
			'details' =>$request->details,
			'stock' => $request->stock,

			'status' => 1,
      		'created_at' => Carbon::now(),


		]);


		$notification = array(
			'message' =>  ' Product Inserted Successfully',
			'alert-type' => 'success'
		);

		return redirect()->route('product-manage')->with($notification);

    }//end


    public function EditProduct($id){

		$products = product::findOrFail($id);

		return view('admin.product.edit',compact('products'));

	} //end

	public function ProductUpdate(Request $request){

		$product_id = $request->id;
		$oldImage = $request->old_image;
		unlink($oldImage);

        $image = $request->file('image');
    	$name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
    	Image::make($image)->save('upload/product/'.$name_gen);
    	$save_url = 'upload/product/'.$name_gen;




		product::findOrFail($product_id)->update([

			'title' => $request->title,
			'price' => $request->price,
			'unit' => $request->unit,
			'discount' => $request->discount,
			'image' => $save_url,
			'details' =>$request->details,
			'stock' => $request->stock,

			'status' => 1,
      		'created_at' => Carbon::now(),


		]);


		$notification = array(
			'message' =>  ' Product update Successfully',
			'alert-type' => 'success'
		);

		return redirect()->route('product-manage')->with($notification);

	} ///end method



	 public function ProductInactive($id){
		product::findOrFail($id)->update(['status' => 0]);
		$notification = array(
		   'message' => 'product Inactive',
		   'alert-type' => 'success'
	   );

	   return redirect()->back()->with($notification);
	}
	public function productActive($id){
		product::findOrFail($id)->update(['status' => 1]);
		   $notification = array(
			  'message' => 'product Active',
			  'alert-type' => 'success'
		  );

		  return redirect()->back()->with($notification);

	   } //end

	   public function ProductDelete($id){
		$products = product::findOrFail($id);
		 unlink($products->image);
		product::findOrFail($id)->delete();



		$notification = array(
		   'message' => 'product Deleted Successfully',
		   'alert-type' => 'success'
	   );

	   return redirect()->back()->with($notification);

	}// end method






    //frontend checkout

    function productCheckOutIndex($id){

        $product_id = product::find($id);

        return view('frontend.product.order.checkout',['product_id'=>$product_id]);
    }

    function productCheckOutStore(Request $request){

        if(Auth::user()){

            productOrder::insertGetId([
                'name' => $request->name,
                'phone' => $request->phone,
                'email' => $request->email,
                'location' => $request->location,
                'product_id' =>$request->product_id,
                'user_id' => Auth::user()->id,
                'order_number' => "#" . Auth::user()->id . rand(10, 9999),
                'qty'=>$request->qty,

            ]);
            product::where('id', $request->product_id)->decrement('stock', $request->qty);

            return view('frontend.contact.success_page');
        }else{
            return redirect()->route('login-index');
        }

    }
















}
