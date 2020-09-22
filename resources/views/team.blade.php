<table class="table">
    <thead>
    <tr>
        <th scope="col">STT</th>
        <th scope="col">Họ Và Tên</th>
        <th scope="col">Đội</th>
    </tr>
    </thead>
    <tbody>
    <?php $stt = 1; ?>
    @foreach ($all_users as $data)
        <tr>
            <td>{{$stt++}}</td>
            <td>
                {{$data->name}}
                @if ($data->role == 2)
                    (<span style="color:red;font-weight: 700"> Đội Trưởng </span>)
                    @endif
            </td>
            <td>{{$data->team_id}}</td>
        </tr>
    @endforeach
    </tbody>
</table>
