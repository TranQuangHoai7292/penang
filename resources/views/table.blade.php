
<?php $stt = 1; ?>

<tr>
    <td>{{$stt++}}</td>
    <td>
       {{$teams->name}}
    </td>
    <td>
        @foreach ($users as $user)
        {{$user->name}} - {{$user->code}}
        @endforeach
    </td>
</tr>

