<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kütüphane Yönetim Sistemi</title>
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<body>

<header>
    Kütüphane Yönetim Sistemi
</header>

<nav>
    <a href="{{route('users.index')}}">Kullanıcılar</a>
    <a href="{{route('books.index')}}">Kitaplar</a>
</nav>

<div class="container">
    <h1>Hoşgeldiniz!</h1>
    <p>Kütüphane Yönetim Sistemi, öğrencilerin ve kütüphanecilerin kitapları kolayca yönetmesine olanak sağlar.</p>

    <h2>Özellikler</h2>
    <ul>
        <li>Kitap ekleme, güncelleme ve silme</li>
        <li>Öğrenci ve kütüphaneci hesap yönetimi</li>
        <li>Kitap ödünç alma ve iade sistemi</li>
        <li>Kullanıcı durumları ve yetkilendirme</li>

    </ul>
    <a href="{{route('users.login')}}" class="btn btn-primary" id="create-user">Giriş Yap</a>
</div>

@include('layouts.footer')

</body>
</html>
