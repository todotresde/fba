void boton(){
  if (dist(mouseX, mouseY, 100, 100) < 50) {
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
  ellipse(100, 100, 100, 100);
  
  mostrarAlgo();
}

void mostrarAlgo(){
  if(mostrar==true){
    rect(300,300,50,50);
  }
}
