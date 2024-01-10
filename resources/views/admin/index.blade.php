@extends('admin.admin_master')
@section('admin')
<?php
$servicetotal = App\Models\adminInvoiceService::whereDate('created_at', now()->toDateString())->sum('amount');
$sparetotal = App\Models\adminInvoicePart::whereDate('created_at', now()->toDateString())->sum('amount');
$serviceCost = App\Models\admininvoice::whereDate('created_at', now()->toDateString())->sum('serviceCost');
$partCost = App\Models\admininvoice::whereDate('created_at', now()->toDateString())->sum('partCost');
$profit = $servicetotal+$sparetotal -$serviceCost-$partCost

?>

<div class="wrapper">
  <!-- Content Wrapper. Contains page content -->

	  <div class="container-full">

		<!-- Main content -->
		<section class="content">
			<div class="row">
				<div class="col-xl-2 col-6">
					<div class="box overflow-hidden pull-up">
						<div class="box-body">
							<div class="icon bg-primary-light rounded w-60 h-60">
								<i class="text-primary mr-0 font-size-24 mdi mdi-account-multiple"></i>
							</div>
							<div>
								<p class="text-mute mt-20 mb-0 font-size-16">Profit today</p>
								<h3 class="text-white mb-0 font-weight-500">
                                    @if($profit>0)
                                    {{ $profit }}
                                    @endif
                                 </h3>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-2 col-6">
					<div class="box overflow-hidden pull-up">
						<div class="box-body">
							<div class="icon bg-warning-light rounded w-60 h-60">
								<i class="text-warning mr-0 font-size-24 mdi mdi-car"></i>
							</div>
							<div>
								<p class="text-mute mt-20 mb-0 font-size-16">loss today</p>
								<h3 class="text-white mb-0 font-weight-500">
                                    @if($profit<0)
                                    {{ $profit }}
                                    @endif

                                </h3>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- /.content -->
	  </div>

  <!-- /.content-wrapper -->




  <!-- Add the sidebar's background. This div must be placed immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>

</div>
<!-- ./wrapper -->

@endsection
