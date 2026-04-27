<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('meetings', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->text('description')->nullable();

            $table->date('meeting_date');
            $table->time('start_time');
            $table->time('end_time');

            $table->enum('location_type', ['physical', 'online'])->default('physical');
            $table->string('location')->nullable();

            $table->json('members_ids');
            $table->enum('status', ['scheduled', 'ongoing', 'completed', 'cancelled'])->default('scheduled');

            $table->unsignedBigInteger('created_by');

            $table->json('response_status')->nullable();
            $table->json('attachments')->nullable();

            $table->unsignedBigInteger('deleted_by')->nullable();
            $table->timestamp('deleted_at')->nullable();

            $table->timestamps();

            // Optional foreign keys if you have a members/users table
            // $table->foreign('created_by')->references('id')->on('users')->onDelete('cascade');
            // $table->foreign('deleted_by')->references('id')->on('users')->nullOnDelete();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('meetings');
    }
};