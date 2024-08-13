<?php

namespace App\Http\Controllers\apps;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Carbon\Carbon;

class EcommerceDashboard extends Controller
{
  public function index()
  {
    $monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

    $data = User::select('id', 'created_at')->get()->groupBy(function ($data) {
      return Carbon::parse($data->created_at)->format('M');
    });

    $months = [];
    $monthCount = [];

    foreach ($monthNames as $monthName) {
      $months[] = $monthName;
      $monthCount[] = isset($data[$monthName]) ? count($data[$monthName]) : 0;
    }

    $users = User::all();

    return view('content.apps.app-ecommerce-dashboard', [
      'data' => $data,
      'months' => $months,
      'monthCount' => $monthCount,
      'users' => $users, // Add users to the view
    ]);
  }

  public function getUsersList(Request $request)
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
}
