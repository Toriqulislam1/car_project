<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Gallery;
use Carbon\Carbon;
use Image;

class GalleryController extends Controller
{
    public function AddGallery(){

		$gallery = Gallery::latest()->get();
		return view('admin.gallery.add_gallery',compact('gallery'));

	} //end

    public function StoreGallery(Request $request){




		Gallery::insert([
			'gallery' => $request->gallery,
			'status' => 1,
      		'created_at' => Carbon::now(),


		]);


		$notification = array(
			'message' => 'GA Inserted Successfully',
			'alert-type' => 'success'
		);

		return redirect()->route('manage-gallery')->with($notification);

	} ///end method
	public function ManageGallery(){

		$gallery = Gallery::latest()->get();
		return view('admin.gallery.add_gallery',compact('gallery'));
	} //end

	public function EditGallery($id){


		$gallery = Gallery::findOrFail($id);
		return view('admin.gallery.gallery_edit',compact('gallery'));

	} //end

	public function GalleryUpdate(Request $request){

		$pro_id = $request->id;


		Gallery::findOrFail($pro_id)->update([

			'gallery' =>  $request->gallery,
			'status' => 1,
			'created_at' => Carbon::now(),


		]);


		$notification = array(
			'message' => 'GA Update Successfully',
			'alert-type' => 'success'
		);

		return redirect()->route('manage-gallery')->with($notification);

	} ///end method

	public function GalleryDelete($id){

		Gallery::findOrFail($id)->delete();



		$notification = array(
		   'message' => 'GA Deleted Successfully',
		   'alert-type' => 'success'
	   );

	   return redirect()->back()->with($notification);

	}// end method

	public function GalleryInactive($id){
		Gallery::findOrFail($id)->update(['status' => 0]);
		$notification = array(
		   'message' => 'GA Inactive',
		   'alert-type' => 'success'
	   );

	   return redirect()->back()->with($notification);
	}
	public function GalleryActive($id){
		Gallery::findOrFail($id)->update(['status' => 1]);
		   $notification = array(
			  'message' => 'GA Active',
			  'alert-type' => 'success'
		  );

		  return redirect()->back()->with($notification);

	   } //end






}
