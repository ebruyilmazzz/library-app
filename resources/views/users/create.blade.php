@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Yeni Kullanıcı Ekle</h1>

    @if(session('error'))
        <div class="alert alert-danger">{{ session('error') }}</div>
    @endif

    <form action="{{ route('users.store') }}" method="POST">
        @csrf
        <div class="form-group">
            <label for="name">Ad:</label>
            <input type="text" id="name" name="name" class="form-control" required>
        </div>

        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" class="form-control" required>
        </div>

        <div class="form-group">
            <label for="password">Şifre:</label>
            <input type="password" id="password" name="password" class="form-control" required>
        </div>

        <div class="form-group">
            <label for="role">Rol:</label>
            <select name="role" id="role" class="form-control" required>
                <option value="student">Öğrenci</option>
                <option value="librarian">Kütüphaneci</option>
            </select>
        </div>

        <div class="form-group">
            <label for="status">Durum:</label>
            <select name="status" id="status" class="form-control" required>
                <option value="pending">Beklemede</option>
                <option value="approved">Onaylandı</option>
                <option value="rejected">Reddedildi</option>
            </select>
        </div>

        <button type="submit" class="btn btn-primary mt-3">Ekle</button>
    </form>
</div>
@endsection
