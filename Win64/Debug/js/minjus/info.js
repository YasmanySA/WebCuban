var url_login =
    "https://certificaciones.minjus.gob.cu/sysmin_jus/es-ES/minjus/tracker/login";
var url_tracker =
    "https://certificaciones.minjus.gob.cu/sysmin_jus/es-ES/minjus/tracker/";
var tracker_DynaDocs = "tracker_DynaDocs";
var INPUT_DOCUMENT =
    "tracker_Show?CTO_UID_OBJ=7745944765ce5972287f1f0082113289&CTO_TYPE_OBJ=INPUT_DOCUMENT";
var DYNAFORM =
    "tracker_Show?CTO_UID_OBJ=2473970175d10d8284601e4012429159&CTO_TYPE_OBJ=DYNAFORM";

function getInfo() {
    var page_dynaform = window.location.href.includes(
        DYNAFORM
    );
    var isLoginPage = window.location.href.includes(
        url_login
    );

    var page_DOCUMENT = window.location.href.includes(
        INPUT_DOCUMENT
    );

    if (page_DOCUMENT) {

        var state= "Obteniendo Certificacion "
        var StyleClass= "Info"




        return {state: state, StyleClass: StyleClass};


    }

    if (page_dynaform) {
        var state = document.querySelector('#solicitud_estado_denominacion .label-text')?.textContent.trim();
        var details = document.querySelector('#form\\[state-details\\]')?.value;
        var type_cert = document.querySelector('#form\\[solicitud_tipo_label\\]')?.value;
        // var name_register = document.querySelector('#form\\[solicitud_registro_civil_label\\]')?.value;


        return {state: state, details: details, type_cert: type_cert, StyleClass: "Info"};


    }


    // Si estamos en la página de login
    if (isLoginPage) {
        var error = document.getElementById("temporalMessageERROR");
        // Si existe el div de error
        if (error) {
            var text = error.innerText.trim();

            if (text === "ERROR: El caso no existe") {
                return {
                    state: "Por favor, el caso no existe. Revise de nuevo.",
                    StyleClass: "Danger",
                };
            }

            if (text === "ERROR: El PIN es inválido") {
                return {
                    state: "El PIN es incorrecto. Revise bien.",
                    StyleClass: "Danger",
                };
            }

            // Si hay error pero no coincide con los mensajes anteriores
            return {state: "OK", StyleClass: "Warning"};
        } else {
            // Si no hay error visible
            return {
                state: "Todavía no se han enviado datos al formulario",
                StyleClass: "Info",
            };
        }
    } else {
        // Si no estamos en la página de login
        return {state: "Entrando al sistema", StyleClass: "Success"};
    }




}

getInfo()




// 7361438    Matrimonio

