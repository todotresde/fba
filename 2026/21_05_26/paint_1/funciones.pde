void dibujarPantalla() {
  rect(20, 20, 360, 300);
}

void dibujarBoton() {
  ellipse(50, 350, 50, 50);
}

void dibujarLapiz() {
  if (
    (mouseX > 20 && mouseX < 380 && mouseY > 20 && mouseY < 320) &&
    (pmouseX > 20 && pmouseX < 380 && pmouseY > 20 && pmouseY < 320)
    ) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}
