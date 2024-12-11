<html>
<head>
    <title>Demande App</title>
	<style type="text/css">
	   .g-container{
		   padding: 15px 30px;
	   }
	   
	</style>
</head>
<body>
    <div class="g-container">
		<p>tu es reçu une nouvelle demande pour l'application Médcine de la part {{ $content->nom }} {{ $content->prenom }}</p>
		<p>{{ _lang('Message details are bellow') }}:</p>
		<table width="50%" border="1" >
			<tr>
				<td width="50%">Nom complet:</td>
				<td width="50%">{{ $content->nom . " " . $content->prenom }}</td>

			</tr>
	
			<tr>
				<td width="50%">Email:</td>
				<td width="50%">{{ $content->email }}</td>
			</tr>
			<tr>
				<td width="50%">Telephone:</td>
				<td width="50%">{{ $content->contact_phone }}</td>
			</tr>
			<tr>
				<td width="50%">Ville:</td>
				<td width="50%">{{ $content->ville }}</td>
			</tr>
			<tr>
				<td width="50%">Addresse:</td>
				<td width="50%">{{ $content->addresse }}</td>
			</tr>
			<tr>
				<td width="50%">Sépicialité</td>
				<td width="50%">{{ $content->sepe }}</td>
			</tr>
		</table>


		<br>
		<p>{{ _lang('Thank You') }}</p>
	</div>
</body>
</html>