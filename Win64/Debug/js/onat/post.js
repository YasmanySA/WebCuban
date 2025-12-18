function loginONAT(usuario, contrasena) {
    Asegurarse de que el DOM esté cargado
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', () => loginONAT(usuario, contrasena));
        return;
    }

    // Intentar ubicar y rellenar los campos
    var userInput = document.querySelector('input[name="code"]');
    var passInput = document.querySelector('input[name="pass"]');
    var loginBtn = document.querySelector('#login');

    if (userInput && passInput && loginBtn) {
        userInput.value = usuario;
        passInput.value = contrasena;
        loginBtn.click();
        return  {"login": true}
        return console.log( {"login": true})
    } else {
        console.warn('No se pudieron encontrar los elementos del formulario. Asegúrate de estar en la página de inicio de sesión de ONAT.');
    }
}

    loginONAT('91091525329', '*Comoda2025');