<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\adminInvoicePart;
use App\Models\letter;
use App\Models\adminInvoiceService;
use App\Models\admininvoice;
use App\Models\order;
use Carbon\Carbon;
use Barryvdh\DomPDF\Facade\Pdf;
use Exception;
use Illuminate\Support\Facades\DB;

class adminInvoiceController extends Controller
{
    public function InvoiceIndex()
    {


        return view('admin.invoice.invoiceIndex');
    }//end


    public function StoreInvoice(Request $request){

       $invoice_id = admininvoice::insertGetId([
            'name' => $request->name,
            'address' => $request->address,
            'email' => $request->email,
            'phone' => $request->phone,
            'caryear' => $request->caryear,
            'engine' => $request->engine,
            'model' => $request->model,
            'brand' => $request->brand,
            'registration' => $request->registration,
            'km' => $request->km,
            'chassis' => $request->chassis,
            'serviceCost' => $request->serviceCost,
            'partCost' => $request->partCost,
            'created_at' => Carbon::now(),
            ]);





            foreach ($request->addmore as $key => $item) {

                adminInvoiceService::insert([
                    'invoice_id' => $invoice_id,
                    'service' => $item['service'],
                    'qty' => $item['qty'],
                    'rate' => $item['rate'],
                    'amount' =>$item['amount'],
                    'created_at' => Carbon::now(),
                ]);

           }


                foreach ($request->addpart as $key => $item) {
                    adminInvoicePart::insert([
                        'invoice_id' => $invoice_id,
                        'part' => $item['part'],
                        'qty' => isset($item['qty1']) ? $item['qty1'] : null,
                        'rate' => $item['rate'],
                        'amount' => $item['amount'],
                        'created_at' => Carbon::now(),
                    ]);
                }


           $invoice_info = admininvoice::find($invoice_id);
           $pdf = Pdf::loadView('admin.invoice.pdf', ['invoice_info' => $invoice_info,])->setOptions(['defaultFont' => 'sans-serif']);
           return $pdf->stream('invoice-pdf');



    }//end



    public function Search(Request $request)
    {
        // dd($request->all());

        try{
            DB::beginTransaction();
            $registration_no = $request->search;
            if(empty($registration_no)){
                throw new Exception("Please provide a valid regitration number!");
            }
            $data = order::where('registration', $registration_no)->first();
            if(empty($data)){
                throw new Exception("Your provided regitration number $registration_no are not valid!");
            }
            DB::commit();
            return response()->json($data);
        }catch(\Exception $e){
            DB::rollback();
            return response()->json($e->getMessage());
        }
    }//end


}
