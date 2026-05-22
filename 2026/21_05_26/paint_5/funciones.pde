void dibujarPantalla() {
  rect(20, 20, 360, 300);
}

void dibujarBoton() {
  if (dist(mouseX, mouseY, 50, 350) < 25) {
    fill(255, 0, 0);
    if(mousePressed){
      fill(150, 0, 0);
    }
  }else{
    fill(255); 
  }
  ellipse(50, 350, 50, 50);
}

void dibujarLapiz() {
  if (
    (mouseX > 20 && mouseX < 380 && mouseY > 20 && mouseY < 320) &&
    (pmouseX > 20 && pmouseX < 380 && pmouseY > 20 && pmouseY < 320)
    ) {
      if(cambiarColorRojo == false){
        stroke(0);
      }else{
        stroke(255,0,0);
      }
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}
