@extends('layouts.app')

@section('content')
<style type="text/css">
@media all {
	.classic-table{
		width:100%;
		color: #000;
	}
	.classic-table td{
		color: #000;
		vertical-align: top;
	}
	
	#invoice-item-table th, #invoice-item-table td{
		border: 1px solid #000;
	}
	
	#invoice-summary-table td{
		border: 1px solid #000 !important;
	}
	
	#invoice-payment-history-table{
		margin-bottom: 50px;
	}
	
	#invoice-payment-history-table th, #invoice-payment-history-table td{
		border: 1px solid #000 !important;
	}
	
	#invoice-view{
	   padding:15px;	
	}
	
	.invoice-note{
		margin-bottom: 50px;
	}
	
	.table th {
	   background-color: whitesmoke !important;
	   color: #000;
	}
	
	.table td {
	   color: #2d2d2d;
	}
	
	.base_color{
		background-color: whitesmoke !important;
	}
	
}
</style>  

<div class="row">
	<div class="col-12">
		<div class="btn-group group-buttons">
			<a class="btn btn-primary btn-xs print" href="#" data-print="invoice-view"><i class="fas fa-print"></i> {{ _lang('Print') }}</a>
			<a class="btn btn-warning btn-xs" href="{{ action('SalesReturnController@edit', $sales_return->id) }}"><i class="fas fa-edit"></i> {{ _lang('Edit') }}</a>
		</div>

		@php $date_format = get_company_option('date_format','Y-m-d'); @endphp	
		
		<div class="card clearfix">
			
			<span class="panel-title d-none">{{ _lang('Sales Retrurn') }}</span>

			<div class="card-body">
				<div id="invoice-view">
					<table class="classic-table">
						<tbody>
							<tr class="top">
								<td colspan="2">
									 <table class="classic-table">
										<tbody>
											 <tr>
												<td>
													<h3><b>{{ get_company_option('company_name') }}</b></h3>
													{{ get_company_option('address') }}<br>
													{{ get_company_option('email') }}<br>
													{!! get_company_option('vat_id') != '' ? _lang('VAT ID').': '.clean(get_company_option('vat_id')).'<br>' : '' !!}
													{!! get_company_option('reg_no')!= '' ? _lang('REG NO').': '.clean(get_company_option('reg_no')).'<br>' : '' !!}
												</td>
												<td class="float-right">
													<img src="{{ get_company_logo() }}" class="wp-100">
												</td>
											 </tr>
										</tbody>
									 </table>
								</td>
							 </tr>
							 
							 <tr class="information">
								<td colspan="2" class="pt-5">
									<div class="row">
										
										<div class="invoice-col-6">
											 <h5 class="mb-1"><b>{{ _lang('Customer Details') }}</b></h5>
											 @if(isset($sales_return->customer))	
												 <b>{{ _lang('Name') }}</b> : {{ $sales_return->customer->contact_name }}<br>
												 <b>{{ _lang('Email') }}</b> : {{ $sales_return->customer->contact_email }}<br>
												 <b>{{ _lang('Phone') }}</b> : {{ $sales_return->customer->contact_phone }}<br>
											 @endif                        
										</div>
											
										<!--Company Address-->
										<div class="invoice-col-6">
											<div class="d-inline-block float-md-right">
												
												<h5 class="mb-1"><b>{{ _lang('Sales Return') }}</b></h5>
												<b>{{ _lang('Return ID') }} #:</b> {{ $sales_return->id }}<br>
												<b>{{ _lang('Return Date') }}:</b> {{ date($date_format, strtotime($sales_return->return_date)) }}<br>
								
											</div>
										</div>
											
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<!--End Invoice Information-->
					
					@php $currency = currency(); @endphp
					
					<!--Invoice Product-->
					<div class="table-responsive">
						<table class="table table-bordered mt-2" id="invoice-item-table">
							<thead>
								<tr>
									<th>{{ _lang('Name') }}</th>
									<th class="text-center wp-100">{{ _lang('Quantity') }}</th>
									<th class="text-right">{{ _lang('Unit Cost') }}</th>
									<th class="text-right wp-100">{{ _lang('Discount')}}</th>
									<th>{{ _lang('Tax') }}</th>
									<th class="text-right">{{ _lang('Line Total') }}</th>
								</tr>
							</thead>
			
							<tbody>
								@foreach($sales_return->sales_return_items as $item)
									<tr id="product-{{ $item->product_id }}">
										<td>
											<b>{{ $item->item->item_name }}</b><br>
											{{ $item->description }}
										</td>
										<td class="text-center quantity">{{ $item->quantity }}</td>
										<td class="text-right unit-cost">{{ decimalPlace($item->unit_cost, $currency) }}</td>
										<td class="text-right discount">{{ decimalPlace($item->discount, $currency) }}</td>
										<td>{!! clean(object_to_tax($item->taxes, 'name')) !!}</td>
										<td class="text-right sub-total">{{ decimalPlace($item->sub_total, $currency) }}</td>
									</tr>
								@endforeach
							</tbody>
						</table>
					</div>
					<!--End Invoice Product-->	
					 
					 
					<!--Summary Table-->
					<div class="invoice-summary-right">
						<table class="table table-bordered" id="invoice-summary-table">
							 <tbody>
									<tr>
										<td>{{ _lang('Sub Total') }}</td>
										<td class="text-right">
											<span>{{ decimalPlace($sales_return->product_total, $currency) }}</span>
										</td>
									</tr>
									@foreach($sales_return_taxes as $tax)
									<tr>
										<td>{{ $tax->name }}</td>
										<td class="text-right">
											<span>{{ decimalPlace($tax->tax_amount, $currency) }}</span>
										</td>
									</tr>
									@endforeach
									<tr>
										<td><b>{{ _lang('Grand Total') }}</b></td>
										<td class="text-right">
											 <b>{{ decimalPlace($sales_return->grand_total, $currency) }}</b>
										</td>
									</tr>
							 </tbody>
						</table>
					</div>
					<!--End Summary Table-->
					 
					<div class="clearfix"></div>				 

					<!--Invoice Note-->
					@if($sales_return->note  != '')
						<div class="invoice-note border-top pt-4">{{ $sales_return->note }}</div> 
					@endif
					<!--End Invoice Note-->	
					 
				</div>
			</div>
		</div>
    </div><!--End Classic Invoice Column-->
</div><!--End Classic Invoice Row-->
@endsection