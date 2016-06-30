$(function () {

    $('#btn_agregar_actividad_modal').on('click', function () {
        var isReadOnly = $('.nameFields').prop('readonly');
        $('.nameFields').prop('readonly', !isReadOnly);
        var a = hrutes['get_data_ajax_actividad'];
        var cad_split = a.split(":");
//        data_ajax(site_url + '/perfil    /get_data_ajax_actividad/', '#form_actividad_docente', '#get_data_ajax_actividad');
        data_ajax(site_url + '/' + cad_split[0] + '/get_data_ajax_actividad_modal', '#form_actividad_docente_general', '#modal_content');
//        data_ajax(site_url + '/' + cad_split[0] + '/get_data_ajax_actividad_modal', '#form_actividad_docente_general', '#modal_content');

    });

    $('#btn_guardar_actividad').on('click', function () {//Llama agetget_"data_ajax_actividad" para guardar información
        var isReadOnly = $('.nameFields').prop('readonly');
        $('.nameFields').prop('readonly', !isReadOnly);
        var a = hrutes['get_data_ajax_actividad'];
        var cad_split = a.split(":");
//        data_ajax(site_url + '/perfil    /get_data_ajax_actividad/', '#form_actividad_docente', '#get_data_ajax_actividad');
        data_ajax(site_url + '/' + cad_split[0] + '/' + cad_split[1], cad_split[2], cad_split[3]);
    });
//    $('#btn_guardar_actividad_especifica').on('click', function() {//Llama agetget_"data_ajax_actividad" para guardar información
//        var x = document.getElementById("#btn_guardar_actividad_especifica");
//        alert('aa' + x.value);
//        //data_ajax(site_url + '/perfil/get_data_ajax_actividad_cuerpo_modal/1', '#form_actividad_docente_especifico', '#info_actividad_docente');
//    });
    $('#datetimepicker1').datetimepicker({
        icons: {
            time: "fa fa-clock-o",
            date: "fa fa-calendar",
            up: "fa fa-arrow-up",
            down: "fa fa-arrow-down"
        }
    });
    $('#datetimepicker1').datetimepicker({
        icons: {
            time: "fa fa-clock-o",
            date: "fa fa-calendar",
            up: "fa fa-arrow-up",
            down: "fa fa-arrow-down"
        }
    });

});

//document.getElementById("tipo_actividad_docente").onchange = function() {
//    tipo_actividad_docente();
//};

//function tipo_actividad_docente() {
//    var x = document.getElementById("tipo_actividad_docente");
//}

function funcion_guargar(index) {
    data_ajax(site_url + '/perfil/get_data_ajax_actividad_cuerpo_modal/' + index + '/1', '#form_actividad_docente_especifico', '#info_actividad_docente');
}
function myFunctionActividad() {
    var x = document.getElementById("tipo_actividad_docente");
    data_ajax(site_url + '/perfil/get_data_ajax_actividad_cuerpo_modal/' + x.value + '/0', '#form_actividad_docente_especifico', '#info_actividad_docente');
}

function mostrar_horas_fechas(horas) {
    if (horas == 'none') {
        document.getElementById('div_horas_dedicadas').style.display = 'none';
        document.getElementById('fecha_inicio').style.display = 'block';
        document.getElementById('fecha_fin').style.display = 'block';
    } else {
        document.getElementById('div_horas_dedicadas').style.display = 'block';
        document.getElementById('fecha_inicio').style.display = 'none';
        document.getElementById('fecha_fin').style.display = 'none';
    }
}
function verifica_hora_extras() {
    var val = document.getElementById('duracion').is(':checked');
    alert('qué ' + val);

}
$(document).ready(function () {
    $("#duracion").click(function () {
        if ($("#radio").is(':checked')) {
            alert("Está activado");
        } else {
            alert("No está activado");
        }
    });
});