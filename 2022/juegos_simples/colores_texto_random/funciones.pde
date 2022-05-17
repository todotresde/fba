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

void dibujarPantallaPrincipal() {
  fill(colorTexto);
  text(textoDelColor, 150, 100);

  fill(colorRandom1);
  rect(0, height/2, width/2, height/2);

  fill(colorRandom2);
  rect(width/2, height/2, width/2, height/2);
}

void dibujarPantallaRespuesta() {
  fill(0);
  text(respuesta, 150, 100);
}

boolean hiceClickCorrectamente(){
  if(textoDelColor == "VERDE"){
    if(red(get(mouseX, mouseY)) == 255){
      return true;
    }
  }else{
    if(green(get(mouseX, mouseY)) == 255){
      return true;
    }
  }
  return false;
}
