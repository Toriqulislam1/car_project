@extends('admin.admin_master')
@section('admin')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


	  <div class="container-full">
		<!-- Content Header (Page header) -->


		<!-- Main content -->
		<section class="content">

		 <!-- Basic Forms -->
		  <div class="box">
			<div class="box-header with-border">
			  <h4 class="box-title">Add Product</h4>

			</div>
			<!-- /.box-header -->
			<div class="box-body">
			  <div class="row">
				<div class="col">

  <form method="POST" action="{{ route('product-store') }}" enctype="multipart/form-data" >
		 	@csrf

	<div class="row">
	 <div class="col-12">


<div class="row"> <!-- start 2nd row  -->


			<div class="col-md-4">

				 <div class="form-group">
			<h5>Product Title <span class="text-danger">*</span></h5>
			<div class="controls">
				<input type="text" name="title" class="form-control" required="">
     @error('title')
	 <span class="text-danger">{{ $message }}</span>
	 @enderror
	 	  </div>
		</div>

			</div> <!-- end col md 6 -->


			<div class="col-md-4">

<div class="form-group">
	<h5>Unit price <span class="text-danger">*</span></h5>
	<div class="controls">
<input type="number" name="price" class="form-control"  required="" >
@error('price')
<span class="text-danger">{{ $message }}</span>
@enderror
<img src="" id="mainThmb">
	  </div>
</div>


	</div> <!-- end col md 6 -->

    <div class="col-md-4">

        <div class="form-group">
   <h5>Product Stock <span class="text-danger">*</span></h5>
   <div class="controls">
       <input type="number" name="stock" class="form-control" required="">
@error('stock')
<span class="text-danger">{{ $message }}</span>
@enderror
  </div>
</div>

   </div> <!-- end col md 6 -->



		</div> <!-- end 2nd row  -->


		<div class="row"> <!-- start 3rd row  -->



		<div class="col-md-4">

				<div class="form-group">
					<h5>Discount Price flat<span class="text-danger">*</span></h5>
					<div class="controls">
					<input type="number" name="discount" class="form-control" required="">
					@error('discount')
					<span class="text-danger">{{ $message }}</span>
					@enderror
					</div>
				</div>

		</div> <!-- end col md 6 -->



	<div class="col-md-4">

        <div class="form-group">
            <h5>Product unit<span class="text-danger">*</span></h5>
            <div class="controls">
            <input type="text" name="unit" class="form-control" required="">
            @error('unit')
            <span class="text-danger">{{ $message }}</span>
            @enderror
            </div>
        </div>

	</div> <!-- end col md 4 -->


	<div class="col-md-4">

<div class="form-group">
	<h5> Product Image <span class="text-danger">*</span></h5>
	<div class="controls">
<input type="file" name="image" class="form-control"  required="" >
@error('image')
<span class="text-danger">{{ $message }}</span>
@enderror
<img src="" >
	  </div>
</div>


	</div> <!-- end col md 6 -->

		</div> <!-- end 3rd row  -->






<div class="row"> <!-- start 3rd row  -->


			<div class="col-md-12">

	     <div class="form-group">
			<h5>Product Description <span class="text-danger">*</span></h5>
			<div class="controls">
	<textarea id="editor1" name="details" rows="10" cols="80">
		Long Description
						</textarea>
	 		 </div>
		</div>


			</div> <!-- end col md 12 -->

		</div> <!-- end 3rd row  -->

	 <hr>

	<div class="row">

						<div class="text-lg-center">
 <input type="submit" class="btn btn-primary  " value="Add Product">
						</div>
					</form>

				</div>
				<!-- /.col -->
			  </div>
			  <!-- /.row -->
			</div>
			<!-- /.box-body -->
		  </div>
		  <!-- /.box -->

		</section>
		<!-- /.content -->
	  </div>


<script type="text/javascript">
	function mainThamUrl(input){
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e){
				$('#mainThmb').attr('src',e.target.result).width(80).height(80);
			};
			reader.readAsDataURL(input.files[0]);
		}
	}
</script>

@endsection
