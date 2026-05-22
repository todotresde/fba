void dibujarPantalla() {
  rect(20, 20, 360, 300);
}

void dibujarBotonRojo() {
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

void dibujarBotonAzul() {
  if (dist(mouseX, mouseY, 100, 350) < 25) {
    fill(0, 0, 255);
    if(mousePressed){
      fill(0, 0, 150);
    }
  }else{
    fill(255); 
  }
  ellipse(100, 350, 50, 50);
}

void dibujarLapiz() {
  if (
    (mouseX > 20 && mouseX < 380 && mouseY > 20 && mouseY < 320) &&
    (pmouseX > 20 && pmouseX < 380 && pmouseY > 20 && pmouseY < 320)
    ) {
    stroke(colorLapiz);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}
