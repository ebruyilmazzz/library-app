@extends('layouts.app')

@section('content')
<div class="container mx-auto px-4 py-8">
    <div class="max-w-5xl mx-auto">
        <div class="bg-white shadow-xl rounded-2xl overflow-hidden">
            <div class="bg-gradient-to-r from-blue-700 to-blue-900 px-6 py-5">
                <h1 class="text-3xl font-extrabold text-white"> Kütüphane Yönetim Sistemi</h1>
            </div>

            <div class="p-8">
                @if (session('status'))
                    <div class="bg-green-100 border-l-4 border-green-500 text-green-800 px-4 py-3 rounded-lg mb-6 shadow-md" role="alert">
                        {{ session('status') }}
                    </div>
                @endif

                <div class="text-gray-700 text-lg font-medium mb-6">
                    Hoş geldiniz, <span class="text-blue-600 font-semibold">{{ Auth::user()->name }}</span>! 🎉
                </div>

                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                    @if(Auth::user()->role == 'librarian')
                   
                        <a href="{{ route('books.create') }}" class="block p-6 bg-blue-50 rounded-xl shadow-md hover:shadow-lg hover:bg-blue-100 transition-all">
                            <h2 class="text-2xl font-semibold text-blue-700 flex items-center">
                                📖 Kitap Yönetimi
                            </h2>
                            <p class="text-gray-600 mt-2">Yeni kitap ekleyin, düzenleyin veya silin.</p>
                        </a>
                        <a href="{{ route('users.index') }}" class="block p-6 bg-purple-50 rounded-xl shadow-md hover:shadow-lg hover:bg-purple-100 transition-all">
                            <h2 class="text-2xl font-semibold text-purple-700 flex items-center">
                                👥 Kullanıcı Yönetimi
                            </h2>
                            <p class="text-gray-600 mt-2">Kullanıcıları görüntüleyin, onaylayın veya reddedin.</p>
                        </a>
                        <a href="{{ route('books.index') }}" class="block p-6 bg-green-50 rounded-xl shadow-md hover:shadow-lg hover:bg-green-100 transition-all">
                            <h2 class="text-2xl font-semibold text-green-700 flex items-center">
                                📚 Kitap Listesi
                            </h2>
                            <p class="text-gray-600 mt-2">Tüm kitapları görüntüleyin ve yönetin.</p>
                        </a>
                    @elseif(Auth::user()->role == 'student')
                      
                        <a href="{{ route('books.index') }}" class="block p-6 bg-yellow-50 rounded-xl shadow-md hover:shadow-lg hover:bg-yellow-100 transition-all">
                            <h2 class="text-2xl font-semibold text-yellow-700 flex items-center">
                                📖 Kitap Listesi
                            </h2>
                            <p class="text-gray-600 mt-2">Mevcut kitapları görüntüleyin ve ödünç alın.</p>
                        </a>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
