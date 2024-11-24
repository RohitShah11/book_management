@extends('layouts.app')

@section('content')
<h3>Rate & Comment</h3>
<form method="POST" action="{{ route('books.rate.comment', $book->id) }}">
    @csrf
    <label for="rating">Rate this book:</label>
    <select name="rating" id="rating" class="form-control">
        <option>Select</option>
        @for ($i = 1; $i <= 5; $i++)
            <option value="{{ $i }}">{{ $i }} Star</option>
        @endfor
    </select>

<hr>
<label for="rating">Add Comment:</label>
    <textarea name="comment" class="form-control" placeholder="Add a comment"></textarea>
    <button type="submit" class="btn btn-primary mt-2">Submit</button>
</form>

@endsection