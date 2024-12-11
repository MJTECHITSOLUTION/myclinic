@extends('layouts.app')

@section('content')
<link href="{{ asset('public/backend/plugins/bootstrap-select/css/bootstrap-select.css') }}" rel="stylesheet">

<div class="row">
	<div class="col-12">
		<div class="card">
			<span class="d-none panel-title">{{ _lang('Create Quotation') }}</span>

			<div class="card-body">
				<form method="post" class="validate" autocomplete="off" action="{{url('quotations')}}" enctype="multipart/form-data">
					{{ csrf_field() }}
					
					<div class="row">
						<div class="col-md-3">
						  <div class="form-group">
							<label class="control-label">{{ _lang('Quotation Number') }}</label>						
							<input type="text" class="form-control" name="quotation_number" value="{{ old('invoice_number',get_company_option('quotation_prefix').get_company_option('quotation_starting',1001)) }}" required>
							<input type="hidden" name="quotation_starting_number" value="{{ get_company_option('quotation_starting') }}"> 
						  </div>
						</div>
						
						<div class="col-md-3">
						  <div class="form-group">
							<label class="control-label">{{ _lang('Quotation Date') }}</label>						
							<input type="text" class="form-control datepicker" name="quotation_date" value="{{ old('quotation_date') }}" required>
						  </div>
						</div>

						<div class="col-md-6">
						  <div class="form-group">
							<label class="control-label">{{ _lang('Quotation Template') }}</label>						
							<select class="form-control select2" name="template">
							   @foreach(get_quotation_templates() as $key => $value)
									<option value="{{ $key }}">{{ $value }}</option>
							   @endforeach
							</select>
						  </div>
						</div>

						<div class="col-md-6">
						  <div class="form-group">
							<label class="control-label">{{ _lang('Related To') }}</label>						
							<select class="form-control select2 auto-select" data-selected="{{ isset($_GET['related_to']) ? $_GET['related_to'] : 'contacts' }}" name="related_to" id="related_to">
								<option value="contacts">{{ _lang('Customer') }}</option>
								<option value="leads">{{ _lang('Lead') }}</option>
							</select>
						  </div>
						</div>

						<div class="col-md-6 d-none" id="contacts">
						  <div class="form-group">
							<a href="{{ route('contacts.create') }}" data-reload="false" data-title="{{ _lang('Add Client') }}" class="ajax-modal select2-add"><i class="ti-plus"></i> {{ _lang('Add New') }}</a>
							<label class="control-label">{{ _lang('Select Client') }}</label>						
							<select class="form-control select2-ajax" data-value="id" data-display="contact_name" data-table="contacts" data-where="1" name="client_id" id="client_id">
							   <option value="">{{ _lang('Select One') }}</option>
							</select>
						  </div>
						</div>
						
						<div class="col-md-6 d-none" id="leads">
						  <div class="form-group">
							<a href="{{ route('leads.create') }}" data-reload="false" data-title="{{ _lang('Add New lead') }}" class="ajax-modal select2-add"><i class="ti-plus"></i> {{ _lang('Add New') }}</a>
							<label class="control-label">{{ _lang('Select Lead') }}</label>						
							<select class="form-control select2-ajax" data-value="id" data-display="id" data-display2="name" data-table="leads" data-where="1" name="lead_id" id="lead_id">
							   <option value="">{{ _lang('Select One') }}</option>
							   @if(isset($_GET['lead_id']))
									{{ create_option("leads","id",array("id","name"), $_GET['lead_id'], array("company_id="=>company_id())) }}
							   @endif
							</select>
						  </div>
						</div>


						<div class="col-md-6">
							<div class="form-group select-product-container">
								<a href="{{ route('products.create') }}" data-reload="false" data-title="{{ _lang('Add Product') }}" class="ajax-modal select2-add"><i class="ti-plus"></i> {{ _lang('Add New') }}</a>
								<label class="control-label">{{ _lang('Select Product/Service') }}</label>						
								<select class="form-control select2-ajax" data-value="id" data-display="item_name" data-table="items" data-where="2" name="product" id="product">
									<option value="">{{ _lang('Select Product') }}</option>
								</select>
							</div>
						</div>
						
						<div class="col-md-6">
							<div class="form-group select-product-container">
							<a href="{{ route('services.create') }}" data-reload="false" data-title="{{ _lang('Add Service') }}" class="ajax-modal select2-add"><i class="ti-plus"></i> {{ _lang('Add New') }}</a>
							<label class="control-label">{{ _lang('Select Service') }}</label>						
							<select class="form-control select2-ajax" data-value="id" data-display="item_name" data-table="items" data-where="5" name="service" id="service">
								<option value="">{{ _lang('Select Service') }}</option>
							</select>
							</div>
						</div>
						
						<!--Order table -->
						@php $currency = currency(); @endphp
						
						<div class="col-md-12">
							<div class="table-responsive">
								<table id="order-table" class="table table-bordered">
									<thead>
										<tr>
											<th>{{ _lang('Name') }}</th>
											<th>{{ _lang('Description') }}</th>
											<th class="text-center wp-100">{{ _lang('Quantity') }}</th>
											<th class="text-right">{{ _lang('Unit Cost').' '.$currency }}</th>
											<th class="text-right wp-100">{{ _lang('Discount').' '.$currency }}</th>
											<th>{{ _lang('Tax') }}</th>
											<th class="text-right">{{ _lang('Sub Total').' '.$currency }}</th>
											<th class="text-center">{{ _lang('Action') }}</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
									<tfoot class="tfoot active">
										<tr>
											<th>{{ _lang('Total') }}</th>
											<th></th>
											<th class="text-center" id="total-qty">0</th>
											<th></th>
											<th class="text-right" id="total-discount">0.00</th>
											<th class="text-right" id="total-tax">0.00</th>
											<th class="text-right" id="total">0.00</th>
											<th class="text-center"></th>
											<input type="hidden" name="product_total" id="product_total" value="0">
											<input type="hidden" name="tax_total" id="tax_total" value="0">
										</tr>
									</tfoot>
								</table>
								
								<table class="table table-striped">
								   <thead class="thead-light">
									  <tr>
										 <th>
											{{ _lang('Converted Amount') }} ({{ _lang('Client Currency') }} - <span class="client_currency">{{ base_currency() }}</span>)
											&emsp;<span id="converted_amount">{{ $currency }} 0.00</span>
										 </th>
									  </tr>
								   </thead>
								</table>
								
							</div>
						</div>

						<!--End Order table -->

						<div class="col-md-12">
						  <div class="form-group">
							<label class="control-label">{{ _lang('Note') }}</label>						
							<textarea class="form-control" rows="4" name="note">{{ old('note') }}</textarea>
						  </div>
						</div>

						<div class="col-md-12">
						  <div class="form-group">
							<button type="submit" class="btn btn-primary">{{ _lang('Save') }}</button>
						  </div>
						</div>
					</div>
				</form>
			</div>
	    </div>
	</div>
</div>

<select class="form-control d-none" id="tax-selector">
	@foreach(App\Tax::where("company_id",company_id())->get() as $tax)
		<option value="{{ $tax->id }}" data-tax-type="{{ $tax->type }}" data-tax-rate="{{ $tax->rate }}">{{ $tax->tax_name }} - {{ $tax->type =='percent' ? $tax->rate.' %' : $tax->rate }}</option>
	@endforeach
</select>

@endsection

@section('js-script')
<script src="{{ asset('public/backend/plugins/bootstrap-select/js/bootstrap-select.min.js') }}"></script>
<script src="{{ asset('public/backend/assets/js/quotation/create.js?v=1.2') }}"></script>
@endsection



