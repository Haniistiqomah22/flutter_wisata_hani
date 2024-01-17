<?php
 
namespace App\Http\Controllers;
 
use Illuminate\Http\Request;
use App\Models\Wisata;
 
class WisataController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $wisata = Wisata::all();
        return response()->json($wisata, 200);
    }
 
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('wisata.create');
    }
 
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
{
    // $gambar = $request->file("gambar");

    // if ($gambar) {
    //     $fileName = time() . $gambar->getClientOriginalName();
    //     $simpan = $gambar->move(public_path('storage/images/'), $fileName);

        $store_wisata = new Wisata();
        // $store_wisata->gambar = $fileName;
        $store_wisata->nama = $request->input('nama');
        $store_wisata->gambar = $request->input('gambar');
        $store_wisata->deskripsi = $request->input('deskripsi');
        $store_wisata->alamat = $request->input('alamat');
        $store_wisata->harga = $request->input('harga');

        $simpan = $store_wisata->save();

        if ($simpan) {
            return response()->json(["message" => "successs add gambar"], 201);
        } else {
            return response()->json(["message" => "Gagal"], 401);
        }
    // } else {
        $f = $request->file('gambar');
        // Tambahkan validasi jika gambar tidak diunggah
        return response()->json(["message" => "Gagal, gambar wajib diunggah $f"], 501);
    // }
}

 
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }
 
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
    $Wisata = Wisata::findOrFail($id);
    return view('wisata.edit', compact('wisata'));
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
        $requestData = $request->all();
        $wisata = Wisata::findOrFail($id)->update($requestData);
        
        return response()->json(['message' => 'Data Wisata berhasil diperbaharui!'], 200);
    }
 
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $wisata = Wisata::findOrFail($id);
            $wisata->delete();
    
            return response()->json(['message' => 'Data Wisata berhasil dihapus!'], 200);
        } 
        catch (\Exception $e) {
            return response()->json(['message' => 'Gagal menghapus data Wisata.'], 500);
        }
    }
    

}