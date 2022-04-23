<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Disciple;

class DiscipleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Disciple::with('student')->latest()->get();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $disciple = new Disciple();
        $disciple->student_id = $request->student_id;
        $disciple->dateWn = $request->dateWn;
        $disciple->type = $request->type;
        $disciple->description = $request->description;
        $disciple->save();
        
        return response()->json(['message' =>'Created', 'data' => $disciple], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return Disciple::findOrFail($id);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $disciple = Disciple::findOrFail($id);
        $disciple->student_id = $request->student_id;
        $disciple->dateWn = $request->dateWn;
        $disciple->type = $request->type;
        $disciple->description = $request->description;
        $disciple->save();
        return response()->json(['message' =>'Updated', 'data' => $disciple], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $isDeleted = Disciple::destroy($id);
        if($isDeleted == 1){
            return response()->json(['massage'=>'Deleted'], 200);
        }else{
            return response()->json(['massage'=>'Not Found'], 404);
        }
    }
    
    public function search($class)
    {
        return Disciple::where('class', $class)->get();
    }
}