function getstatus() {


    var url_login =
        "https://certificaciones.minjus.gob.cu/sysmin_jus/es-ES/minjus/tracker/login";
    var url_tracker =
        "https://certificaciones.minjus.gob.cu/sysmin_jus/es-ES/minjus/tracker/";
    var tracker_DynaDocs = "tracker_DynaDocs";
    var INPUT_DOCUMENT =
        "tracker_Show?CTO_UID_OBJ=7745944765ce5972287f1f0082113289&CTO_TYPE_OBJ=INPUT_DOCUMENT";
    var DYNAFORM =
        "tracker_Show?CTO_UID_OBJ=2473970175d10d8284601e4012429159&CTO_TYPE_OBJ=DYNAFORM";


    var idtable = "table[cDlXUno1dllwbMKwazVwTFE0SnFyMFhYbW9jUjAyNVBtWXFqZDRB]";

// Obtener la tabla por ID (con escape)
    var get_table = document.querySelector(`#${CSS.escape(idtable)}`);

    if (!get_table) {
        console.log("Tabla no encontrada");
    } else {

        // Contar filas Row1, Row2, RowX...
        var filas = get_table.querySelectorAll('tr[class^="Row"]');
        var rows_count = filas.length;

        console.log("Filas encontradas:", rows_count);

        // Capturar todos los enlaces "Vista"
        var enlaces = [];

        filas.forEach((fila, index) => {
            var enlace = fila.querySelector("a.tableOption");
            if (enlace) {
                enlaces.push({
                    fila: index + 1,
                    href: enlace.getAttribute("href")
                });
            }
        });

        console.log("Enlaces encontrados:", enlaces);

        // Lógica según cantidad de filas
        if (rows_count === 2) {
            window.location.href = url_tracker + enlaces [0].href;

            console.log("Certificación encontrada (2 filas)");
            // console.log("Primer enlace:", enlaces[0].href);
            // console.log("Segundo enlace:", enlaces[1].href);

        } else if (rows_count === 1) {

            if (enlaces [0].href === DYNAFORM) {

                window.location.href = url_tracker + enlaces [0].href;


            }


        } else {
            console.log("No hay filas Row");
        }
    }
}

getstatus()