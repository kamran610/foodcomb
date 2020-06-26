<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\menu_item as MenuItemModel;
use App\FcOrders as OrderModel;
use Auth;
class ShopController extends Controller
{
    //

    public function getItems(Request $request) {

      $food_family_id = $request->food_family;
      $restaurant_id = $request->restaurant_id;

      $result = MenuItemModel::where('restaurant_id','=', $restaurant_id)->get();
                                    // dd($result);
      return response()->json($result->toArray());
    }

    public function single_restaurant(Request $request) {
        $areas = AreaModel::all();
        $restaurants = RestaurantModel::all();
        $foodCategories = FoodCategoryModel::with('food_families')->get();
        // dd($foodCategories->food_families);


        return view('user/pages/shop', [
          'areas' => $areas,
          'restaurants' => $restaurants,
          'foodCategories' => $foodCategories,
        ]);
        dd($request->all());
    }

    public function order(Request $request) {
        // dd()
        // dd($foodCategories->food_families);
        $order = new OrderModel;

        $order->restaurant_id = $request->restaurant_id;
        $order->order_body = json_encode($request->cart_info);
        $order->order_user_address = $request->customer_address;
        $order->customer_name = $request->customer_name;
        $order->customer_phone = $request->customer_phone;
        $order->order_from = $request->order_from;

        $order->save();
        dd($order);
    }

    public function orderHistory(){
      $order = new OrderModel;
      $user_id = Auth::user()->id;
      $orders = $order::where('order_from', $user_id)->get();
      return view('user/pages/order_history', compact('orders'));
    }
}
