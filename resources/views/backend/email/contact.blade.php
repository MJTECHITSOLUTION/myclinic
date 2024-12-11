<!DOCTYPE html>
<html>
<head>
    <title>{{ $content->subject }}</title>
	<style type="text/css">
	   .g-container{
		   padding: 15px 30px;
	   }
	</style>
</head>
<body>
    <div class="g-container">
		<p>{{ _lang('You have received new contact message from') }} : {{ $content->name }}</p>
		<p>{{ _lang('Message details are bellow') }}:</p>
		<p>: {{ $content->contact_phone }}</p>
		<p>{{ _lang('Name') }}: {{ $content->name }}<br></p>
		<p>Email: {{ $content->email }}<br></p>
		<p>Téléphone: {{ $content->contact_phone }}<br></p>
		<p>{{ _lang('Message') }}: {{ $content->message }}</p>


		<br>
		<p>{{ _lang('Thank You') }}</p>
	</div>
</body>
</html>
