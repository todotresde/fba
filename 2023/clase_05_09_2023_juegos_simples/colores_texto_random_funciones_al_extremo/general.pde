void iniciar() {
  hiceClick = false;
  generarTexto();
  generarCuadroColor();
}

void generarTexto() {
  if (random(0, 10)>5) {
    textoDelColor = "VERDE";
    colorTexto = color(255, 0, 0);
  } else {
    textoDelColor = "ROJO";
    colorTexto = color(0, 255, 0);
  }
}

void generarCuadroColor() {
  if (random(0, 10)>5) {
    colorRandom1 = color(255, 0, 0);  
    colorRandom2 = color(0, 255, 0);
  } else {
    colorRandom1 = color(0, 255, 0);  
    colorRandom2 = color(255, 0, 0);
  }
}

boolean hiceClickCorrectamente() {
  if (textoDelColor == "VERDE") {
    if (red(get(mouseX, mouseY)) == 255) {
      return true;
    }
  } else {
    if (green(get(mouseX, mouseY)) == 255) {
      return true;
    }
  }
  return false;
}

boolean hiceClickEnRecuadroDerecho() {
  boolean resultado = mouseX > width/2 && mouseY > height/2;
  if (resultado) {
    hiceClick = true;
  }

  return resultado;
}

boolean hiceClickEnRecuadroIzquierdo() {
  boolean resultado = mouseX < width/2 && mouseY > height/2;
  if (resultado) {
    hiceClick = true;
  }

  return resultado;
}
