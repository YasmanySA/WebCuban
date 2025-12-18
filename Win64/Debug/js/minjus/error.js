function getError() {
    const isLoginPage = window.location.href.includes("/sysmin_jus/es-ES/minjus/tracker/login");
    const div = document.getElementById("temporalMessageERROR");

    if (isLoginPage && div) {
        return { state: "ERROR", msg: div.textContent.trim() };
    }
    else if (isLoginPage && !div) {
        return { state: "WAIT", msg: "Todavía no se han enviado datos al formulario" };
    }
    else {
        var log ={ state: "OK" };


        return log
    }
}

// ✅ Así debes usarla:
var result = getError();
console.log(result);
