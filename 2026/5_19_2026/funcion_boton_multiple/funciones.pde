void boton(int posX, int posY){
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
  
  mostrarAlgo();
}

void mostrarAlgo(){
  if(mostrar==true){
    rect(300,300,50,50);
  }
}
