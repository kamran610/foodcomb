<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\restaurant as RestaurantModel;
use App\User as UserModel;
use App\FcArea as AreaModel;
use App\FcRestaurantCategory as RestaurantCategoryModel;
use App\FcFoodCategory as FoodCategoryModel;
class productsController extends Controller
{
    //

    public function foods(Request $request) {
      $areas = AreaModel::all();
      $restaurants = RestaurantModel::all();
      $foodCategories = FoodCategoryModel::with('food_families')->get();
      // dd($foodCategories->food_families);
      // dd(Auth::check());
      $user_loggedin = Auth::check();

      return view('user/pages/shop', [
        'areas' => $areas,
        'restaurants' => $restaurants,
        'foodCategories' => $foodCategories,
        'userLoggedIn' => $user_loggedin
      ]);
    }
}
