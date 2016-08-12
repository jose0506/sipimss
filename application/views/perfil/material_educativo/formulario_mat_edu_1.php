<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<div class='row'>
    <div class="col-sm-6 col-md-6 col-lg-6">
        <label for='lbl_cantidad_hojas' class="control-label">
            <b class="rojo">*</b>
            <?php echo $string_values['lbl_cantidad_hojas']; ?>
        </label>
        <div class="input-group">
            <span class="input-group-addon">
                <span class="glyphicon glyphicon-user"> </span>
            </span>
            <?php
            echo $this->form_complete->create_element(array('id' => 'cantidad_hojas', 'type' => 'dropdown',
                'options' => $cantidad_hojas,
                'first' => array('' => $string_values['drop_cantidad_hojas']),
                'value' => (isset($nom_tipo_material)) ? $nom_tipo_material : '',
                'attributes' => array('class' => 'form-control',
                    'placeholder' => $string_values['lbl_tipo_material'],
                    'data-toggle' => 'tooltip', 'data-placement' => 'top',
                    'title' => $string_values['lbl_tipo_material'],
            )));
            ?>
        </div>
        <?php echo form_error_format('cantidad_hojas'); ?>
    </div>
</div>
<input type="hidden" name="tipo_material_regreso" value="<?php echo (isset($id_tipo_material)) ? $id_tipo_material : '0'; ?>">