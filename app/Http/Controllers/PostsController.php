<?php

namespace App\Http\Controllers;

use App\Models\post;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;

class PostsController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }


    public function index()
    {
        $auth = Auth::user()->id;
        $user = User::find($auth);
        $posts = $user->posts;

        return view('posts')->with([
            'posts' => $posts
          ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('postcreate');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make(
            ['titulo' => 'required'],
            ['contenido' => 'required']
        );

        if($validator->fails()){
            return back()
            ->with('status', 'error: no se pudo guardar la informacion {{datos incompletos o no hay conexion a la base de datos}}');
        }

        $post = post::create([
            'user_id' => Auth::user()->id,
            'titulo' => $request->titulo,
            'contenido' => $request->contenido
        ]);

        return back()->with('message', 'datos guardados con exito');


    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(id $id)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(post $post)
    {
        return view('postedit')->with([
            'post' =>$post
          ]);
    }


    public function update(Request $request, post $post)
    {
        $request = post::find($post->id)->update($request->all());
        return back()->with('status', 'datos actualizados con exito');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(post $post)
    {
        $request = post::find($post->id)->delete();
        return back()->with('status', 'datos borrados con exito');
    }
}
