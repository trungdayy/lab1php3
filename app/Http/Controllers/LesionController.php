<?php

namespace App\Http\Controllers;

use App\Models\Lesion;

class LesionController extends Controller
{
    public function show($id)
    {
        // Lấy bài học (lesion) theo id
        $lesion = Lesion::findOrFail($id);

        return view('lesions.show', compact('lesion'));
    }
}
