<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        $users = User::all();
        return view('users.index', compact('users'));
    }

    public function create()
    {
        return view('users.create'); 
    }

    public function store(Request $request)
{
    $validatedData = $request->validate([
        'name' => 'required|string|max:255',
        'email' => 'required|email|unique:users',
        'password' => 'required|min:6',
        'role' => 'required|in:student,librarian',
        'status' => 'required|in:pending,approved,rejected',
    ]);

    try {
        User::create([
            'name' => $validatedData['name'],
            'email' => $validatedData['email'],
            'password' => bcrypt($validatedData['password']),
            'role' => $validatedData['role'],
            'status' => $validatedData['status'],
        ]);
        
        return redirect()->route('users.index')->with('success', 'Kullanıcı başarıyla eklendi!');
    } catch (\Exception $e) {
        return back()->with('error', 'Hata oluştu: ' . $e->getMessage());
    }
}


    public function show(User $user)
    {
        return view('users.show', compact('user'));
    }

    public function approve($id) {
        $user = User::find($id);
        
        if (!$user) {
            return redirect()->route('users.index')->with('error', 'Kullanıcı bulunamadı!');
        }
    
        $user->update(['status' => 'approved']);
    
        return redirect()->route('users.index')->with('success', 'Kullanıcı onaylandı!');
    }
    
    public function reject($id) {
        $user = User::find($id);
        
        if (!$user) {
            return redirect()->route('users.index')->with('error', 'Kullanıcı bulunamadı!');
        }
    
        $user->update(['status' => 'rejected']);
    
        return redirect()->route('users.index')->with('success', 'Kullanıcı reddedildi!');
    }
}
