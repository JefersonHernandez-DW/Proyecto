<?php

class usuariosControlador
{

    // Registrar Huesped
    public static function fnCtrRegistrarHuesped($idreserva,$fechaIngreso,$fechaSalida, $cantidadPersonas,$persona_idpersona,$habitación_tipoHabitación)
    {
        $objRespuesta = personaModelo::fnMdlRegistrarHuesped($idreserva,$fechaIngreso,$fechaSalida, $cantidadPersonas,$persona_idpersona,$habitación_tipoHabitación);
        return $objRespuesta;
    }

    // Editar Huesped
    public static function fnCtrEditarHuesped($idreserva,$fechaIngreso,$fechaSalida, $cantidadPersonas,$persona_idpersona,$habitación_tipoHabitación)
    {
        $objRespuesta = usuariosModelo::fnMdlEditarHuesped($idreserva,$fechaIngreso,$fechaSalida, $cantidadPersonas,$persona_idpersona,$habitación_tipoHabitación);
        return $objRespuesta;
    }

   






}
