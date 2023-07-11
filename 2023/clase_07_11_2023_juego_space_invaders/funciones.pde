void dibujarAliens() {
  ellipseMode(CORNER);
  for (int cols = 0; cols<columnasAliens; cols++) {
    for (int filas = 0; filas<filaAliens; filas++) {
      if (aliens[filas][cols] == 0) {
        fill(0, 255, 0);
        ellipse(cols*tamAlien, filas*tamAlien, tamAlien * 0.6, tamAlien * 0.6);
      } else if (aliens[filas][cols] == 1) {
        fill(255, 0, 0);
        ellipse(cols*tamAlien, filas*tamAlien, tamAlien * 0.6, tamAlien * 0.6);
      }
    }
  }
}

void dibujarNave() {
  fill(255);
  rect(mouseX - 25, height - 50, 50, 30);
}

void dibujarBala() {
  if (seHaDisparado) {
    fill(0, 0, 255);
    ellipse(balaPosX, balaPosY, 5, 5);
    balaPosY--;

    verificarBalaHaChocadoUnAlien();

    if (balaPosY < 0) {
      seHaDisparado = false;
    }
  }
}

void disparar() {
  if (!seHaDisparado) {
    balaPosX = mouseX + 25;
    balaPosY = height - 50;
    seHaDisparado = true;
  }
}

void verificarBalaHaChocadoUnAlien() {
  for (int cols = 0; cols<columnasAliens; cols++) {
    for (int filas = 0; filas<filaAliens; filas++) {
      if(dist(cols*tamAlien, filas*tamAlien, balaPosX, balaPosY) < 10 && aliens[filas][cols] <= 1){
        aliens[filas][cols]++;
        seHaDisparado = false;
      }
    }
  }
}
