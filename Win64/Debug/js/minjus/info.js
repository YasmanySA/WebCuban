


function getInfo() {

    var state = document.querySelector('#solicitud_estado_denominacion .label-text')?.textContent.trim();
    var Details = document.querySelector('#form\\[state-details\\]')?.value;
    var type_cert = document.querySelector('#form\\[solicitud_tipo_label\\]')?.value;
    // var name_register = document.querySelector('#form\\[solicitud_registro_civil_label\\]')?.value;




    return { state: state, Details: Details, type_cert:type_cert};


}
getInfo()




// 7361438    Matrimonio

