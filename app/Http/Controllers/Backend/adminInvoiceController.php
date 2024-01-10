<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\adminInvoicePart;
use App\Models\letter;
use App\Models\adminInvoiceService;
use App\Models\admininvoice;
use Carbon\Carbon;
use Barryvdh\DomPDF\Facade\Pdf;
class adminInvoiceController extends Controller
{
    public function InvoiceIndex()
    {


        return view('admin.invoice.invoiceIndex');
    }//end


    public function StoreInvoice(Request $request){

       $invoice_id = admininvoice::insert([
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

            ]);





            foreach ($request->addmore as $key => $item) {

                adminInvoiceService::insert([
                    'invoice_id' => $invoice_id,
                    'service' => $item['service'],
                    'qty' => $item['qty'],
                    'rate' => $item['rate'],
                    'amount' =>$item['amount'],

                ]);

           }

            foreach ($request->addpart as $key => $item) {



                foreach ($request->addpart as $key => $item) {
                    adminInvoicePart::insert([
                        'invoice_id' => $invoice_id,
                        'part' => $item['part'],
                        'qty' => isset($item['qty1']) ? $item['qty1'] : null,
                        'rate' => $item['rate'],
                        'amount' => $item['amount'],
                    ]);
                }


           }



           $invoice_info = admininvoice::find($invoice_id);
           $pdf = Pdf::loadView('admin.invoice.pdf', ['invoice_info' => $invoice_info,])->setOptions(['defaultFont' => 'sans-serif']);
           return $pdf->stream('invoice-pdf');



    }//end


}
