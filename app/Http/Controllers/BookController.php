<?php

namespace App\Http\Controllers;

use App\Models\Book;
use Illuminate\Http\Request;

class BookController extends Controller
{
    public function index()
    {
        $books = Book::all();
        return view('books.index', compact('books'));
    }

    public function create()
    {
        return view('books.create');
    }

    public function store(Request $request)
    {
        // Validasyon eklemek iyi bir fikir olabilir
        $request->validate([
            'title' => 'required|string|max:255',
            'author' => 'required|string|max:255',
            'category' => 'required|string|max:255',
            'quantity' => 'required|integer|min:1',
        ]);

        // Yeni kitap kaydı ekleme
        $book = new Book();
        $book->title = $request->title;
        $book->author = $request->author;
        $book->category = $request->category;
        $book->quantity = $request->quantity;
        $book->save();

        // Kitap başarıyla eklendiğinde kitaplar listesine yönlendirme
        return redirect()->route('books.index')->with('success', 'Kitap başarıyla eklendi!');
    }
    public function show($id)
    {
        // Kitap ID'sine göre veriyi al
        $book = Book::findOrFail($id);

        // Kitap detaylarını içeren view'ı döndür
        return view('books.show', compact('book'));
    }
}
