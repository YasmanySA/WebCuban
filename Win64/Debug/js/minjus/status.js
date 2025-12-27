function getstatus() {

    var url_tracker =
        "https://certificaciones.minjus.gob.cu/sysmin_jus/es-ES/minjus/tracker/";

    var DYNAFORM =
        "tracker_Show?CTO_UID_OBJ=2473970175d10d8284601e4012429159&CTO_TYPE_OBJ=DYNAFORM";

    var idtable = "table[cDlXUno1dllwbMKwazVwTFE0SnFyMFhYbW9jUjAyNVBtWXFqZDRB]";
    var get_table = document.querySelector(`#${CSS.escape(idtable)}`);

    if (!get_table) {
        return { state: "Tabla no encontrada", StyleClass: "Error" };
    }

    var filas = get_table.querySelectorAll('tr[class^="Row"]');
    var rows_count = filas.length;

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

    // 🔹 CASO 2 FILAS
    if (rows_count === 2 && enlaces.length > 0) {

        setTimeout(() => {
            window.location.href = url_tracker + enlaces[0].href;
        }, 3000);

        return {
            action: "open",
            state: "Certificación disponible para descargar",
            StyleClass: "Success"
        };
    }

    // 🔹 CASO 1 FILA
    if (rows_count === 1 && enlaces.length > 0) {

        if (enlaces[0].href === DYNAFORM) {
            window.location.href = url_tracker + enlaces[0].href;
        }

        return {
            state: "Formulario pendiente",
            StyleClass: "Warning"
        };
    }

    return {
        state: "Sin resultados",
        StyleClass: "Info"
    };
}

getstatus();
