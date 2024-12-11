<html>

<head>
    <title>Demande App</title>
    <style type="text/css">
        .g-container {
            padding: 15px 30px;
        }
    </style>
</head>

<body>
    <div class="g-container">
        <p>tu es reçu une nouvelle demande pour démonstration de project medecin ->
            {{ $content->nom . ' ' . $content->prenom }}
        </p>
        <p>{{ _lang('Message details are bellow') }}:</p>
        <table width="50%" border="1">
            <tr>
                <td width="50%">Nom complet:</td>
                <td width="50%">{{ $content->nom . ' ' . $content->prenom }}</td>

            </tr>


            <tr>
                <td width="50%">Telephone:</td>
                <td width="50%">{{ $content->contact_phone }}</td>
            </tr>
            <tr>
                <td width="50%">Hours:</td>
                <td width="50%">{{ $content->hours }}</td>
            </tr>
            <tr>
                <td width="50%">Date:</td>
                <td width="50%">{{ $content->date }}</td>
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
