@extends('admin.admin_master')
@section('admin')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>






<div class="container-full">
    <!-- Content Header (Page header) -->
    <!-- Main content -->
    <section class="content">

        <form method="POST" id="addSearch">
            @csrf
            <div class="box">
                <div class="box-header with-border">
                    <h4 class="box-title">Input Registration Number</h4>
                </div>
                <div class="box-body">

                    <div class="input-group">
                        <input type="text" class="form-control" name="search" id="registration_no">
                        <button type="button" class="input-group-addon" id="searchInvoiceBtn"><i class="fa fa-check"></i></button>
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.box-body -->
            </div>
        </form>

        <!-- Basic Forms -->
        <div class="box">
            <div class="box-header with-border">
                <h4 class="box-title">Add Invoice </h4>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <div class="row">
                    <div class="col">
                        <div class="row">
                            <div class="col-12">
                                <form method="POST" action="{{ route('invoice-store-admin') }}">
                                    @csrf
                                    <div class="row">
                                        <!-- start 2nd row  -->
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <h5>Name: <span class="text-danger">*</span></h5>
                                                <div class="controls">
                                                    <input type="text" name="name" id="name" class="form-control" required="">
                                                    @error('content_slide_title')
                                                    <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                </div>
                                            </div>
                                        </div> <!-- end col md 6 -->
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <h5>Address: <span class="text-danger">*</span></h5>
                                                <div class="controls">
                                                    <input type="text" name="address" id="address" class="form-control" onChange="mainThamUrl(this)" required="">
                                                    @error('breadcrumb')
                                                    <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                    <img src="" id="mainThmb">
                                                </div>
                                            </div>
                                        </div> <!-- end col md 6 -->
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <h5>Email Address: <span class="text-danger">*</span></h5>
                                                <div class="controls">
                                                    <input type="text" name="email" id="email" class="form-control" onChange="mainThamUrl(this)" required="">
                                                    @error('breadcrumb')
                                                    <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                    <img src="" id="mainThmb">
                                                </div>
                                            </div>
                                        </div> <!-- end col md 6 -->
                                    </div> <!-- end 2nd row  -->

                                    <div class="row">
                                        <!-- start 3rd row  -->
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <h5>Phone No: <span class="text-danger">*</span></h5>
                                                <div class="controls">
                                                    <input type="text" name="phone" id="phone" class="form-control" required="">
                                                    @error('content_title')
                                                    <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                </div>
                                            </div>

                                        </div> <!-- end col md 6 -->
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <h5> Car Year : <span class="text-danger">*</span></h5>
                                                <div class="controls">
                                                    <input type="text" name="caryear" id="caryear" class="form-control" required="">
                                                    @error('content_title')
                                                    <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                </div>
                                            </div>
                                        </div> <!-- end col md 4 -->
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <h5>Engine. No:
                                                    <span class="text-danger">*</span>
                                                </h5>
                                                <div class="controls">
                                                    <input type="text" name="engine" class="form-control" required="">
                                                    @error('thamble')
                                                    <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                    <img src="">
                                                </div>
                                            </div>
                                        </div> <!-- end col md 6 -->
                                    </div> <!-- end 3rd row  -->
                                    <div class="row">
                                        <!-- start 3rd row  -->
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <h5>Model<span class="text-danger">*</span></h5>
                                                <div class="controls">
                                                    <input type="text" name="model" id="model" class="form-control" required="">
                                                    @error('content_title')
                                                    <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                </div>
                                            </div>

                                        </div> <!-- end col md 6 -->
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <h5>Brand <span class="text-danger">*</span></h5>
                                                <div class="controls">
                                                    <input type="text" name="brand" id="brand" class="form-control" required="">
                                                    @error('content_title')
                                                    <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                </div>
                                            </div>
                                        </div> <!-- end col md 4 -->
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <h5>Reg No:
                                                    <span class="text-danger">*</span>
                                                </h5>
                                                <div class="controls">
                                                    <input type="text" name="registration" id="registration" class="form-control" required="">
                                                    @error('thamble')
                                                    <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                    <img src="">
                                                </div>
                                            </div>
                                        </div> <!-- end col md 6 -->
                                    </div> <!-- end 3rd row  -->


                                    <div class="row">
                                        <div class="col-12">
                                            <div class="row">
                                                <!-- start 2nd row  -->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <h5>K.M
                                                            <span class="text-danger">*</span>
                                                        </h5>
                                                        <div class="controls">
                                                            <input type="text" name="km" class="form-control" required="">
                                                            @error('content_slide_title')
                                                            <span class="text-danger">{{ $message }}</span>
                                                            @enderror
                                                        </div>
                                                    </div>
                                                </div> <!-- end col md 6 -->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <h5>Chassis No:
                                                            <span class="text-danger">*</span></h5>
                                                        <div class="controls">
                                                            <input type="text" name="chassis" class="form-control" required="">
                                                            @error('content_title')
                                                            <span class="text-danger">{{ $message }}</span>
                                                            @enderror
                                                        </div>
                                                    </div>
                                                </div> <!-- end col md 6 -->
                                            </div> <!-- end 2nd row  -->




                                            <table id="dynamicTable">

                                                <tr>



                                                    <th>Service Charge</th>

                                                    <th>Quantity </th>

                                                    <th>Rate</th>
                                                    <th>Amount</th>
                                                    <th>Action</th>

                                                </tr>

                                                <tr>

                                                    <td><input type="text" name="addmore[0][service]" placeholder="Enter your Service" class="form-control" /></td>

                                                    <td><input type="text" name="addmore[0][qty]" placeholder="Enter your Qty" class="form-control" /></td>

                                                    <td><input type="text" name="addmore[0][rate]" placeholder="Enter your Rate" class="form-control" /></td>
                                                    <td><input type="text" name="addmore[0][amount]" placeholder="Enter your Amount" class="form-control" /></td>

                                                    <td><button type="button" name="add" id="add">Add More</button></td>


                                                </tr>

                                            </table>


                                            <table id="dynamicTable2">

                                                <tr>

                                                    <th>Spare Part's</th>

                                                    <th>Quantity</th>

                                                    <th>Rate</th>
                                                    <th>Amount</th>

                                                    <th>Action</th>

                                                </tr>

                                                <tr>

                                                    <td><input type="text" name="addpart[0][part]" placeholder="Enter your Spare Part's" class="form-control" /></td>

                                                    <td><input type="text" name="addpart[0][qty1]" placeholder="Enter your Qty" class="form-control" /></td>

                                                    <td><input type="text" name="addpart[0][rate]" placeholder="Enter your Rate" class="form-control" /></td>
                                                    <td><input type="text" name="addpart[0][amount]" placeholder="Enter your Amount" class="form-control" /></td>

                                                    <td><button type="button" name="add" id="addSpare">Add More</button></td>


                                                </tr>

                                            </table>



                                            <div class="row">
                                                <!-- start 3rd row  -->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <h5>Service cost<span class="text-danger">*</span></h5>
                                                        <div class="controls">
                                                            <input type="text" name="serviceCost" class="form-control" required="">
                                                            @error('content_title')
                                                            <span class="text-danger">{{ $message }}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                </div> <!-- end col md 6 -->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <h5>parts cost <span class="text-danger">*</span></h5>
                                                        <div class="controls">
                                                            <input type="text" name="partCost" class="form-control" required="">
                                                            @error('content_title')
                                                            <span class="text-danger">{{ $message }}</span>
                                                            @enderror
                                                        </div>
                                                    </div>
                                                </div> <!-- end col md 4 -->

                                            </div> <!-- end 3rd row  -->

                                            <hr>
                                            <div class="row">
                                                <div class="text-lg-center">
                                                    <input type="submit" class="btn btn-primary  " value="Add Invoice">

                                </form>
                            </div>
                            <!-- /.col -->
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
        </div>
    </section>
    <!-- /.content -->
