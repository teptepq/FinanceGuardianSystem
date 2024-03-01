<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;


class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'userid'
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];

    // protected static function boot()
    // {
    //     parent::boot();

    //     static::creating(function ($model) {
    //         // Generate custom userid with the format: year + auto-incremented primary key
    //         $model->userid = now()->year . $model->id;
    //     });
    // }
    protected static function boot()
    {
        parent::boot();

        static::creating(function ($model) {
            // Ensure userid is unique
            do {
                $year = now()->year;
                $fakeNumber = mt_rand(1000, 9999);
                $model->userid = $year . $fakeNumber;

                // Check if the generated userid already exists
                $exists = DB::table('users')->where('userid', $model->userid)->exists();
            } while ($exists);
        });
    }

    public static function create(array $attributes = [])
    {
        // Override the create method to handle the creation of the user
        $attributes['password'] = bcrypt($attributes['password']);

        return tap(static::query()->create($attributes), function ($user) {
            // You can perform additional actions after user creation if needed
        });
    }
}
