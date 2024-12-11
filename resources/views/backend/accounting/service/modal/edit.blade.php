<form method="post" class="validate ajax-submit" autocomplete="off" action="{{ action('ServiceController@update', $id) }}" enctype="multipart/form-data">
	{{ csrf_field()}}
	<input name="_method" type="hidden" value="PATCH">				

	<div class="col-lg-12">
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<label class="control-label">{{ _lang('Service Name') }}</label>						
					<input type="text" class="form-control" name="item_name" value="{{ $item->item_name }}" required>
				</div>
			</div>


			<div class="col-md-12">
				<div class="form-group">
					<label class="control-label">{{ _lang('Service Cost').' '.currency() }}</label>						
					<input type="text" class="form-control" name="cost" value="{{ $item->service->cost }}" required>
				</div>
			</div>

			<div class="col-md-12">
				<div class="form-group">
					<label class="control-label">{{ _lang('Description') }}</label>						
					<textarea class="form-control" name="description">{{ $item->service->description }}</textarea>
				</div>
			</div>

			<div class="form-group">
				<div class="col-md-12">
					<button type="submit" class="btn btn-primary">{{ _lang('Update') }}</button>
				</div>
			</div>
		</div>
	</div>
</form>