void dibujarPantalla() {
  rect(20, 20, 360, 300);
}

void dibujarBoton(
  int posX, int posY, 
  color colorFigura, color colorFiguraPresionado) {
  if (dist(mouseX, mouseY, posX, posY) < 25) {
    fill(colorFigura);
    if(mousePressed){
      colorLapiz = colorFigura;
      fill(colorFiguraPresionado);
    }
  }else{
    fill(255); 
  }
  ellipse(posX, posY, 50, 50);
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
