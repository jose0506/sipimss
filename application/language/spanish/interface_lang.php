<?php

/**
 * Archivo que contiene los textos del sistema
 * Contrucción del índice.
 * 	- Archivo fuente: interface_
 * 	- Modulo: login
 *  - Controlador: login
 *  - Identificador único del texto dentro del arreglo: texto_bienvenida
 * 		Ej:
 * 			$lang['interface_login']['login']['texto_bienvenida'] = 'Bienvenido al sistema SIPIMSS';
 * 			$lang['interface_login']['login']['texto_usuario'] = 'Usuario:';
 * 			$lang['interface_login']['login']['texto_contrasenia'] = 'Contraseña:';
 * 			$lang['interface_censo']['formacion']['texto_bienvenida'] = '...';
 * 			$lang['interface_censo']['actividad']['texto_bienvenida'] = '...';
 * @package	CodeIgniter
 * @author	EllisLab Dev Team
 * @copyright	Copyright (c) 2008 - 2014, EllisLab, Inc. (http://ellislab.com/)
 * @copyright	Copyright (c) 2014 - 2015, British Columbia Institute of Technology (http://bcit.ca/)
 * @license	http://opensource.org/licenses/MIT	MIT License
 * @link	http://codeigniter.com
 * @since	Version 1.0.0
 * @filesource
 */
defined('BASEPATH') OR exit('No direct script access allowed');

