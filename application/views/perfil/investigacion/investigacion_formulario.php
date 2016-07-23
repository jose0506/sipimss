<?php defined('BASEPATH') OR exit('No direct script access allowed');
?>
    <script>
        var nextinput = 0;
        var nextinput = 0;
        control_generados = new Object();//Control de elementos agregados
        var htipos_bibliografia = new Object();
        //0-> Cantidad, de objetos permitidos, numericamente, es decir 0 = 0; 1 = 1; 11 = 11; y -1 = n-cantidad indefinida; |
        //1-> Nombre de las propiedades, las contiene el boton agregar, es importante "sin espacios ni caractres especiales" |
        //2-> Id del "div" que mostrará los cambios |
        //3-> Id del  boton agregar  |
        //4-> Nombre de los input separados por $ y al final |
        //5-> placeholder de los input, debe ser de igual tamaño de argumentos que el punto 4, separado por $ y al final |
        //6-> Titulo del parrafo o del "li" y al final |
        htipos_bibliografia["autor"] = "-1|autor|div_autores_1|btn_add_autor|autornom_$autorap_$|Nombre(s)$Apellido paterno$|Agregar autor";
        htipos_bibliografia["titulolibro"] = "1|titulolibro|div_tit_lib|btn_add_tit_libro|titulolibro_$|Titulo del libro$|Titulo de libro";
        htipos_bibliografia["edicion"] = "1|edicion|div_edicion_lib|btn_add_edicion_lib|edicionlib_$|Agregar edición$|Edición";
        htipos_bibliografia["editor"] = "1|editor|div_editor_lib|btn_add_editor_lib|editorlib_$|Agregar editor$|Editor";
        htipos_bibliografia["lugaredicion"] = "1|lugaredicion|div_lugar_edicion_lib|btn_add_lugar_edicion_lib|lugaredicionlib_$|Agregar lugar de edició$|Lugar de edición";
        htipos_bibliografia["editorial"] = "1|editorial|div_editorial_lib|btn_add_editorial_lib|editoriallib_$|Agregar editorial$|Editorial";
        htipos_bibliografia["anio"] = "3|anio|div_anio_lib|btn_add_anio_lib|aniolib_$|Agregar año de edición$|Agregar año|";
    </script>
    <div class="list-group">
        <div class="list-group-item">
                    <div class="panel-body">
                            <?php if(isset($error)){ ?>
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                           <?php echo html_message($error, $tipo_msg); ?>
                                </div>
                            </div>
                            <?php } ?>
                            <div class='row'>
                                <div class="col-md-3"></div>
                                <div class="col-md-6">
                                    <label for='lbl_tipo_actividad_docente' class="control-label">
                                        <?php echo $string_values['lbl_tipo_actividad_docente']; ?>
                                   </label>
                                   <div class="input-group">
                                       <span class="input-group-addon">
                                           <span class="glyphicon glyphicon-user"> </span>
                                       </span>
                                       <?php 
                                           echo $this->form_complete->create_element(array('id' => 'ctipo_actividad_docente', 'type' => 'dropdown', 
                                               'options' => $ctipo_actividad_docente, 
                                               'first' => array('' => 'Selecciona tipo de actividad'), 
                                               'value' => '',
                                               'attributes' => array('name' => 'categoria', 'class' => 'form-control', 
                                               'placeholder' => 'Categoría', 'data-toggle' => 'tooltip', 'data-placement' => 'top', 
                                               )
                                          )); 
                                       ?>
                                    </div>
                                    <?php   echo form_error_format('ctipo_actividad_docente'); ?>
                                </div>
                                <div class="col-md-3"></div>
                            </div>
                            <div class='row'>
                                <!--<div class="form-group col-xs-10 col-md-10 col-md-offset-1 col-md-offset-1">-->
                                <div class="col-md-6">
                                    <label for='lbl_name_trabajo_investigacion' class="control-label">
                                        <b class="rojo">*</b>
                                         <?php echo $string_values['lbl_name_trabajo_investigacion']; ?>
                                    </label>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-education"> </span>
                                        </span>
                                        <?php 
                                            echo $this->form_complete->create_element(array('id' => 'nombre_investigacion', 
                                                'type' => 'text', 
                                                'value' => (isset($nombre_investigacion)) ? $nombre_investigacion : '',
                                                'attributes' => array( 
                                                'class' => 'form-control', 
                                                'placeholder' => $string_values['text_name_trabajo_investigacion'], 
                                                'data-toggle' => 'tooltip', 
                                                'data-placement' => 'top', 
                                                'title' => $string_values['text_name_trabajo_investigacion'] ))); 
                                        ?>
                                   </div>
                                   <?php   echo form_error_format('nombre_investigacion'); ?>
                                </div>
                                <div class="col-md-6">
                                    <label for='txt_num_folio' class="control-label">
                                        <b class="rojo">*</b>
                                         <?php echo $string_values['txt_num_folio']; ?>
                                    </label>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-education"> </span>
                                        </span>
                                        <?php 
                                            echo $this->form_complete->create_element(array('id' => 'folio_investigacion', 
                                                'type' => 'text', 
                                                'value' => (isset($folio_investigacion)) ? $folio_investigacion : '',
                                                'attributes' => array( 
                                                'class' => 'form-control', 
                                                'placeholder' => $string_values['txt_num_folio'], 
                                                'data-toggle' => 'tooltip', 
                                                'data-placement' => 'top', 
                                                'title' => $string_values['txt_num_folio'] ))); 
                                        ?>
                                   </div>
                                   <?php   echo form_error_format('folio_investigacion'); ?>
                                </div>
                            </div>
                            <div class='row'>
                                <div class="col-md-6">
                                    <label for='lbl_tipo_estudio' class="control-label">
                                        <b class="rojo">*</b>
                                         <?php echo $string_values['lbl_tipo_estudio']; ?>
                                    </label>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-oil"> </span>
                                        </span>
                                        <?php 
                                            echo $this->form_complete->create_element(array('id' => 'ctipo_estudio', 'type' => 'dropdown', 
                                                'options' => $ctipo_estudio, 
                                                'first' => array('' => $string_values['drop_tipo_estudio']), 
                                                'value' => (isset($tip_estudio_cve))?$tip_estudio_cve:'',
                                                'attributes' => array('name' => 'categoria', 'class' => 'form-control', 
                                                'placeholder' => 'Categoría', 'data-toggle' => 'tooltip', 'data-placement' => 'top', 
                                                'title' => $string_values['lbl_tipo_estudio'] ))); 
                                        ?>
                                   </div>
                                   <?php   echo form_error_format('ctipo_estudio'); ?>
                                </div>
                                <div class="col-md-6">
                                    <label for='lbl_tipo_participacion' class="control-label">
                                        <b class="rojo">*</b>
                                         <?php echo $string_values['lbl_tipo_participacion']; ?>
                                    </label>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-oil"> </span>
                                        </span>
                                        <?php 
                                            echo $this->form_complete->create_element(array('id' => 'ctipo_participacion', 'type' => 'dropdown', 
                                                'options' => $ctipo_estudio, 
                                                'first' => array('' => $string_values['drop_tipo_participacion']), 
                                                'value' => (isset($tip_participacion_cve))?$tip_participacion_cve:'',
                                                'attributes' => array('name' => 'categoria', 'class' => 'form-control', 
                                                'placeholder' => 'Categoría', 'data-toggle' => 'tooltip', 'data-placement' => 'top', 
                                                'title' => $string_values['lbl_tipo_participacion'] ))); 
                                        ?>
                                   </div>
                                   <?php   echo form_error_format('ctipo_participacion'); ?>
                                </div>
                            </div>
                        <br>
                            <div class='row'>
                                <div class='col-md-6 col-sm-6 col-lg-6' >
                                    <label for='lbl_tipo_divulgacion' class="control-label">
                                        <b class="rojo">*</b>
                                         <?php echo $string_values['lbl_tipo_divulgacion']; ?>
                                    </label>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-oil"> </span>
                                        </span>
                                        <?php 
                                            echo $this->form_complete->create_element(array('id' => 'cmedio_divulgacion', 'type' => 'dropdown', 
                                                'options' => $cmedio_divulgacion, 
                                                'first' => array('' => $string_values['drop_tipo_divulgacion']), 
                                                'value' => (isset($tip_estudio_cve))?$tip_estudio_cve:'',
                                                'attributes' => array('name' => 'categoria', 'class' => 'form-control', 
                                                'placeholder' => 'Categoría', 'data-toggle' => 'tooltip', 'data-placement' => 'top', 
                                                'title' => $string_values['lbl_tipo_divulgacion'],
                                                'onchange' =>  "funcion_mostrar_tipo_publicacion(this)"
                                                ))); 
                                        ?>
                                   </div>
                                   <?php   echo form_error_format('cmedio_divulgacion'); ?>
                                </div>
                                <div class='col-md-6 col-sm-6 col-lg-6' >
                                    <span id="help-tipo-comprobante" class="help-block"><?php echo $string_values['Texto_de_ayuda_divulgacion'];?></span>
                                </div>
                            </div>
                            
                            
                    </div>
                </div>
                <div id="div_comprobante" class="list-group-item" style="display: none">
                    <!--Mostrará comprobante -->
                    <div class='row'>
                         <div class="col-md-6">
                                <label for='radio_duracion_fecha' class="control-label">
                                    <?php echo $string_values['lbl_tipo_comprobante']; ?>
                                </label>
                                 <?php 
                                    echo $this->form_complete->create_element(array('id' => 'ctipo_comprobante', 
                                        'type' => 'dropdown', 
                                        'options' => $ctipo_comprobante, 
                                        'first' => array('' => $string_values['drop_tipo_comprobante']), 
                                        'value' => '',
                                        'class'=>'form-control',
                                        'attributes' => array('class' => 'form-control', 'aria-describedby'=>"help-tipo-comprobante",
                                        'placeholder' => $string_values['title_tipo_comprobante'], 'data-toggle' => 'tooltip', 'data-placement' => 'top', 
                                        'title' => $string_values['title_tipo_comprobante'] ))); 
                                ?>
                                <?php echo form_error_format('ctipo_comprobante'); ?>
                        </div>
                        <div class="col-md-6">
                            <!--<li class="list-group-item">-->
                                <!--<input id="archivo-comprobante" type="file" name="file" class="file" accept="application/pdf">Maneja la carga del archivo-->
                                <!--<input type="file" name="userfile" id="userfile" accept="application/pdf">-->
                                <input type="file" id="userfile" name="userfile" class ="userfile" accept="application/pdf">

                                <label for='lbl_comprobante' class="control-label">
                                    <?php echo $string_values['lbl_comprobante']; ?>
                                </label>
                                <div class="input-group">                                           
                                     <?php
                                        echo $this->form_complete->create_element(
                                        array('id'=>'text_comprobante','type'=>'text',
                                                'value' => '',
                                                'attributes'=>array(
                                                'class'=>'form-control',
                                                'placeholder'=>$string_values['title_cargar_comprobante'],
                                                'min'=> '0',
                                                'max'=> '100',
                                                'data-toggle'=>'tooltip',
                                                'data-placement'=>'bottom',
                                                'title'=>$string_values['title_cargar_comprobante'],
                                                'readonly'=>'readonly',
                                                )
                                            )
                                        );
                                     ?>

                                  <div class="input-group-btn">
                                    <button type="button" aria-expanded="false" class="btn btn-default browse">
                                        <span aria-hidden="true" class="glyphicon glyphicon-file"> </span>
                                    </button>
                                    <a role="button" tabindex="0" data-container="body" data-trigger="focus" data-toggle="popover" data-placement="top" data-title="Comprobante" data-content="Aquí usted puede seleccionar el tipo de comprobante que se le otorgo en el curso y posteriormente subirlo al sistema para su verificación" class="btn btn-default" data-original-title="" title="">
                                        <span aria-hidden="true" class="glyphicon glyphicon-question-sign"> </span>
                                    </a>
                                  </div>
                                </div><span id="help-tipo-comprobante" class="help-block"><?php echo $string_values['texto_ayuda_comprobante'];?></span>
                                <?php echo form_error_format('text_comprobante'); ?>
                        </div>
                    </div>
                </div>
                <div id="div_libro" class="list-group-item" style="display: none">
                    <div class="alert alert-danger" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                        El campo Nombre de comprobante es obligatorio.
                    </div>
                    <div class='row'>
                         <div class="col-md-6" ><!--Columna 1-->
                             <!--Columna 1_1 "3|autor|div_autores_1|btn_add_autor|autornom_$autorap_$|Nombre(s)$Apellido paterno$"-->
                            <div class='row'>
                                <div class="col-md-12" id="div_autores_1">
                                    <button type="button" class="btn btn-link btn-sm" id="btn_add_autor" data-keyname ="autor" onclick="funcion_agregar_elemento(this);" >Agregar autor</button>
                                </div>
                            </div>
                             <!--Columna 1_2 "1|titulolibro|div_tit_lib|btn_add_tit_libro|titulo_li_$|Titulo del libro$";-->
                            <div class='row'>
                                <div class="col-md-12" id = 'div_tit_lib'>
                                    <button type="button" class="btn btn-link btn-sm" id="btn_add_tit_libro" data-keyname ="titulolibro" onclick="funcion_agregar_elemento(this);" >Agregar titulo del libro</button>
                                </div>
                            </div>
                             <!--Columna 1_3 "1|edicion|div_edicion_lib|btn_add_edicion_lib|edicionlib_$|Agregar edición$|Edición";-->
                            <div class='row'>
                                <div class="col-md-12" id = 'div_edicion_lib'>
                                    <button type="button" class="btn btn-link btn-sm" id="btn_add_edicion_lib" data-keyname ="edicion" onclick="funcion_agregar_elemento(this);" >Agregar edición</button>
                                </div>
                            </div>
                             <!--Columna 1_4 "1|editor|div_editor_lib|btn_add_editor_lib|editorlib_$|Agregar editor$|Editor";-->
                            <div class='row'>
                                <div class="col-md-12" id = 'div_editor_lib'>
                                    <button type="button" class="btn btn-link btn-sm" id="btn_add_editor_lib" data-keyname ="editor" onclick="funcion_agregar_elemento(this);" >Agregar editor</button>
                                </div>
                            </div>
                             
                         </div>
                         <div class="col-md-6">
                             <!--Columna 2_1 "1|lugaredicion|div_lugar_edicion_lib|btn_add_lugar_edicion_lib|lugaredicionlib_$|Agregar lugar de edició$|Lugar de edición";-->
                            <div class='row'>
                               <div class="col-md-12" id = 'div_lugar_edicion_lib'>
                                   <button type="button" class="btn btn-link btn-sm" id="btn_add_lugar_edicion_lib" data-keyname ="lugaredicion" onclick="funcion_agregar_elemento(this);" >Agregar lugar de edició</button>
                               </div>
                            </div>
                             <!--Columna 2_2 "1|editorial|div_editorial_lib|btn_add_editorial_lib|editoriallib_$|Agregar editorial$|Editorial";-->
                            <div class='row'>
                               <div class="col-md-12" id = 'div_editorial_lib'>
                                   <button type="button" class="btn btn-link btn-sm" id="btn_add_editorial_lib" data-keyname ="editorial" onclick="funcion_agregar_elemento(this);" >Agregar editorial</button>
                               </div>
                            </div>
                             <!--Columna 2_3 "1|anio|div_anio_lib|btn_add_anio_lib|aniolib_$|Agregar año de edición$|Agregar año";-->
                            <div class='row'>
                               <div class="col-md-12" id = 'div_anio_lib'>
                                   <button type="button" class="btn btn-link btn-sm" id="btn_add_anio_lib" data-keyname ="anio" onclick="funcion_agregar_elemento(this);" >Agregar año de edición</button>
                               </div>
                            </div>
                             
                        </div>
                    </div>
                </div>
                    
                <div id="div_revista" class="list-group-item" style="display: none">
                    <div class='row'>
                         <div class="col-md-6">
                            <label for='lbl_libro' class="control-label">
                                Bibliografia de revista
                            </label>
                         </div>
                    </div>
                </div>
        
                <?php if(isset($pie_pag)){ echo $pie_pag; }//Carga boton para guardar datos?>
    </div>