<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Template;
use PhpOffice\PhpSpreadsheet;

class ExcelDataController extends Controller
{
    public function saveTemplate(Request $request)
    {
        $template = Template::where('name', $request->name)->first();

        if ($template) {
            // Update existing record
            $template->catalogue = $request->catalogue;
            $template->hash = $request->hash;
            $template->save();
        } else {
            // Create new record
            $template = new Template();
            $template->name = $request->name;
            $template->catalogue = $request->catalogue;
            $template->hash = $request->hash;
            $template->save();
        }

        return response()->json(["success" => true]);
    }
}
