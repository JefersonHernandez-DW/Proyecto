<?php

class usuariosControlador
{

    // Registrar habitacion
    public static function fnCtrRegistrarHabitacion($tipoHabitación,$infoHabitacion,$precio, $caracteristicas,$persona_idpersona)
    {
        $objRespuesta = personaModelo::fnMdlRegistrarHabitacion($tipoHabitación,$infoHabitacion,$precio, $caracteristicas,$persona_idpersona);
        return $objRespuesta;
    }

    // Editar habitacion 
    public static function fnCtrEditarHabitacion($$tipoHabitación,$infoHabitacion,$precio, $caracteristicas,$persona_idpersona)
    {
        $objRespuesta = usuariosModelo::fnMdlEditarHabitacion($$tipoHabitación,$infoHabitacion,$precio, $caracteristicas,$persona_idpersona);
        return $objRespuesta;
    }

   






}
