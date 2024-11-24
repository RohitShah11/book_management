<?php

namespace App\Repositories;

use App\Models\Rating;

class RatingRepository implements RatingRepositoryInterface {

    public function addrating($userId, $bookId, $rating) {
        
        $rating = new Rating;
        $rating->book_id = $bookId;
        $rating->user_id = $userId;
        $rating->rating = $rating;
        $rating->save();

        return $rating;
    }
}
