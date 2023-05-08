<?php

use App\Http\Controllers\ExcelDataController;
use App\Http\Controllers\TemplateController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'StaticPagesController@home');
Route::post('/get', 'StaticPagesController@get');
Route::get('/get', 'StaticPagesController@get');
Route::post('/set', 'StaticPagesController@set');
//Route::post('/templates', [\App\Http\Controllers\ExcelDataController::class, 'store']);
Route::post('/save-template', [ExcelDataController::class, 'saveTemplate']);
Route::get('/update-template-data', [\App\Http\Controllers\ContohController::class, 'updateTemplateData'])->name('updateTemplateData');
Route::post('/duplicate', [TemplateController::class, 'duplicate'])->name('duplicate');

