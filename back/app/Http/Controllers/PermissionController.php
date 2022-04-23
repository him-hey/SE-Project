<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Permission;

class PermissionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Permission::with('student')->latest()->get();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {   
        $request->validate([
            'student_id'=>'required',
            'startAt'=>'required',
            'endAt'=>'required|after:startAt',
            'type'=>'required',
            'description'=>'nullable',
        ]);
        $permission = new Permission();
        $permission->student_id = $request->student_id;
        $permission->startAt = $request->startAt;
        $permission->endAt = $request->endAt;
        $permission->type = $request->type;
        $permission->description = $request->description;

        $permission->save();
        return response()->json('Permission Created');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return Permission::findOrFail($id);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {    $request->validate([
            'student_id'=>'required',
            'startAt'=>'required',
            'endAt'=>'required|after:startAt',
            'type'=>'required',
            'description'=>'nullable',
        ]);
        $permission = Permission::findOrFail($id);
        $permission->student_id = $request->student_id;
        $permission->startAt = $request->startAt;
        $permission->endAt = $request->endAt;
        $permission->type = $request->type;
        $permission->description = $request->description;

        $permission->save();
        return response()->json(['message' =>'Updated', 'data' => $permission], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $isDeleted = Permission::destroy($id);
        if($isDeleted == 1){
            return response()->json(['massage'=>'Deleted'], 200);
        }else{
            return response()->json(['massage'=>'Not Found'], 404);
        }
    }
}
