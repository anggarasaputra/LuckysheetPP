<?php

namespace App\Http\Controllers;

use App\Models\Contoh;
use App\Models\Template;
use Illuminate\Http\Request;

class ContohController extends Controller
{
    public function updateTemplateData()
    {
        $template = Template::find(3); //choose id templates
        $jsonData = json_decode($template->hash);

        $contoh = Contoh::all();
        $rowNumber = 3; //start data after header
        $lastIndex = 1; //start for no number

        // Remove old data starting from row 3 and columns 0 and 1
        foreach ($jsonData[0]->celldata as $key => $cell) {
            if ($cell->r >= 3 && ($cell->c == 0 || $cell->c == 1)) {
                //dd($jsonData[0]->celldata[120]);
                array_splice($jsonData[0]->celldata, $key);
            }
        }

        foreach($contoh as $data) {
            $jsonData[0]->celldata[] = [
                "r" => $rowNumber,
                "c" => 0,
                "v" => [
                    "m" => $lastIndex,
                    "ct" => [
                        "fa" => "General",
                        "t" => "g"
                    ],
                    "v" => $lastIndex
                ]
            ];
            $jsonData[0]->celldata[] = [
                "r" => $rowNumber,
                "c" => 1,
                "v" => [
                    "m" => $data->isi,
                    "ct" => [
                        "fa" => "General",
                        "t" => "g"
                    ],
                    "v" => $data->isi
                ]
            ];
            $rowNumber++;
            $lastIndex++;
        }

        $template->hash = json_encode($jsonData);
        $template->save();

        return redirect()->back();
    }
}
