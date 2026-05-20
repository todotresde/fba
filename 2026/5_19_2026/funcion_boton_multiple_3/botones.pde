void boton(int posX, int posY, int tipo){
  if (dist(mouseX, mouseY, posX, posY) < 50) {
    if (mousePressed) {
      fill(255, 255, 0);
      cambiarTipoBoton(tipo, true);
    } else {
      fill(255, 0, 0);
      cambiarTipoBoton(tipo, false);
    }
  } else {
    fill(255);
  }
  ellipse(posX, posY, 100, 100);
  
  mostrarAlgo(tipo);
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
