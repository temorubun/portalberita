<?php

namespace App\Http\Controllers;

use App\Models\Reply;
use App\Models\Comment; // Import the Comment model
use App\Models\News;
use Illuminate\Http\Request;

class ReplyController extends Controller
{
    public function store(Request $request, $comment_id)
    {
        // Validasi input
        $request->validate([
            'content' => 'required|string|max:255',
        ]);

        // Pastikan comment_id adalah integer
        $comment_id = (int) $comment_id;

        // Cek apakah comment_id valid
        if (!Comment::find($comment_id)) {
            return response()->json(['error' => 'Comment not found.'], 404);
        }

        // Buat reply baru
        $reply = Reply::create([
            'comment_id' => $comment_id,
            'user_id' => auth()->id(), // Menggunakan ID pengguna yang sedang login
            'content' => $request->content,
        ]);

        // Redirect kembali ke halaman detail berita atau halaman komentar
        return redirect()->route('news.detail', ['id' => $reply->comment->news_id])
                         ->with('success', 'Balasan berhasil ditambahkan!');
    }

    public function detail($id)
    {
        $news = News::with(['comments.replies', 'category'])->findOrFail($id);
        
        // Ensure comments is an empty array if null
        $news->comments = $news->comments ?? [];

        return view('detail', compact('news'));
    }
}