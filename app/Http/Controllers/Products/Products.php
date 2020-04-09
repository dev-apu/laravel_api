<?php

namespace App\Http\Controllers\Products;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Validator;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\URL;
use App\Models\ProductsModel;
use App\Models\Category;
use Auth;

class Products extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json(ProductsModel::get(), 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        

        $this->validate($request, [
           // 'user_id' => 'required',
            'product_title' => 'required',
            'product_description' => 'required',
            'category_id' => 'required',
            'price' => 'required',
            'product_image' => 'required',      
              ]);

        $product = new ProductsModel;
      //  $product->user_id = Auth::user()->id;
        $product->user_id = $request->input('user_id');
        $product->product_title = $request->input('product_title');
        $product->product_description = $request->input('product_description');
        $product->category_id = $request->input('category_id');
        $product->price = $request->input('price');
        
         if(Input::hasFile('product_image')){
            $file = Input::file('product_image');
            $file->move(public_path(). '/uploads/', $file->getClientOriginalName());
            $url = URL::to("/"). '/uploads/'. $file->getClientOriginalName();
        }
        $product->product_image = $url;

        $n = $product->save();
        return response()->json(["message" => "Insert Successfully"], 201);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $product = ProductsModel::find($id);
        if(is_null($product)){
        return response()->json(["message" => "Record Not Found"], 404);
        }
        return response()->json($product, 200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
         $product = ProductsModel::find($id);
        if(is_null($product)){
        return response()->json(["message" => "Record Not Found"], 404);
        }
        $product->update($request->all());
        return response()->json($product, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
         $product = ProductsModel::find($id);
        if(is_null($product)){
        return response()->json(["message" => "Record Not Found"], 404);
        }
        $product->delete();
        return response()->json(["message" => "Record Deleted"], 204);
    }
}
