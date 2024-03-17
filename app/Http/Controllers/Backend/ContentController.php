<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\subcategory;
use App\Models\Services;
use App\Models\serviceCategory;
use Carbon\Carbon;
use Image;

class ContentController extends Controller
{


    // service category section
    public function AddServiceCategory(){
        $category = serviceCategory::latest()->get();
		return view('admin.content.category.index',compact('category'));

	}

    public function ServiceCategoryStore(Request $request){

        $request->validate([
            'category_name' => 'required',
            'category_name_bn' => 'required',

        ],[
            'category_name.required' => 'Input category Name',
            'category_name_bn.required' => 'Input category Name Bangla',

        ]);



        serviceCategory::insert([
        'category_name' => $request->category_name,
        'category_name_bn' => $request->category_name_bn,


        ]);

        $notification = array(
            'message' => 'service category Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    } // end method



        function ServiceCategoryEdit($id){

		$category = serviceCategory::findOrFail($id);
		return view('admin.content.category.edit',compact('category'));

        }//end


        function ServiceCategoryUpdate(Request $request,$id){


        serviceCategory::findOrFail($id)->update([
            'category_name' => $request->category_name,
            'category_name_bn' => $request->category_name_bn,
    	]);

	    $notification = array(
			'message' => 'category Updated Successfully',
			'alert-type' => 'success'
		);

		return redirect()->route('add-catagory-service')->with($notification);


        }


	   public function ServiceCategoryDelete($id){
		serviceCategory::findOrFail($id)->delete();
		$notification = array(
		   'message' => 'Service category Deleted Successfully',
		   'alert-type' => 'success'
	   );

	   return redirect()->back()->with($notification);
    }

    // service section start

    public function AddContent(){
		$categories = serviceCategory::latest()->get();
		return view('admin.content.add_content',compact('categories'));

	}

	public function StoreContent(Request $request){




		$image = $request->file('breadcrumb');
    	$name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
    	Image::make($image)->resize(600,500)->save('upload/services/'.$name_gen);
    	$save_url = 'upload/services/'.$name_gen;

		if($request->hasFile("thamble")){
            $file=$request->file("thamble");
            $imageName=time().'_'.$file->getClientOriginalName();
            $file->move(\public_path("upload/services/"),$imageName);
			$save = 'upload/services/'.$imageName;

		}


		Services::insert([
			'category_id' => $request->category_id,
			'subcategory_id' => $request->subcategory_id,
			//'childcategory_id' => $request->childcategory_id,
			'content_slide_title' => $request->content_slide_title,
			'content_title' => $request->content_title,
			'content_descrip' => $request->content_descrip,
			'long_descrip' => $request->long_descrip,
			'breadcrumb' => $save_url,
			'thamble' => $save,
            'breadcrumb_title_bn' => $request->breadcrumb_title_bn,
            'service_title_bn' => $request->service_title_bn,
            'short_descrip_bn' => $request->short_descrip_bn,
            'long_descrip_bn' => $request->long_descrip_bn,
			'status' => 1,
      		'created_at' => Carbon::now(),


		]);


		$notification = array(
			'message' => 'Service Inserted Successfully',
			'alert-type' => 'success'
		);

		return redirect()->route('manage-content')->with($notification);

	} ///end method

	public function ManageContent(){

		$services = Services::latest()->get();
		return view('admin.content.content_view',compact('services'));
	}


	public function EditContent($id){


		$categories = serviceCategory::latest()->get();

		$services = Services::findOrFail($id);
		return view('admin.content.content_edit',compact('categories','services'));

	} //end

	public function ContentDataUpdate(Request $request){

		$services_id = $request->id;
		$oldImage = $request->old_img;
		#unlink($oldImage);

	   $image = $request->file('breadcrumb');
		   $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
		   Image::make($image)->resize(917,1000)->save('upload/services/'.$name_gen);
		   $save_url = 'upload/services/'.$name_gen;

		Services::findOrFail($services_id)->update([
			'category_id' => $request->category_id,
			'subcategory_id' => $request->subcategory_id,
			// 'childcategory_id' => $request->childcategory_id,
			'content_slide_title' => $request->content_slide_title,
			'content_title' => $request->content_title,
			'content_descrip' => $request->content_descrip,
			'long_descrip' => $request->long_descrip,
			'long_descrip' => $request->long_descrip,
			'breadcrumb' => $save_url,
			'status' => 1,
      		'created_at' => Carbon::now(),


		]);


		$notification = array(
			'message' => 'Service Update Successfully',
			'alert-type' => 'success'
		);

		return redirect()->route('manage-content')->with($notification);

	} ///end method

	/// Service  Breadcrumb Update ///
	public function ThambleImageUpdate(Request $request){
		$pro_id = $request->id;
		$oldImage = $request->old_img;
		unlink($oldImage);

	   $image = $request->file('thamble');
		   $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
		   Image::make($image)->resize(600,500)->save('upload/services/'.$name_gen);
		   $save_url = 'upload/services/'.$name_gen;

		   Services::findOrFail($pro_id)->update([
			   'thamble' => $save_url,
			   'updated_at' => Carbon::now(),

		   ]);

		   $notification = array(
			'message' => 'Services Image Thumble Updated Successfully',
			'alert-type' => 'info'
		);

		return redirect()->back()->with($notification);

     } // end method

	 public function ServicesInactive($id){
		Services::findOrFail($id)->update(['status' => 0]);
		$notification = array(
		   'message' => 'Services Inactive',
		   'alert-type' => 'success'
	   );

	   return redirect()->back()->with($notification);
	}
	public function ServicesActive($id){
		Services::findOrFail($id)->update(['status' => 1]);
		   $notification = array(
			  'message' => 'Services Active',
			  'alert-type' => 'success'
		  );

		  return redirect()->back()->with($notification);

	   } //end

	   public function ServicesDelete($id){
		$services = Services::findOrFail($id);
		 unlink($services->breadcrumb);
		Services::findOrFail($id)->delete();



		$notification = array(
		   'message' => 'Service Deleted Successfully',
		   'alert-type' => 'success'
	   );

	   return redirect()->back()->with($notification);

	}// end method



}
