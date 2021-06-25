<?php

class usuariosControlador
{

    // Registrar Persona
    public static function fnCtrRegistrarPersona($idpersona,$rollPersona,$nombre, $apellidos,$dirección,$telefono,$contraceña)
    {
        $objRespuesta = personaModelo::fnMdlRegistrarPersona($idpersona,$rollPersona,$nombre, $apellidos,$dirección,$telefono,$contraceña);
        return $objRespuesta;
    }

    // Editar Persona
    public static function fnCtrEditarPersona($idpersona,$rollPersona,$nombre, $apellidos,$dirección,$telefono,$contraceñar)
    {
        $objRespuesta = usuariosModelo::fnMdlEditarPersona($idpersona,$rollPersona,$nombre, $apellidos,$dirección,$telefono,$contraceña);
        return $objRespuesta;
    }

   






}
