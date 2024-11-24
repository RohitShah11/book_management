<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class Book extends Authenticatable
{
    use HasFactory, Notifiable;

    protected $table = 'books';
    protected $guarded = [];

     public function ratings()
     {
         return $this->hasMany(Rating::class);
     }
 
     public function comments()
     {
        return $this->hasMany(Comment::class);
     }
     public function getAverageRatingAttribute()
     {
        return $this->ratings()->avg('rating') ?? 0; 
     }
     public function getTotalCommentsAttribute()
     {
        return $this->comments()->count();
     }

}
