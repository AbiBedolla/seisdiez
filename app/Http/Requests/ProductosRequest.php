<?php

namespace California\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductosRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'placas' => 'required',
            'marca' => 'required',
            'color' => 'required',
            'modelo' => 'required',
            'latitud'=>'required',
            'longitud' => 'required',
            'usuario' =>'required',
        ];
    }
}
