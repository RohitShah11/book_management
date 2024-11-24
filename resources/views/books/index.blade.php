@extends('layouts.app')

@section('content')
<div class="container">

    @if (session('success'))
    <div class="alert alert-success alert-dismissable custom-success-box" style="margin: 15px;">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong> {{ session('success') }} </strong>
    </div>
    @endif

    <form method="GET" action="{{ route('books.index') }}">
        <input type="text" name="search" placeholder="Search by title or author" value="{{ request('search') }}" class="form-control mb-3">
    </form>

    <div class="row">
        @foreach ($books as $book)
        <div class="col-md-4">
            <div class="card mb-3">
                <div class="card-body">
                    <h5 class="card-title">{{ $book->title }}</h5>
                    <p class="card-text"><strong>Author:</strong> {{ $book->author }}</p>
                    <p class="card-text">{{ $book->description }}</p>
                    <p class="card-text d-flex align-items-center">
                        <strong>Average Rating: </strong>&nbsp; {{ number_format($book->average_rating, 1) }} / 5
                        <!-- Rating Icon Trigger -->
                        <button 
                            type="button" 
                            class="btn btn-link text-decoration-none ms-2 p-0" 
                            data-bs-toggle="modal" 
                            data-bs-target="#ratingsModal-{{ $book->id }}" 
                            title="View Ratings">
                            <i class="bi bi-star-fill" style="font-size: 1.2rem; color: gold;">Click TO View</i>
                        </button>
                    </p>
                    
                    <p class="card-text d-flex align-items-center">
                        <strong>Total Comments: </strong>&nbsp; {{ $book->total_comments }}
                        <!-- Comment Icon Trigger -->
                        <button 
                            type="button" 
                            class="btn btn-link text-decoration-none ms-2 p-0" 
                            data-bs-toggle="modal" 
                            data-bs-target="#commentsModal-{{ $book->id }}" 
                            title="View Comments">
                            <i class="bi bi-chat-dots-fill" style="font-size: 1.2rem; color: gray;">Click TO View</i>
                        </button>
                    </p>
                    

                    <a href="{{ route('books.show', $book->id) }}" class="btn btn-primary">Rate & Comment</a>
                </div>
            </div>
        </div>
        
        <!-- Ratings Modal -->
        <div class="modal fade" id="ratingsModal-{{ $book->id }}" tabindex="-1" aria-labelledby="ratingsModalLabel-{{ $book->id }}" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="ratingsModalLabel-{{ $book->id }}">Ratings for "{{ $book->title }}"</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                    @if($book->ratings->isEmpty())
                        <p>No ratings available for this book.</p>
                    @else
                        <ul class="list-group">
                            @foreach ($book->ratings as $rating)
                                <li class="list-group-item">
                                    <strong>{{ $rating->user->name }}:</strong> {{ $rating->rating }} stars
                                </li>
                            @endforeach
                        </ul>
                    @endif
                    </div>
                </div>
            </div>
        </div>
    
        <!-- Comments Modal -->
        <div class="modal fade" id="commentsModal-{{ $book->id }}" tabindex="-1" aria-labelledby="commentsModalLabel-{{ $book->id }}" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="commentsModalLabel-{{ $book->id }}">Comments for "{{ $book->title }}"</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        @if($book->comments->isEmpty())
                            <p>No comments available for this book.</p>
                        @else
                            <ul class="list-group">
                                @foreach ($book->comments as $comment)
                                    <li class="list-group-item">
                                        <strong>{{ $comment->user->name }}:</strong> {{ $comment->comment }}
                                    </li>
                                @endforeach
                            </ul>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    @endforeach
    
    <div class="d-flex justify-content-center">
        {{ $books->links() }}
    </div>

@endsection
@section('script')


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
    var modals = document.querySelectorAll('.modal');
modals.forEach(function (modal) {
    new bootstrap.Modal(modal);
});

</script>



@endsection