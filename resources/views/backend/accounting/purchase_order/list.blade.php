@extends('layouts.app')

@section('content')
<style type="text/css">
#purchase-table td:nth-child(3), #purchase-table td:nth-child(6){
	text-align: center !important;
}
</style>
<div class="row">
	<div class="col-12">
	    <a class="btn btn-primary btn-xs" href="{{ route('purchase_orders.create') }}"><i class="ti-plus"></i> {{ _lang('Add New') }}</a>
			
		<div class="card mt-2">
			<span class="panel-title d-none">{{ _lang('List Purchase Order') }}</span>

			<div class="card-body">
				<div class="row">

					<div class="col-lg-3 mb-2">
                     	<label>{{ _lang('Supplier') }}</label>
						<select class="form-control select2 select-filter" name="supplier_id">
                            <option value="">{{ _lang('All Supplier') }}</option>
							{{ create_option('suppliers','id','supplier_name','',array('company_id=' => company_id())) }}
                     	</select>
                    </div>	
					
                    <div class="col-lg-3 mb-2">
                     	<label>{{ _lang('Order Status') }}</label>
                     	<select class="form-control select2 select-filter" data-placeholder="{{ _lang('Order Status') }}" name="order_status" multiple="true">
							<option value="1">{{ _lang('Ordered') }}</option>
							<option value="2">{{ _lang('Pending') }}</option>
							<option value="3">{{ _lang('Received') }}</option>
							<option value="4">{{ _lang('Canceled') }}</option>
                     	</select>
                    </div>	
					
					<div class="col-lg-3 mb-2">
                     	<label>{{ _lang('Payment Status') }}</label>
                     	<select class="form-control select2 select-filter" data-placeholder="{{ _lang('Payment Status') }}" name="payment_status" multiple="true">
							<option value="1">{{ _lang('Paid') }}</option>
							<option value="0">{{ _lang('UnPaid') }}</option>
                     	</select>
                    </div>	

                    <div class="col-lg-3">
                     	<label>{{ _lang('Order Date Range') }}</label>
                     	<input type="text" class="form-control select-filter" id="date_range" autocomplete="off" name="date_range">
                    </div>	
	
                </div>

                <hr>
				
				<table class="table table-bordered" id="purchase-table">
					<thead>
						<tr>
							<th>{{ _lang('Order Date') }}</th>
							<th>{{ _lang('Supplier') }}</th>
							<th class="text-center">{{ _lang('Order Status') }}</th>
							<th class="text-right">{{ _lang('Grand Total') }}</th>
							<th class="text-right">{{ _lang('Paid') }}</th>
							<th class="text-center">{{ _lang('Payment Status') }}</th>
							<th class="text-center">{{ _lang('Action') }}</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
		  		</table>
			</div>
		</div>
	</div>
</div>

@endsection


@section('js-script')
<script>
	(function($) {
        var purchase_table = $('#purchase-table').DataTable({
            processing: true,
            serverSide: true,
			ajax: ({
				url: '{{ url('purchase_orders/get_table_data') }}',
				method: "POST",
				data: function (d) {

					d._token =  $('meta[name="csrf-token"]').attr('content');
					
					if($('select[name=supplier_id]').val() != ''){
						d.supplier_id = $('select[name=supplier_id]').val();
					}
					
					if($('select[name=order_status]').val() != null){
						d.order_status = JSON.stringify($('select[name=order_status]').val());
					}
					
					if($('select[name=payment_status]').val() != null){
						d.payment_status = JSON.stringify($('select[name=payment_status]').val());
					}
			  
					if($('input[name=date_range]').val() != ''){
						d.date_range = $('input[name=date_range]').val();
					}
				},
				 error: function (request, status, error) {
					console.log(request.responseText);
				 }
			}),
			"columns" : [
				{ data : "order_date", name : "order_date" },
				{ data : "supplier.supplier_name", name : "supplier.supplier_name" },
				{ data : "order_status", name : "order_status" },
				{ data : "grand_total", name : "grand_total" },
				{ data : "paid", name : "paid" },
				{ data : "payment_status", name : "payment_status" },
				{ data : "action", name : "action" },
			],
			responsive: true,
			"bStateSave": true,
			"bAutoWidth":false,	
			"ordering": false,
			"searching": false,
			"language": {
				"decimal":        "",
				"emptyTable":     "{{ _lang('No Data Found') }}",
				"info":           "{{ _lang('Showing') }} _START_ {{ _lang('to') }} _END_ {{ _lang('of') }} _TOTAL_ {{ _lang('Entries') }}",
				"infoEmpty":      "{{ _lang('Showing 0 To 0 Of 0 Entries') }}",
				"infoFiltered":   "(filtered from _MAX_ total entries)",
				"infoPostFix":    "",
				"thousands":      ",",
				"lengthMenu":     "{{ _lang('Show') }} _MENU_ {{ _lang('Entries') }}",
				"loadingRecords": "{{ _lang('Loading...') }}",
				"processing":     "{{ _lang('Processing...') }}",
				"search":         "{{ _lang('Search') }}",
				"zeroRecords":    "{{ _lang('No matching records found') }}",
				"paginate": {
					"first":      "{{ _lang('First') }}",
					"last":       "{{ _lang('Last') }}",
					"next":       "{{ _lang('Next') }}",
					"previous":   "{{ _lang('Previous') }}"
				}
			} 
        });
	
		
		$('.select-filter').on('change', function(e) {
			purchase_table.draw();
		});
		
		$('#date_range').daterangepicker({
			autoUpdateInput: false,
			locale: {
			  format: 'YYYY-MM-DD',
			  cancelLabel: 'Clear'
			}
		});

		$('#date_range').on('apply.daterangepicker', function(ev, picker) {
			$(this).val(picker.startDate.format('YYYY-MM-DD') + ' - ' + picker.endDate.format('YYYY-MM-DD'));
			purchase_table.draw();
		});

		$('#date_range').on('cancel.daterangepicker', function(ev, picker) {
			$(this).val('');
			purchase_table.draw();
		});
		
		
    })(jQuery);
</script>
@endsection


