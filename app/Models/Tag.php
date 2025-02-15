<?php

namespace App\Models;

use App\Models\Post;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Tag extends Model
{
    use HasFactory;
    protected $guarded = [];


    public function posts()
    {
        return $this->belongsToMany(Post::class);
        // return $this->belongsToMany(Post::class)->withTimestamps()->onDelete('cascade');
    }
}
