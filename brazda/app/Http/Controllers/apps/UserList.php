<?php

namespace App\Http\Controllers\apps;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class UserList extends Controller
{
  public function index()
  {
    $users = User::all(); 
    return view('content.apps.app-user-list', compact('users'));
  }


  // public function addUser()
  // {
  //   return view('content.apps.app-user-list');
  // }

  // public function saveUser(Request $request)
  // {
  //   $validator = Validator::make($request->all(), [
  //     'name' => 'required',
  //     'email' => 'required|email',
  //     'about' => 'required',
  //     'status' => 'required',
  //     'profile_pic' => 'required',
  //   ]);

  //   if ($validator->fails()) {
  //     return redirect()->route('app-user-useradd')
  //       ->withErrors($validator)
  //       ->withInput();
  //   }

  //   $user = new User;
  //   $user->name = $request->input('name');
  //   $user->email = $request->input('email');
  //   $user->about = $request->input('about');
  //   $user->status = $request->input('status');

  //   if ($request->hasFile('profile_pic')) {
  //     $image = $request->file('profile_pic');
  //     $imageName = time() . '.' . $image->getClientOriginalExtension();
  //     $image->move(public_path('assets/images'), $imageName);
  //     $user->profile_pic = $imageName;
  //   }

  //   $user->save();

  //   return redirect()->route('app-user-list')->with('message', 'User added successfully');
  // }


  public function getUsersData(Request $request)
  {

    $draw = $request->get('draw');
    $start = $request->get("start");
    $rowperpage = $request->get("length"); // Rows display per page

    $columnIndex_arr = $request->get('order');
    $columnName_arr = $request->get('columns');
    $order_arr = $request->get('order');
    $search_arr = $request->get('search');
    
    $columnIndex = $columnIndex_arr[0]['column']; // Column index
    $columnName = $columnName_arr[$columnIndex]['data']; // Column name
    $columnSortOrder = $order_arr[0]['dir']; // asc or desc
  
    $searchValue = $search_arr['value']; // Search value
    $totalRecords = User::select('count(*) as allcount')->count();
    $totalRecordswithFilter = User::select('count(*) as allcount')->where('name', 'like', '%' . $searchValue . '%')->count();
    
    $records = User::orderBy($columnName, $columnSortOrder)
      ->where(function ($query) use ($searchValue) {
        $query->where('name', 'like', '%' . $searchValue . '%');
      })
      ->skip($start)
      ->take($rowperpage)
      ->get();
    // dd($records);
    $data_arr = array();
    foreach ($records as $record) {
      $data_arr[] = array(
        "id" => $record->id,
        "name" => $record->name,
        "email" => $record->email,
        "about" => $record->about,
        "status" => $record->status,
        "profile_pic" => $record->profile_pic,
        "action" => ''
      );
    }
    // dd($data_arr);
    $response = array(
      "draw" => intval($draw),
      "iTotalRecords" => $totalRecords,
      "iTotalDisplayRecords" => $totalRecordswithFilter,
      "aaData" => $data_arr
    );

    echo json_encode($response);
    exit;
  }

  public function deleteUser($id)
  {

    $user = User::find($id);

    if (!$user) {
      // Handle the case where the record is not found (optional)
      return response()->json(['success' => false]);
    }
    
    $user->delete();

    // Return a success response
    return response()->json(['success' => true]);
  }

  public function editUser($id)
  {
    $user = User::find($id);

    if (!$user) {
      return redirect()->route('app-user-list')->with('error', 'User not found.');
    }

    return view('content.apps.app-user-list', compact('user'));
  }
  public function updateUser($id, Request $request)
  {
    $user = User::find($id);

    if (!$user) {
      return response()->json(['success' => false, 'message' => 'User not found']);
    }

    $validator = Validator::make($request->all(), [
      'status' => 'required|in:Active,Block',
    ]);

    if ($validator->fails()) {
      return response()->json(['success' => false, 'errors' => $validator->errors()]);
    }

    $user->status = $request->input('status');
    $user->save();

    return response()->json(['success' => true, 'message' => 'User status updated successfully']);
  }

}
