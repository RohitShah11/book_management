<?php

namespace App\Repositories;

interface RatingRepositoryInterface {
    public function addrating($userId, $bookId, $rating);
}
