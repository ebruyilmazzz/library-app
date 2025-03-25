@extends('layouts.app')

@section('content')
    <h1>{{ $book->title }}</h1>
    <p>Yazar: {{ $book->author }}</p>
    <p>Kategori: {{ $book->category }}</p>
    <p>Mevcut Sayı: {{ $book->quantity }}</p>
    <a href="{{ route('books.index') }}">Geri Dön</a>
@endsection
