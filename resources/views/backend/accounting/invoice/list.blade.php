@extends('layouts.app')

@section('content')
<style type="text/css">
#invoice-table td:nth-child(5), #invoice-table td:nth-child(6){
	text-align: center !important;
}
</style>

<div class="row">
	<div class="col-12">
	
		<div class="card mt-2">
			<span class="panel-title d-none">{{ _lang('Invoice List') }}</span>

			<div class="card-body">
				@php $currency = currency() @endphp
				<div class="row">
					<div class="col-lg-3 mb-2">
                     	<label>{{ _lang('Invoice Number') }}</label>
                     	<input type="text" class="form-control select-filter" name="invoice_number" id="invoice-number">
                    </div>	
					
					<div class="col-lg-3 mb-2">
                     	<label>{{ _lang('Customer') }}</label>
						<select class="form-control select2 select-filter" name="client_id">
                            <option value="">{{ _lang('All Customer') }}</option>
							{{ create_option('contacts','id','contact_name','',array('company_id=' => company_id())) }}
                     	</select>
                    </div>	
					
                    <div class="col-lg-3 mb-2">
                     	<label>{{ _lang('Status') }}</label>
                     	<select class="form-control select2 select-filter" data-placeholder="{{ _lang('Invoice Status') }}" name="status" multiple="true">
							<option value="Unpaid">{{ _lang('Unpaid') }}</option>
							<option value="Paid">{{ _lang('Paid') }}</option>
							<option value="Partially_Paid">{{ _lang('Partially Paid') }}</option>
							<option value="Canceled">{{ _lang('Canceled') }}</option>
                     	</select>
                    </div>	

                    <div class="col-lg-3">
                     	<label>{{ _lang('Date Range') }}</label>
                     	<input type="text" class="form-control select-filter" id="date_range" autocomplete="off" name="date_range">
                    </div>	
	
                </div>

                <hr>
				
				<table id="invoice-table" class="table table-bordered">
					<thead>
						<tr>
							<th>{{ _lang('Invoice Number') }}</th>
							<th>{{ _lang('Invoice To') }}</th>
							<th>{{ _lang('Invoice Date') }}</th>
							<th>{{ _lang('Due Date') }}</th>
							<th class="text-right">{{ _lang('Grand Total') }}</th>
							<th class="text-center">{{ _lang('Status') }}</th>
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
        var invoice_table = $('#invoice-table').DataTable({
            processing: true,
            serverSide: true,
			ajax: ({
				url: '{{ url('invoices/get_table_data') }}',
				method: "POST",
				data: function (d) {

					d._token =  $('meta[name="csrf-token"]').attr('content');
					
					if($('input[name=invoice_number]').val() != ''){
						d.invoice_number = $('input[name=invoice_number]').val();
					}

					if($('select[name=client_id]').val() != ''){
						d.client_id = $('select[name=client_id]').val();
					}
					
					if($('select[name=status]').val() != null){
						d.status = JSON.stringify($('select[name=status]').val());
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
				{ data : "invoice_number", name : "invoice_number" },
				{ data : "contact_name", name : "contact_name" },
				{ data : "invoice_date", name : "invoice_date" },
				{ data : "due_date", name : "due_date" },
				{ data : "grand_total", name : "grand_total" },
				{ data : "status", name : "status" },
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
		
		$('#invoice-number').on('keyup', function(e) {
			invoice_table.draw();
		});
		
		$('.select-filter').on('change', function(e) {
			invoice_table.draw();
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
			invoice_table.draw();
		});

		$('#date_range').on('cancel.daterangepicker', function(ev, picker) {
			$(this).val('');
			invoice_table.draw();
		});
		
		
    })(jQuery);
</script>
@endsection


