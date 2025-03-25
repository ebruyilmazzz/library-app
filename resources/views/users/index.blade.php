@extends('layouts.app')

@section('content')
<div class="container">
    <h1 class="mb-4">Kullanıcılar</h1>
    <a href="{{ route('users.create') }}" class="btn btn-success mb-3">Yeni Kullanıcı Ekle</a>

    @if (session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif
    @if (session('error'))
        <div class="alert alert-danger">{{ session('error') }}</div>
    @endif

    @if ($users->isEmpty())
        <p>Henüz kullanıcı eklenmedi.</p>
    @else
        <table class="table table-bordered table-striped">
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Ad</th>
                    <th>Email</th>
                    <th>Rol</th>
                    <th>Durum</th>
                    <th>Oluşturulma Tarihi</th>
                    <th>İşlemler</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($users as $user)
                    <tr>
                        <td>{{ $user->id }}</td>
                        <td>{{ $user->name }}</td>
                        <td>{{ $user->email }}</td>
                        <td>
                            <span class="badge bg-primary">{{ ucfirst($user->role) }}</span>
                        </td>
                        <td>
                            @if ($user->status == 'approved')
                                <span class="badge bg-success">Onaylandı</span>
                            @elseif ($user->status == 'pending')
                                <span class="badge bg-warning text-dark">Beklemede</span>
                            @else
                                <span class="badge bg-danger">Reddedildi</span>
                            @endif
                        </td>
                        <td>{{ $user->created_at->format('d/m/Y H:i') }}</td>
                        <td>
                            @if ($user->status == 'pending')
                                <form action="{{ route('users.approve', $user->id) }}" method="POST" class="d-inline">
                                    @csrf
                                    <button type="submit" class="btn btn-success btn-sm">Onayla</button>
                                </form>
                                <form action="{{ route('users.reject', $user->id) }}" method="POST" class="d-inline">
                                    @csrf
                                    <button type="submit" class="btn btn-danger btn-sm">Reddet</button>
                                </form>
                            @else
                                <span class="text-muted">İşlem Yok</span>
                            @endif
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    @endif
</div>
@endsection
