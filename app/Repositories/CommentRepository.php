<?php

namespace App\Repositories;

use App\Models\Comment;

class CommentRepository implements CommentRepositoryInterface {

    public function addComment($userId, $bookId, $comment) {
        
        $newComment = new Comment();
        $newComment->user_id = $userId;
        $newComment->book_id = $bookId;
        $newComment->comment = $comment;
        $newComment->save();

        return $newComment;
    }
}
