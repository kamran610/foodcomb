<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\area as Area;
use App\Reservation as Reservation;
class ReservationController extends Controller
{
    //
    function index(){

        $available_areas = Area::all();
        return view('user/pages/reserve', compact('available_areas'));
    }

    function makereservation(Request $request){

        $new_reservation = new Reservation;
        $new_reservation->branch = $request['res-branch'];
        $new_reservation->people = $request['res-pepole'];
        $new_reservation->date = $request['date'];
        $new_reservation->time = $request['res-time'];
        $new_reservation->name = $request['res-name'];
        $new_reservation->email = $request['res-email'];
        $new_reservation->phone = $request['contact-phone'];
        $new_reservation->request_text = $request['res-message'];

        $new_reservation->save();
        $available_areas = Area::all();
        // dd($new_reservation);
        return view('user/pages/reserve', compact('new_reservation','available_areas'));
        // dd($new_reservation);

    }
}
