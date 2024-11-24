<?php

namespace App\Repositories;

interface BookRepositoryInterface {
    public function getAllBooks($search, $perPage);
    public function getBookById($bookId);
}
