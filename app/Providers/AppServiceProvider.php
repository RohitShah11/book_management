<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

use App\Repositories\BookRepositoryInterface;
use App\Repositories\BookRepository;
use App\Repositories\RatingRepositoryInterface;
use App\Repositories\RatingRepository;
use App\Repositories\CommentRepositoryInterface;
use App\Repositories\CommentRepository;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind(BookRepositoryInterface::class, BookRepository::class);
        $this->app->bind(RatingRepositoryInterface::class, RatingRepository::class);
        $this->app->bind(CommentRepositoryInterface::class, CommentRepository::class);
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