</div>
{{-- service section --}}
<script type="text/javascript">
    var i = 0;

    $("#add").click(function() {

        ++i;

        $("#dynamicTable").append('<tr><td><input type="text" name="addmore[' + i + '][service]" placeholder="Enter your service" class="form-control" /></td><td><input type="text" name="addmore[' + i + '][qty]" placeholder="Enter your Qty" class="form-control" /></td><td><input type="text" name="addmore[' + i + '][rate]" placeholder="Enter your rate" class="form-control" /></td><td><input type="text" name="addmore[' + i + '][amount]" placeholder="Enter your amount" class="form-control" /></td><td><button class="remove-tr" type="button" >Remove</button></td></tr>');

    });

    $(document).on('click', '.remove-tr', function() {

        $(this).parents('tr').remove();

    });

</script>

{{-- spare parts --}}
<script type="text/javascript">
    var i = 0;

    $("#addSpare").click(function() {

        ++i;

        $("#dynamicTable2").append('<tr><td><input type="text" name="addpart[' + i + '][part]" placeholder="Enter your parts" class="form-control" /></td><td><input type="text" name="addpart[' + i + '][qty1]" placeholder="Enter your Qty" class="form-control" /></td><td><input type="text" name="addpart[' + i + '][rate]" placeholder="Enter your rate" class="form-control" /></td><td><input type="text" name="addpart[' + i + '][amount]" placeholder="Enter your amount" class="form-control" /></td><td><button class="remove-tr" type="button" >Remove</button></td></tr>');

    });

    $(document).on('click', '.remove-tr', function() {

        $(this).parents('tr').remove();

    });

</script>


<script type="text/javascript">
    $(document).ready(function() {

        $('#searchInvoiceBtn').on('click', function(e) {

        const registration_no = $("#registration_no").val();
            console.log(registration_no);

            e.preventDefault();

            // Make an AJAX request to get the category data
            $.ajax({
                url: "{{ url('/admin/registration/search') }}",
                data: $("#addSearch").serialize(),
                type: "post",
                dataType: "json",
                success: function(response) {
                    console.log('s' + response)

                    $("#name").val(response.name);
                    $("#address").val(response.location);
                    $("#email").val(response.email);
                    $("#phone").val(response.phone);
                    $("#caryear").val(response.car_year_num);
                    $("#model").val(response.car_model);
                    $("#brand").val(response.car_brand);
                    $("#registration").val(response.registration);

                },
                error: function(error) {
                    console.log('Error:', error);
                }
            });
        });
    })

</script>









@endsection
