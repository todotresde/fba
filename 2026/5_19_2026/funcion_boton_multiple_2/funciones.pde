void boton(int posX, int posY, int tipo){
  if (dist(mouseX, mouseY, posX, posY) < 50) {
    if (mousePressed) {
      fill(255, 255, 0);
      mostrar=true;
    } else {
      fill(255, 0, 0);
      mostrar=false;
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

void accionBoton1(){
  if(mostrar==true){
    rect(300,300,50,50);
  }
}

void accionBoton2(){
  if(mostrar==true){
    rect(100,100,50,50);
  }
}

void accionBoton3(){
  if(mostrar==true){
    rect(300,350,50,50);
  }
}
