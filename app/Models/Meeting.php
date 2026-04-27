<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Meeting extends Model
{

     protected $table = 'meetings';
protected $fillable = [
    


        'type',
        'title',
        'description',
        'meeting_date',
        'start_time',
        'end_time',
        'location_type',
        'location',
        'members_ids',
        'status',
        'created_by',
        'response_status',
        'attachments',
        'deleted_by',
        'deleted_at',
    ];

    protected $casts = [
        'meeting_date' => 'date',
        'start_time' => 'datetime:H:i:s',
        'end_time' => 'datetime:H:i:s',
        'members_ids' => 'array',
        'response_status' => 'array',
        'attachments' => 'array',
        'deleted_at' => 'datetime',
    ];

    public function members()
    {
        return $this->belongsToMany(Employee::class, 'meeting_members', 'meeting_id', 'employee_id')
            ->withPivot('response_status')
            ->withTimestamps();
    }

    public function creator()
    {
        return $this->belongsTo(User::class, 'created_by', 'id');
    }
    
}