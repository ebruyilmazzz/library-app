@extends('layouts.app')

@section('content')
@if (Auth::check())
    <p>Zaten giriş yapmışsınız. Ana sayfaya yönlendiriliyorsunuz...</p>
    <script>
        window.location.href = "{{ route('home') }}";
    </script>
@else
    <form method="POST" action="{{ route('login') }}">
        @csrf
        <div>
            <label for="email">E-posta</label>
            <input type="email" name="email" required>
        </div>
        <div>
            <label for="password">Şifre</label>
            <input type="password" name="password" required>
        </div>
        <button type="submit">Giriş Yap</button>
    </form>
@endif
@endsection
