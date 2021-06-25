<?php
include_once "../controlador/usuariosControlador.php";
include_once "../modelos/usuariosModelo.php";

class dataTableUsuarios{
    public function fnCargarTabla(){
        $objRespuesta = usuariosControlador::fnCtrCargarUsuarios();
        if (count($objRespuesta) >= 1){
            $objJson = '{
                "data": [';
                for ($i=0; $i < count($objRespuesta); $i++) { 
                    $codigo = $objRespuesta[$i]["tipoHabitación"];
                    $nombre = $objRespuesta[$i]["infoHabitacion"];
                    $descripcion = $objRespuesta[$i]["precio"];
                    $cantidad = $objRespuesta[$i]["caracteristicas"];                    
                    $precio= $objRespuesta[$i]["persona_idpersona"];
                   
                    $objBotones = "<div class='btn-group'>";
                    $objBotones .=  "<button id='btnComprar' class='btn btn-sm btn-danger' title='Comprar' idproductos='".$objRespuesta[$i]["idproductos"]."' codigo='".$codigo."' nombre='".$nombre."' descripcion='".$descripcion."' cantidad=' ".$cantidad."'precio='".$precio."' imagen='".$imagen."'><i class='far fa- btn-danger'>Comprar</i></button>";
                    
                    $objBotones .= "</div>";

                    $objImagen = "<img src='".$imagen."' width='80' heigth='80'>";

                    $objJson .='[
                        "'.($i+1).'",
                        "'.$codigo.'",
                        "'.$nombre.'",
                        "'.$descripcion.'",
                        "'.$cantidad.'",
                        "'.$precio.'",
                        "'.$objImagen.'",
                        "'.$objBotones.'"
                      ],';
                }
                $objJson = substr($objJson,0,-1);
                $objJson .=']}';

        }else{
            $objJson = '{
                "data": [
                  [
                    "No hay registros disponibles",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    ""
                  ]
                ]
              }';
        }

        echo $objJson;

    }
}

$objTabla = new dataTableUsuarios();
$objTabla->fnCargarTabla();