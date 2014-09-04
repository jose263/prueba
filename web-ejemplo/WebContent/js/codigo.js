//Ya que el código esta separado (en otro fichero fuera del HTML)
// lo voy a separar todo
// y voy a poner los eventos desde aqui
// me invento una funcion main

function testAjax() {
	ajax = new XMLHttpRequest();
	ajax.open("POST", "http://localhost:8080/web-ejemplo/rest/adios/Jose", true);
	// tengo que preparar la respuesta
	ajax.onreadystatechange = responder;
	// tengo que hacer la peticion
	ajax.send();

}
function responder() {
	if (ajax.readyState == 4 && ajax.status == 200) {

		var resultado = ajax.responseText;
		alert(resultado);
	}
}
function main() {
	// aqui voy a enlazar todos los eventos
	var boton1 = document.getElementById("probarAJAX");
	boton1.onclick = testAjax;
}

// se va ejecutar cuando se cargue la pagina
window.onload = main;