//$lang['interface_'][''][''] = '';
//$lang['interface']['registro']['texto_bienvenida'] = 'Hola mundo';
$lang['interface'] = array(
    'registro' => array(
        'lbl_bienvenido' => 'Bienvenido',
        'lbl_formulario' => 'Registro de docentes al censo de profesores',
        'lbl_campos_obligatorios' => 'Campos obligatorios',
        'lbl_matricula' => 'Matrícula',
        'plh_matricula' => 'Introduzca su matrícula',
        'lbl_delegacion' => 'Delegación',
        'plh_delegacion' => 'Seleccione su delegación',
        'lbl_contrasenia' => 'Introduzca una contraseña',
        'plh_contrasenia' => 'Introduzca una contraseña',
        'lbl_confirma_contrasenia' => 'Confirmar contraseña',
        'plh_confirma_contrasenia' => 'Confirme su contraseña',
        'lbl_correo' => 'Correo electrónico',
        'plh_correo' => 'Introduzca su correo electronico',
        'lbl_captcha' => 'Codigo de seguridad',
        'plh_captcha' => 'Escriba el texto de la imágen',
        'plh_btn_guardar' => 'Registrar',
        'lbl_no_registrado' => '¿No se ha registrado?',
        'lbl_existe_registro' => 'El usuario ya se encuentra registrado',
        'phl_la_matricula_existe' => 'El usuario con matricula: [field] ya se encuentrá registrado',
        'phl_registro_correcto' => 'El registro se efectuo correctamente',
        'phl_registro_incorrecto_del_empleado' => 'El registro del empleado no se pudo validar',
        'error_no_inserto_empleado' => 'No se pudieron guardar los datos del empleado'
    ),
    'restablecer_contrasenia' => array(
        'lbl_olvido_contrasenia' => 'He olvidado mi contraseña',
    ),
    'login' => array(
        'lbl_formulario' => 'Iniciar sesión',
        'er_no_usuario' => 'No se encontró registro del usuario',
        'er_contrasenia_incorrecta' => 'La contraseña del usuario es incorrecta',
        'er_general' => 'Datos incorrectos'
    ),
    //perfil string values
    'perfil' => array(
        'span_fecha_last_update' => 'Fecha de última actualización: ',
        'lbl_titulo_seccion' => 'Mi perfil',
        'lbl_informacion_general' => 'Información general',
        'lbl_formacion' => 'Formación',
        'lbl_formacion_personal_salud' => 'Formación del personal de salud',
        'lbl_formacion_docente' => 'Formación docente',
        'lbl_becas_comisiones' => 'Becas y comisiones laborales',
        'lbl_actividad' => 'Actividad docente',
        'lbl_comisiones_academicas' => 'Comisiones academicas',
        'lbl_elaboracion_material' => 'Elaboración de material educativo',
        'lbl_informacion_general_informacion_personal' => 'Información personal',
        'lbl_informacion_general_apellido_paterno' => 'Apellido paterno',
        'plh_informacion_general_apellido_paterno' => 'Introduzca su apellido paterno',
        'lbl_informacion_general_apellido_materno' => 'Apellido materno',
        'plh_informacion_general_apellido_materno' => 'Introduzca su apellido materno',
        'lbl_informacion_general_nombre' => 'Nombre',
        'plh_informacion_general_nombre' => 'Introduzca su nombre',
        'lbl_informacion_general_edad' => 'Edad',
        'plh_informacion_general_edad' => 'Introduzca su edad',
        'lbl_informacion_general_genero' => 'Género',
        'plh_informacion_general_genero' => 'Seleccione su género',
        'lbl_informacion_general_estado_civil' => 'Estado civil',
        'plh_informacion_general_estado_civil' => 'Seleccione su estado civil',
        'lbl_informacion_general_estado_usuario' => 'Estado del usuario',
        'lbl_informacion_general_telefono_particular' => 'Teléfono particular',
        'plh_informacion_general_telefono_particular' => 'Introduzca su teléfono particular',
        'lbl_informacion_general_telefono_laboral' => 'Teléfono laboral',
        'plh_informacion_general_telefono_laboral' => 'Introduzca su teléfono laboral',
        'lbl_informacion_general_correo_electronico' => 'Correo electrónico',
        'lbl_informacion_general_correo_electronico_alt' => 'Correo electrónico alternativo',
        'plh_informacion_general_correo_electronico' => 'Introduzca su correo electrónico',
        'lbl_informacion_general_empleos_actuales' => 'Número de empleos actuales fuera del IMSS',
        'plh_informacion_general_empleos_actuales' => 'Introduzca su número de empleos actuales fuera del IMSS',
        'btn_informacion_general_editar_nombre' => 'Editar nombre',
        'btn_informacion_general_guardar_informacion_personal' => 'Guardar información personal',
        'lbl_informacion_general_informacion_imss' => 'Información IMSS',
        'lbl_informacion_general_matricula' => 'Matrícula',
        'lbl_informacion_general_delegacion' => 'Delegación',
        'lbl_informacion_general_nombre_categoria' => 'Nombre de la categoría/Puesto',
        'lbl_informacion_general_clave_categoria' => 'Clave de la categoría/Puesto',
        'lbl_informacion_general_nombre_area_adscripcion' => 'Nombre del área de adscripción',
        'lbl_informacion_general_nombre_unidad_adscripcion' => 'Nombre de la unidad de adscripción',
        'lbl_informacion_general_nombre_clave_adscripcion' => 'Clave de adscripción',
        'lbl_informacion_general_antiguedad' => 'Antigüedad',
        'lbl_informacion_general_antiguedad_anios' => 'Años',
        'lbl_informacion_general_antiguedad_quincenas' => 'Quincenas',
        'lbl_informacion_general_antiguedad_dias' => 'Días',
        'lbl_informacion_general_tipo_contratacion' => 'Tipo de contratación',
        'lbl_informacion_general_estatus_empleado' => 'Estatus del empleado',
        'lbl_informacion_general_clave_presupuestal' => 'Clave presupuestal',
        'lbl_informacion_general_curp' => 'CURP',
        'lbl_formacion_salud_formacion_profesional' => 'Tipo formación profesional',
        'lbl_formacion_salud_subtipo_formacion_profesional' => 'Subtipo formación profesional',
        'lbl_formacion_salud_comprobante' => 'Cedula profesional / Comprobante',
        'lbl_formacion_salud_tipo_comprobante' => 'Tipo de comprobante',
        'plh_formacion_salud_tipo_comprobante' => 'Tipo de comprobante',
        'lbl_formacion_salud_editar' => 'Editar',
        'lbl_formacion_salud_borrar' => 'Borrar',
        'btn_formacion_salud_agregar_formacion_profesional' => 'Agregar formación profesional',
        'plh_formacion_salud_formacion_profesional' => 'Seleccione una formación profesional',
        'plh_formacion_salud_subtipo_formacion_profesional' => 'Seleccione un subtipo de formación profesional',
    ),
    //Selección de roles del usuario 
    'rol' => array(
        'lbl_selecciona_rol' => 'Debe seleccionar un rol para cargar',
    ),
    //Textos generales
    'general' => array(
        'msg_no_existe_empleado' => 'No se encontrarón datos del empleado. Por favor registre sus datos',
        'advertencia_agregar_todos_los_datos' => 'Debe llenar todos los campos obligatorios',
        'datos_almacenados_correctamente' => 'Los datos se almacenaron correctamente',
        'error_guardar' => 'Los datos no se almacenaron. Por favor intentemo más tarde',
        'cerrar' => 'Cerrar',
        'guardar' => 'Guardar',
        'editar' => 'Editar',
        'eliminar' => 'Eliminar',
        'subir_archivo' => 'Subir archivo',
        'lbl_tipo_comprobante' => 'Tipo de comprobante',
        'drop_tipo_comprobante' => 'Seleccione el tipo de comprobante',
        'title_tipo_comprobante' => 'Tipo de comprobante',
        'lbl_comprobante' => 'Comprobante',
        'title_cargar_comprobante' => 'Cargar comprobante',
        'carga_correcta' => 'Se ha cargado correctamente el archivo. Para persistir los datos, guarde los cambios.',
        'ver_archivo' => 'Ver archivo',
        'descargar_archivo' => 'Descargar archivo',
        'confirmar_eliminacion' => 'Confirme que realmente desea eliminar los datos',
        'archivo_incorrecto' => 'Archivo incorrecto',
        'archivo_inexistente' => 'Archivo inexistente',
    ),
    //Actividad del docente
    'actividad_docente' => array(
     'placeholder_formato_fecha' => 'AAAA-MMDD',
        'error_no_registro' => 'No existe un registro',
        'alert_no_existe_actividad_principal' => 'No existe una actividad principal',
        'lbl_pregunta_eliminar_actividad_docente' => 'Confirme que realmente desea eliminar la actividad [field]',
        'lbl_info_no_elimina_actividad_curso_principal' => 'La actividad [field] no puede ser removida. <br>Debe seleccionar otra actividad como curso principal',
        'save_curso_principal_modificado' => 'El curso principal se actualizo correctamente',
        'error_curso_principal_modificado' => 'No fue posible actualizar el curso principal',
        'error_insertar' => 'No se pudierón almacenar los datos de la actividad del docente',
        'error_actualizar' => 'No se pudierón actualizar los datos de la actividad del docente',
        'error_eliminar' => 'No se pudo eliminar la actividad [field]. <br>Por favor intente más tarde',
        'succesfull_insertar' => 'Los datos datos de la actividad del docente se almacenarón correctamente',
        'succesfull_actualizar' => 'Los datos de la actividad del docente se actualizarón correctamente',
        'succesfull_eliminar' => 'Los datos de la actividad [field] fueron removidos correctamente',
        'tl_titulo' => 'Actividad del docente',
        'stl_actividad_salud' => 'Actividad en salud',
        'stl_actividad_docente' => 'Actividad del docente',
        'tab_actividad_ad' => 'Actividad del docente',
        'lbl_actividad_di' => 'Desarrollo de investigación',
        'lbl_actividad_eps' => 'Ejercicio profesional en salud',
        'lbl_anios_dad' => 'Años dedicados a la actividad docente',
        'lbl_ejercicio_pd' => 'Ejercicio predominante como docente',
        'lbl_curso_principal' => 'Curso principal que imparte el profesor/a',
        'text_name_curso_imparte' => 'Nombre del curso',
        'btn_add_cp' => 'Asignar curso principal',
        'btn_guardar_cp' => 'Guardar curso principal',
        'btn_actualizar_cp' => 'Actualizar curso principal',
        'btn_add_new_actividad' => 'Agregar nueva actividad',
        'btn_add_investigacion' => 'Agregar investigación',
        'lbl_tipo_actividad_docente' => 'Tipo de actividad',
        'lbl_curso' => 'Nombre del curso',
        'drop_curso' => 'Selecciona nombre del curso',
        'lbl_rol_desempenia' => 'Rol que desempeña como profesor/tutor',
        'drop_rol_desempenia' => 'Seleccione rol que desempeña',
        'lbl_institucion_edu_avala' => 'Institución educativa que avala',
        'drop_institucion_edu_avala' => 'Seleccione institución educativa que avala',
        'lbl_recibe_pago_extra' => '¿Recibe pago extra por la institución que avala?',
        'lbl_licenciatura' => 'Licenciatura',
        'drop_licenciatura' => 'Seleccione licenciatura',
        'lbl_modalidad' => 'Modalidad',
        'drop_modalidad' => 'Seleccione modalidad',
        'lbl_anio_que_impartio_curso' => 'Año que se impartió',
        'lbl_duracion' => 'Duración',
        'radio_duracion_horas' => 'Hora(s)',
        'radio_duracion_fecha' => 'Fecha(s)',
        'lbl_duracion_fecha_inicio' => 'Fecha de inicio',
        'lbl_duracion_fecha_final' => 'Fecha de termino',
        'drop_tipo_comprobante' => 'Seleccione el tipo de comprobante',
        'title_tipo_comprobante' => 'Tipo de comprobante',
        'lbl_tipo_comprobante' => 'Tipo de comprobante',
        'title_cargar_comprobante' => 'Cargar comprobante',
        'lbl_comprobante' => 'Comprobante',
        'lbl_modulo' => 'Módulo',
        'drop_modulo' => 'Seleccione módulo',
        'lbl_periodo' => 'Período',
        'lbl_especialidad' => 'Especialidad',
        'drop_especialidad' => 'Seleccione una especialidad',
        'lbl_anio_fungio' => 'Año en que fungió',
        'lbl_nombre_materia' => 'Nombre de la materia que impartió',
        'text_nombre_materia' => 'Nombre de la materia',
        'lbl_area' => 'Área',
        'drop_area' => 'Seleccione área',
        'drop_tipo_formacion_profesional' => 'Seleccione tipo de formación profesional',
        'lbl_tipo_formacion_profesional' => 'Formación profesional',
        'lbl_nombre_material_elaborado' => 'Nombre del material elaborado',
        'ph_material_elaborado' => 'Nombre del material',
        'lbl_tipo_material' => 'Tipo de material elaborado',
        'drop_tipo_material' => 'Seleccione tipo de material',
        'lbl_tipo_participacion' => 'Tipo de participación',
        'drop_tipo_participacion' => 'Seleccione tipo de participación',
        'lbl_tipo_curso' => 'Tipo de curso',
        'drop_tipo_curso' => 'Seleccione tipo de curso',
        'lbl_folio' => 'Folío constancia',
        'text_folio_constancia' => 'Folío',
        'tab_titulo_form_prof' => 'Formación profesional',
        'tab_titulo_pro_salud_cur_principal' => 'CP',
        'tab_titulo_pro_salud_actividad' => 'Tipo de actividad',
        'tab_titulo_cedula_prof' => 'Cédula profesional / Complobante',
        'tab_titulo_pro_salud_duracion' => 'Duración',
        'tab_titulo_pro_salud_fecha_inicio' => 'Fecha de inicio',
        'tab_titulo_pro_salud_fecha_fin' => 'Fecha de fin',
        'tab_titulo_pro_salud_anio' => 'Año',
        'tab_titulo_editar' => 'Editar',
        'tab_titulo_eliminar' => 'Eliminar',
    ),
    'investigacion_docente' => array(
        'Texto_de_ayuda_divulgacion' => 'Si selecciona comprobante o foro, deberá cargar un archivo en pdf. Para las demás opciónes debera llenar un formato que generará la ficha bibliografica',
        'texto_ayuda_comprobante' => 'Seleccionar y subir al sistema el tipo de comprobante que se le otorgo en la investigación en formato pdf',
        'tab_titulo_nombre_trabajo_investigacion' => 'Nombre de la investigación',
        'tab_titulo_tipo_investigacion' => 'Tipo de investigación',
        'tab_titulo_cita_bibliografica' => 'Cita bibliografica',
        'tab_titulo_folio' => 'Folio',
        'tab_titulo_editar' => 'Editar',
        'tab_titulo_eliminar' => 'Eliminar',
        'btn_add_new_investigacion' => 'Agregar una investigación',
        'text_sin_cita' => 'Comprobante',
        'text_con_cita' => 'Cita bibliografica',
        'lbl_name_trabajo_investigacion' => 'Nombre del trabajo de investigación',
        'text_name_trabajo_investigacion' => 'Trabajo de investigación',
        'lbl_num_folio' => 'Número de Folio de aceptación de SIRELCIS',
        'txt_num_folio' => 'Folio',
        'lbl_tipo_estudio' => 'Tipo de estudio',
        'drop_tipo_estudio' => 'Seleccione el tipo de estudio',
        'lbl_tipo_participacion' => 'Tipo de participación',
        'drop_tipo_participacion' => 'Seleccione el tipo de participación',
        'lbl_tipo_divulgacion' => 'Tipo de divulgación',
        'drop_tipo_divulgacion' => 'Seleccione el tipo de divulgación',
        'radio_btn_publicacion' => 'Hubo publicación',
        'lbl_tipo_actividad_docente' => 'Tipo de actividad',
        'lbl_tipo_comprobante' => 'Tipo de comprobante',
        'lbl_comprobante' => 'Comprobante',
        'title_cargar_comprobante' => 'Cargar comprobante',
        'drop_tipo_comprobante' => 'Seleccione el tipo de comprobante',
        'title_tipo_comprobante' => 'Tipo de comprobante',
        'error_no_elimino_reg_invest' => 'Error, no se pudo eliminar el registro de investigación',
        'succesfull_eliminar' => 'El registro de investigación fue eliminado correctamente',
        'lbl_bb_libro' => 'Bibliografía',
        'txt_bb_libro' => 'Bibliografía del libro',
        'lbl_bb_revista' => 'Bibliografía',
        'txt_bb_revista' => 'Bibliografía de la revista',
        'insert_investigacion_docente' => 'La información de investigación docente se agrego correctamente',
        'update_investigacion_docente' => 'La información de investigación docente se actualizo correctamente',
        'error_investigacion_docente_insert' => 'No fue posible registrar la información de investigación docente',
        'error_investigacion_docente_update' => 'No fue posible actualizar la información de investigación docente',
    ),
    'designar_validador' => array(
        'titulo_template' => 'Designación de validadores',
        'resp_sin_resultados' => '<div class="jumbotron"><h1>No se encontraron resultados</h1></div>',
        'tab_titulo_unidades' => 'unidades',
        'tab_titulo_designado' => 'Designado',
        'tab_titulo_matricula' => 'matricula',
        'tab_titulo_nombre' => 'Nombre',
        'tab_titulo_seleccionar_validador' => 'Seleccionar validador',
        'tab_categoria_validador' => 'Categoría',
        'tab_delegacion_validador' => 'Delegación',
        'lbl_buscar_otro_usuario' => 'Buscar otro usuario',
        'lbl_matricula' => 'Matrícula: ',
        'lbl_nombre' => 'Nombre(s): ',
        'titulo_nombre' => 'Nombre',
        'titulo_matricula' => 'Matrícula',
        'titulo_paterno' => 'Paterno',
        'titulo_materno' => 'Materno',
        'titulo_adscripcion_clave' => 'Clave de adscripción',
        'titulo_adscripcion_descripcion' => 'Nombre de la adscripción',
        'titulo_categoria_clave' => 'Clave de la categoría',
        'titulo_categoria_descripcion' => 'Nombre de la categoría',
        'lbl_adscripcion' => 'Adscripción: ',
        'lbl_categoria' => 'Categoría: ',
        'lbl_unidad' => 'Unidad',
        'btn_asignar' => 'Asignar',
        'btn_buscar_usuario' => 'Buscar ',
        'txt_buscar_unidad' => 'Buscar unidad',
        'btn_buscar_unidad' => 'Buscar',
        'txt_buscar_matricula' => 'Buscar por matrícula',
        'drop_selecciona_unidad' => 'Buscar',
        'lbl_validador' => 'Candidatos a validador',
        'drop_selecciona_validador' => 'Selecciona validador',
        'drop_selecciona_validador_nulo' => 'Debe seleccionar una opción para asignar validador',
        'opt_otro_validador' => 'Otro validador',
        'lbl_delegacion' => 'Delegación',
        'lbl_no_existe_usuario' => 'El empleado no existe',
        'lbl_status_empleado_cero' => 'El empleado se encuentrá dado de baja del sistema por el momento ',
        'lbl_no_se_encontro_empleado_sied' => 'No se encontraron datos asociados a la matrícula o la delegación.<br>Por favor verifique que la información que ingreso es correcta o que la red se encuentá habilitata.',
        'lbl_fallo_designar_validador' => 'No se pudo designar el validador, por favor intentelo de nuevo.',
        'lbl_no_selecciono_validador' => 'Debe seleccionar un validador',
        'drop_delegacion' => 'Seleccione delegación',
        'li_unidad' => 'Unidad',
        'li_clave_adscripcion' => 'Clave de adscripción',
        'li_matricula' => 'Matrícula',
        'li_emp_nombre' => 'Nombre de empleado',
        'insert_validador_asignacion' => 'La asignación de validador se realizo correctamente',
    ),
    'validador_censo' => array(
        'titulo_template' => 'Validación de censo de profesores',
        'titulo_tab_matricula' => 'Matrícula',
        'titulo_tab_nombre' => 'Nombre',
        'titulo_tab_estado_validacion' => 'Estado de la validación',
        'titulo_tab_fecha_ultimo_estado' => 'Fecha de último estado',
        'titulo_tab_validar' => 'Fecha de último estado',
        'lbl_estado_validacion' => 'Estado de validación',
        'drop_estado_validacion' => 'Filtro por estado de validación',
        'txt_buscar_docentes' => 'Buscar docente',
        'li_matricula' => 'Matrícula',
        'li_emp_nombre' => 'Nombre de empleado',
        'li_clave_adscripcion' => 'Clave de adscripción',
        'li_unidad' => 'Unidad',
    ),
    'direccion_tesis' => array(
        'title' => 'Dirección de tesis',
        't_h_anio' => 'Año en que fue dirigida',
        't_h_nivel_academico' => 'Nivel académico',
        't_h_area' => 'Área',
        'btn_add_new_direccion' => 'Agregar nueva dirección de tesis',
    ),
    'comision_academica' => array(
        'title' => 'Comisión académica',
        't_h_anio' => 'Año en que se emite la carta',
        't_h_anio_' => 'Año',
        't_h_nivel_academico' => 'Nivel académico',
        't_h_area' => 'Área',
        't_h_tipo' => 'Tipo',
        't_h_duracion' => 'Duración',
        't_h_fch_inicio' => 'Fecha inicio',
        't_h_fch_fin' => 'Fecha fin',
        't_h_tipo_curso' => 'Tipo',
        'btn_add_new_comision_academica' => 'Agregar nueva comisión',
    ),
    'error' => array(
        'crear_carpeta' => 'No es posible crear la carpeta, verifique permisos de escritura con administrador.',
        'falta_carga_archivo' => 'Debe subir el archivo antes de continuar con el guardado.'
    ),
    'model' => array(
        'insercion' => 'Se ha insertado correctamente la información.',
        'actualizacion' => 'Se ha actualizado correctamente la información.',
        'eliminacion' => 'Se ha eliminado correctamente.',
        'error' => 'Ocurrió un error, por favor intentelo de nuevo más tarde.',
    ),
	'becas_comisiones' => array(
        'placeholder_formato_fecha' => 'AAAA-MMDD',
        'tabs_becas' => 'Becas',
        'tabs_comisiones' => 'Comisiones',
        'title_becas' => 'Becas',
        'title_comisiones' => 'Comisiones',
        'title_tab_becas_fecha_inicio' => 'Fecha de inicio de la beca',
        'title_tab_becas_fecha_termino' => 'Fecha de fin de la beca',
        'title_tab_becas_clase_beca' => 'Clase de beca',
        'title_tab_becas_motivo_beca' => 'Motivo de la beca',
        'title_tab_becas_beca_interrumpida' => 'Beca interrumpida',
        'title_tab_becas_comprobante' => 'Comprobante',
        'title_tab_becas_eliminar' => 'Eliminar',
        'title_tab_becas_editar' => 'Editar',
        'btn_agregar_beca' => 'Agregar beca',
        'lbl_tipo_comprobante' => 'Tipo de comprobante',
        'lbl_comprobante' => 'Comprobante',
        'drop_tipo_comprobante' => 'Seleccione el tipo de comprobante',
        'title_cargar_comprobante' => 'Cargar comprobante',
        'texto_ayuda_comprobante_beca' => 'Seleccionar y subir al sistema el tipo de comprobante que se le otorgo por la beca en formato pdf',
        'texto_ayuda_comprobante_comision' => 'Seleccionar y subir al sistema el tipo de comprobante que se le otorgo por la comisión en formato pdf',
        'title_tab_comision_fecha_inicio' => 'Fecha de inicio de la comisión',
        'title_tab_comision_fecha_termino' => 'Fecha de fin de la comisión',
        'title_tab_comision_tipo_comision' => 'Comisión',
        'title_tab_comision_comprobante' => 'Comprobante',
        'title_tab_comision_editar' => 'Editar',
        'title_tab_comision_eliminar' => 'Eliminar',
        'btn_agregar_comision' => 'Agregar comisión',
        'lbl_beca_periodo' => 'Periodo de beca',
        'lbl_beca_fecha_inicio' => 'Fecha de inicio de la beca',
        'lbl_beca_fecha_fin' => 'Fecha de fin de la beca',
        'lbl_beca_motivo' => 'Motivo de la beca',
        'lbl_beca_interrumpida' => 'Beca interrumpida',
        'lbl_beca_clase' => 'Clase de beca',
        'drop_beca_interrumpida' => 'Seleccione beca interrumpida',
        'drop_beca_motivo' => 'Seleccione motivo de la beca',
        'drop_beca_clase' => 'Seleccione clase de la beca',
        'lbl_comision_periodo' => 'Periodo de comisión',
        'lbl_comision_fecha_inicio' => 'Fecha de inicio de la comisión',
        'lbl_comision_fecha_fin' => 'Fecha de fin de la comisión',
        'lbl_tipo_comision' => 'Tipo de comisión',
        'lbl_ver_comprobante' => 'Ver comprobante',
        'phl_registro_correcto' => 'El registro se efectuo correctamente',
        'error_guardar' => 'Los datos no se almacenaron. Por favor intentemo más tarde',
        'tab_titulo_editar' => 'Editar',
        'tab_titulo_eliminar' => 'Eliminar',
        'error_eliminar' => 'No se pudo eliminar el archivo. <br>Por favor intente más tarde',
        'succesfull_eliminar' => 'El registro se elimino correctamente',
        'succesfull_actualizar' => 'Los datos se actualizarón correctamente',
    ),
    'material_educativo' => array(
        'placeholder_formato_fecha' => 'AAAA-MMDD',
        'title_material_eduacativo' => 'Material educativo',
        'title_tab_mat_edu_nombre_mat' => 'Nombre del material',
        'title_tab_mat_edu_tipo_mat' => 'Tipo de material',
        'title_tab_mat_edu_anio' => 'Año',
        'title_tab_mat_edu_comprobante' => 'Comprobante',
        'title_tab_mat_edu_tipo_eliminar' => 'Eliminar',
        'tab_titulo_eliminar' => 'Eliminar',
        'tab_titulo_editar' => 'Editar',
        'title_tab_mat_edu_tipo_editar' => 'Editar',
        'btn_agregar_material_eduactivo' => 'Agregar material educativo',
        'lbl_tipo_comprobante' => 'Tipo de comprobante',
        'lbl_comprobante' => 'Comprobante',
        'drop_tipo_comprobante' => 'Seleccione el tipo de comprobante',
        'title_cargar_comprobante' => 'Cargar comprobante',
        'texto_ayuda_comprobante_material' => 'Seleccionar y subir al sistema el tipo de comprobante que se le otorgo por el material educativo en formato pdf',
        'texto_name_material' => 'Nombre del material',
        'lbl_nombre_material' => 'Nombre del material',
        'lbl_tipo_material' => 'Tipo de material',
        'lbl_tipo_material_anio_elaboro' => 'Año que elaboró material educativo',
        'texto_tipo_material_anio_elaboro' => 'Año en que elaboró',
        'drop_tipo_material' => 'Seleccione el tipo de material educativo',

        'drop_cantidad_hojas' => 'Seleccione cantidad de hojas',
        'lbl_cantidad_hojas' => 'Cantidad de hojas',

        'lbl_nombre_unidad' => 'Nombre de la unidad',
        'text_nombre_unidad' => 'Nombre de la unidad',
        'lbl_numero_horas' => 'Número de horas',
        'text_numero_horas' => 'Horas',
        'drop_numero_horas' => 'Seleccione número de horas',
        'phl_registro_correcto' => 'El registro se guardo correctamente',
        'phl_registro_actualizado_correcto' => 'El registro se actualizo correctamente',
        'error_guardar' => 'Los datos no se almacenaron. Por favor intentemo más tarde',
        'lbl_nombre_objeto_aprendizaje' => 'Nombre del objeto de aprendizaje',
        'text_nombre_objeto_aprendizaje' => 'Objeto de aprendizaje',
        'lbl_ver_comprobante' => 'Ver comprobante',
        'error_eliminar' => 'No se pudo eliminar el archivo. <br>Por favor intente más tarde',
        'succesfull_eliminar' => 'El registro se elimino correctamente',
        'succesfull_actualizar' => 'Los datos de material educativo se actualizarón correctamente',
    ),
);




//$lang['interface_registro_profesor'] = 'Impresión de texto prueba';
//$lang['interface_otro_mensaje'] = '&lsaquo; Primero';
