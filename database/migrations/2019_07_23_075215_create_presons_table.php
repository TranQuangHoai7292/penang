<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePresonsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('presons', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name',191);
            $table->string('code',191);
            $table->string('status',191);
            $table->string('question_id',191);
            $table->string('true_question',191);
            $table->string('fail_question',191);
            $table->string('role',191);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('presons');
    }
}
