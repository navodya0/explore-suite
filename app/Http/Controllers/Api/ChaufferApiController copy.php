<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class ChaufferApiController extends Controller
{
    public function index()
    {
        $chauffers = DB::table('employee_job as ej')
            ->join('employees as e', 'e.employee_id', '=', 'ej.employee_id')
            ->join('departments as d', 'd.department_id', '=', 'ej.department_id')
            ->leftJoin('employee_contacts as ec', function ($join) {
                $join->on('ec.employee_id', '=', 'e.employee_id')
                     ->where('ec.contact_type', 'Whatsapp Number');
            })
            ->where('ej.job_title_id', 10)
            ->whereIn('ej.department_id', [19, 20])
            ->select(
                'e.employee_id as employee_id',
                'e.preferred_name',
                'ec.contact_value as whatsapp_number',
                'd.name'
            )
            ->orderBy('e.preferred_name')
            ->get();

        return response()->json($chauffers);
    }
}