<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contact as Contact;
class ContactController extends Controller
{
    //

    function index() {
        return view('user/pages/contacts');
    }

    function save(Request $request) {

        $newContact = new Contact;

        $newContact->f_name = $request->f_name;
        $newContact->l_name = $request->l_name;
        $newContact->e_mail = $request->e_mail;
        $newContact->phone = $request->phone;
        $newContact->message = $request->message;

        $newContact->save();

        
        // dd($new_reservation);
        return view('user/pages/contacts', compact('newContact'));


        dd($newContact);
        $all_contact = Contact::all();
        print_r($all_contact);
        dd("Hello");
    }
}
