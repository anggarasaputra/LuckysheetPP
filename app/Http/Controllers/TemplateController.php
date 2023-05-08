<?php

namespace App\Http\Controllers;

use App\Models\Template;
use Illuminate\Http\Request;

class TemplateController extends Controller
{
    public function duplicate(Request $request)
    {
        $id = $request->input('id');
        $name = $request->input('name');

        $originalTemplate = Template::find($id);

        if (!$originalTemplate) {
            return response()->json(['error' => 'Template not found'], 404);
        }

        $newTemplate = $originalTemplate->replicate();
        $newTemplate->name = $name;
        $newTemplate->save();

        return response()->json($newTemplate, 201);
    }
}
