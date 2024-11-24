<?php

namespace App\Repositories;
use App\Models\Book;



class BookRepository implements BookRepositoryInterface {

    public function getAllBooks($search, $perPage) {
        return Book::with('ratings', 'comments')
            ->when($search, function ($query, $search) {
                $query->where('title', 'LIKE', "%{$search}%")
                      ->orWhere('author', 'LIKE', "%{$search}%");
            })
            ->paginate($perPage);
    }

    public function getBookById($bookId) {
        return Book::with('ratings', 'comments')->findOrFail($bookId);
    }
}
