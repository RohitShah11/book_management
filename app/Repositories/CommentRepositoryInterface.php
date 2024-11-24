<?php

namespace App\Repositories;

interface CommentRepositoryInterface {
    public function addComment($userId, $bookId, $comment);
}
