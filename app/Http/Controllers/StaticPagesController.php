<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Template;
use Illuminate\Support\Facades\DB;

class StaticPagesController extends Controller
{
    public function home(Request $action) {
        $droplist = Template::whereNotIn('id', [1])->orderBy('id', 'asc')->get();
        if (array_key_exists('id', $action->all())) {
            return view('home/office', ['id' => $action->all()['id'], 'droplist' => $droplist]);
        }else{
            return view('home/office', ['id' => 1, 'droplist' => $droplist]);
        }
    }

    public function get(Template $template, Request $action) {
        if (array_key_exists('id', $action->all())) {
            return view('home/get', ['template' => $template->find($action->all()['id'])->hash]);
        }
    }

    public function set(Request $action) {
        if (array_key_exists('id', $action->all())) {
            DB::table('templates')->where('id', $action->all()['id']) -> update(['hash' => $action->all()['hash']]);
        }
        // return view('home/set');
    }
}
