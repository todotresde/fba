
void mousePresionado() {
  if (hiceClickEnRecuadroIzquierdo()) {
    if (hiceClickCorrectamente()) {
      respuesta = "Excelente!";
    } else {
      respuesta = "Error!";
    }
  } else if (hiceClickEnRecuadroDerecho()) {
    if (hiceClickCorrectamente()) {
      respuesta = "Excelente!";
    } else {
      respuesta = "Error!";
    }
  }
}

void teclaPresionada() {
  if (hiceClick && key == 'r') {
    iniciar();
  }
}
