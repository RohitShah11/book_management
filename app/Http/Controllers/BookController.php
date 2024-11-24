<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Repositories\BookRepositoryInterface;
use App\Repositories\RatingRepositoryInterface;
use App\Repositories\CommentRepositoryInterface;

class BookController extends Controller
{
    protected $bookRepository;
    protected $ratingRepository;
    protected $commentRepository;

    public function __construct(
        BookRepositoryInterface $bookRepository,
        RatingRepositoryInterface $ratingRepository,
        CommentRepositoryInterface $commentRepository
    ) {
        $this->bookRepository = $bookRepository;
        $this->ratingRepository = $ratingRepository;
        $this->commentRepository = $commentRepository;
    }

    public function index(Request $request) {
        $search = $request->input('search');
        $data['books'] = $this->bookRepository->getAllBooks($search, 10);
        return view('books.index', $data);
    }

    public function show($book) {
        $data['book'] = $this->bookRepository->getBookById($book);
        return view('books.show', $data);
    }

    public function ratingandcomment(Request $request, $book) {
        $request->validate([
            //'rating' => 'nullable|integer|min:1|max:5',
            //'comment' => 'nullable|string|max:255',
        ]);

        if ($request->input('rating')) {
            $this->ratingRepository->updateOrCreateRating(auth()->id(), $book, $request->input('rating'));
        }

        if ($request->input('comment')) {
            $this->commentRepository->addComment(auth()->id(), $book, $request->input('comment'));
        }

        return redirect()->route('books.index')->with('success', 'Your rating and comment have been submitted!');
    }
}
