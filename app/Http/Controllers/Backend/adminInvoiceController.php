<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\caryear;
use App\Models\letter;
use App\Models\metro;
use App\Models\sparePart;
use Carbon\Carbon;

class adminInvoiceController extends Controller
{
    public function InvoiceIndex()
    {


        return view('admin.invoice.invoiceIndex');
    }

    public function StoreCarNum(Request $request)
    {


        caryear::insert([
            'carYearNum' => $request->carYear,
            'created_at' => Carbon::now(),


        ]);


        $notification = array(
            'message' => 'Number Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    } ///end method


    public function carYearDelete($id)
    {


        caryear::findOrFail($id)->delete();



        $notification = array(
            'message' => 'Year Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    } // end method

    public function AddMetro()
    {

        $metros = metro::all();

        return view('admin.metro.add_metro', compact('metros'));
    }

    public function StoreMetro(Request $request)
    {


        metro::insert([
            'metro_name' => $request->metro_name,
            'created_at' => Carbon::now(),


        ]);


        $notification = array(
            'message' => 'Metro Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    } ///end method


    public function metroDelete($id)
    {


        metro::findOrFail($id)->delete();



        $notification = array(
            'message' => 'metro Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    } // end method
    public function AddLetter()
    {

        $letters = letter::all();

        return view('admin.letter.add_letter', compact('letters'));
    }

    public function StoreLetter(Request $request)
    {


        letter::insert([
            'letter_name' => $request->letter_name,
            'created_at' => Carbon::now(),


        ]);


        $notification = array(
            'message' => 'Letter Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    } ///end method


    public function letterDelete($id)
    {


        letter::findOrFail($id)->delete();



        $notification = array(
            'message' => 'letter Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    } // end method
    public function AddSparePart()
    {

        $spareParts = sparePart::all();

        return view('admin.sparePart.add_sparePart', compact('spareParts'));
    }

    public function StoreSparepart(Request $request)
    {


        sparePart::insert([
            'sparepart_name' => $request->sparepart_name,
            'created_at' => Carbon::now(),


        ]);


        $notification = array(
            'message' => 'spare part Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    } ///end method


    public function sparepartDelete($id)
    {


        sparePart::findOrFail($id)->delete();



        $notification = array(
            'message' => 'spare part Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    } // end method



}
