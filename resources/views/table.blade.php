
<?php $stt = 1; ?>
@foreach ($teams as $team)
<tr>
    <td>{{$stt++}}</td>
    <td>{{$team['name']}}</td>
    <td>
        @foreach ($employes as $employe1)
            @if ($team['id'] == $employe1['team_id'])
                {{$employe1['name']}} - {{$employe1['code']}}<br>
                @endif
            @endforeach

    </td>
</tr>
@endforeach
