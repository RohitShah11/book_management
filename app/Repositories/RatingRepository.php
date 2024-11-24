<?php

namespace App\Repositories;

use App\Models\Rating;

class RatingRepository implements RatingRepositoryInterface {

    public function addrating($userId, $bookId, $ratingvalue) {
       
        $rating = new Rating;
        $rating->book_id = $bookId;
        $rating->user_id = $userId;
        $rating->rating = $ratingvalue;
        $rating->save();
      
        return $rating;
    }
}
