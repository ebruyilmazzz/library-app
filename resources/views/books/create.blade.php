@extends('layouts.app')

@section('content')
<div class="flex justify-center items-center min-h-screen bg-gray-100">
    <div class="w-full max-w-2xl bg-white p-8 rounded-lg shadow-lg">
        <h1 class="text-3xl font-bold text-gray-800 text-center mb-6">📚 Yeni Kitap Ekle</h1>
        
        <form action="{{ route('books.store') }}" method="POST" class="space-y-6">
            @csrf
            <div class="grid grid-cols-1 gap-4 md:grid-cols-2">
                <div>
                    <label for="title" class="block text-sm font-semibold text-gray-700"> Kitap Adı:</label>
                    <input type="text" id="title" name="title" required
                        class="w-full mt-1 p-3 rounded-lg border border-gray-300 focus:border-blue-500 focus:ring-blue-500 shadow-sm transition ">
                </div>

                <div>
                    <label for="author" class="block text-sm font-semibold text-gray-700"> Yazar:</label>
                    <input type="text" id="author" name="author" required
                        class="w-full mt-1 p-3 rounded-lg border border-gray-300 focus:border-blue-500 focus:ring-blue-500 shadow-sm transition">
                </div>
            </div>

            <div class="grid grid-cols-1 gap-4 md:grid-cols-2">
                <div>
                    <label for="category" class="block text-sm font-semibold text-gray-700"> Kategori:</label>
                    <input type="text" id="category" name="category" required
                        class="w-full mt-1 p-3 rounded-lg border border-gray-300 focus:border-blue-500 focus:ring-blue-500 shadow-sm transition">
                </div>

                <div>
                    <label for="quantity" class="block text-sm font-semibold text-gray-700"> Mevcut Sayı:</label>
                    <input type="number" id="quantity" name="quantity" required
                        class="w-full mt-1 p-3 rounded-lg border border-gray-300 focus:border-blue-500 focus:ring-blue-500 shadow-sm transition">
                </div>
            </div>

            <div class="pt-4">
                <button type="submit"
                    class="w-full bg-gradient-to-r from-blue-500 to-blue-700 text-black py-3 px-4 rounded-lg font-semibold text-lg hover:opacity-90 transition shadow-lg">
                 Kitabı Ekle
                </button>
            </div>
        </form>
    </div>
</div>
@endsection
