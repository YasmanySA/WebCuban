var url_login =
  "https://certificaciones.minjus.gob.cu/sysmin_jus/es-ES/minjus/tracker/login";


function navigate() {
  window.location.href = url_login;
//   if (window.location.href === url_login) {
    return { state: "Aplicacion lista.", StyleClass: "Info" };
//   }
}