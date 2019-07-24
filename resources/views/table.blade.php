
<?php $stt = 1; ?>
@foreach ($users as $user)
<tr>
    <td>{{$stt++}}</td>
    <td>
       {{$teams->name}}
    </td>
    <td>
        {{$user->name}} - {{$user->code}}
    </td>
</tr>
@endforeach
