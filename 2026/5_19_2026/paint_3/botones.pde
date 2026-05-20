void boton(int posX, int posY, int tipo, int tam){
  if (dist(mouseX, mouseY, posX, posY) < tam/2) {
    if (mousePressed) {
      fill(255, 255, 0);
      cambiarTipoBoton(tipo, true);
      mostrarAlgo(tipo);
    } else {
      mostrarColor(tipo);
      cambiarTipoBoton(tipo, false);
    }
  } else {
    fill(255);
  }
  stroke(0);
  ellipse(posX, posY, tam, tam);
}

void mostrarAlgo(int tipo){
  if(tipo == 1){
    accionBoton1();
  }else if(tipo == 2){
    accionBoton2();
  }else if(tipo == 3){
    accionBoton3();
  }
}

void cambiarTipoBoton(int tipo, boolean valor){
  if(tipo == 1){
    mostrar1 = valor;
  }else if(tipo == 2){
    mostrar2 = valor;
  }else if(tipo == 3){
    mostrar3 = valor;
  }
}

void mostrarColor(int tipo){
  if(tipo == 1){
    colorBoton1 = color(255,0,0);
    fill(colorBoton1);
  }else if(tipo == 2){
    colorBoton2 = color(0,255,0);
    fill(colorBoton2);
  }else if(tipo == 3){
    colorBoton3 = color(0,0,255);
    fill(colorBoton3);
  }
}
