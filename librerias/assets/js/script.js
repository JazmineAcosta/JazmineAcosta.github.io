$(function () {
  var pruebas = $(".pruebas"),
    nivelesColores = $("#nivelesColores"),
    boton = $("button"),
    inputs = $("input"),
    inputvalidarComtrasena = $("#validarComtrasena"),
    inputRepetirvalidarComtrasena = $("#repetirvalidarComtrasena"),
    fieldset = $("fieldset"),
    nivel;

  function devuelveNivel(esteInput, evento) {
    var nivelBajo = 8,
      nivelMedio = 10,
      nivelAlto = 12,
      numCaracteres = esteInput.val().length,
      contieneLetraMayuscula = /[A-Z]/.test(esteInput.val()),
      contieneLetraMinuscula = /[a-z]/.test(esteInput.val()),
      contieneNumero = /\d{2,}/.test(esteInput.val()),
      contieneCaracterEspecial = /[~¡@#$%^*()\-_+={}[\]|:;"<>,.?]/.test(
        esteInput.val()
      ),
      estaId = esteInput.attr("id"),
      espanNivelesColores = $(".spanNivelesColores");
    evento.stopPropagation();
    limpiarError();
    if (estaId === "validarComtrasena") {
      if (numCaracteres > 0 && numCaracteres <= nivelBajo) {
        nivel = "Insegura";
        espanNivelesColores.removeClass().addClass("spanNivelesColores bajo");
      } else if (
        numCaracteres > nivelBajo &&
        numCaracteres <= nivelMedio &&
        contieneLetraMinuscula &&
        contieneLetraMayuscula &&
        contieneNumero &&
        contieneCaracterEspecial
      ) {
        nivel = "Seguridad media";
        espanNivelesColores.removeClass().addClass("spanNivelesColores medio");
      } else if (
        numCaracteres >= nivelBajo &&
        numCaracteres <= nivelAlto &&
        contieneLetraMinuscula &&
        contieneLetraMayuscula &&
        contieneNumero &&
        contieneCaracterEspecial
      ) {
        nivel = "Segura";
        espanNivelesColores.removeClass().addClass("spanNivelesColores alto");
      } else if (
        numCaracteres >= nivelAlto &&
        contieneLetraMinuscula &&
        contieneLetraMayuscula &&
        contieneNumero &&
        contieneCaracterEspecial
      ) {
        nivel = "Muy segura";
        espanNivelesColores
          .removeClass()
          .addClass("spanNivelesColores muyAlto");
      }
      if (numCaracteres === 0) {
        espanNivelesColores.removeClass().addClass("spanNivelesColores");
      }
    }
  }
  function comprobarClave(e) {
    var divClaveCorrecta = $(".clavecorrecta"),
      espanNivelesColores = $(".spanNivelesColores"),
      nivelSeguridad = $("#nivelseguridad");
    e.preventDefault();
    e.stopPropagation();
    if (inputvalidarComtrasena.val() === inputRepetirvalidarComtrasena.val()) {
      divClaveCorrecta.removeClass("oculto");
      espanNivelesColores.removeClass().addClass("spanNivelesColores nulo");
      nivelSeguridad.html("");
      return true;
    } else {
      inputvalidarComtrasena.focus();
      mostrarError();
      inputs.val("");
    }
  }
  function mostrarError() {
    var divError = $(".error"),
      espanNivelesColores = $(".spanNivelesColores"),
      nivelSeg = $("#nivelseguridad");
    divError.removeClass("oculto", 600);
    nivel = "bajo";
    nivelSeg.html(nivel);
    espanNivelesColores.removeClass().addClass("spanNivelesColores nulo");
  }
  function limpiarError() {
    var divError = $(".error");
    if (!divError.hasClass("oculto")) {
      divError.addClass("oculto");
    }
  }
  $(document).on("keyup", "input", function (e) {
    var nivelSeg = $("#nivelseguridad");
    devuelveNivel($(this), e);
    nivelSeg.html(nivel);
  });

  boton.click(comprobarClave);

  inputs.focus(limpiarError);
});
