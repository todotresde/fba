function dibujarBloques() {
  for (let i=0; i<cant; i++) {
    if (estados[i] == true) {
      fill(colores[i]);
      rect(i*tam, 50, tam, tam/2);
    }
  }
}

function dibujarPelotita() {
  fill(0, 255, 0);
  ellipse(posXPelotita, posYPelotita, 30, 30);
  posXPelotita += dirPelotitaX;
  posYPelotita += dirPelotitaY;

  if (posXPelotita > width || posXPelotita < 0) {
    dirPelotitaX *= -1;
  }

  if (posYPelotita > height || posYPelotita < 0) {
    dirPelotitaY *= -1;
  }
}

function detectarColisiones(){
  for (let i=0; i<cant; i++) {
    if (dist(i*tam + tam/2, 70, posXPelotita, posYPelotita) < 30) {
      estados[i] = false;
    }
  }
}
