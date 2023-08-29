function dibujarPersonaje() {
  fill(0);
  if (direccion == DERECHA) {
    image(imagenesMarioDer[round(spriteActualMario)], posX, posY);
  } else if (direccion == IZQUIERDA) {
    image(imagenesMarioIzq[round(spriteActualMario)], posX, posY);
  }
}

function calcularSiguienteSpriteDeMario() {
  if (direccion == DERECHA) {
    if (spriteActualMario >= cantImagenes-1) {
      spriteActualMario = 0;
    } else {
      spriteActualMario+=0.1;
    }
  } else if (direccion == IZQUIERDA) {
    if (spriteActualMario < 0) {
      spriteActualMario = cantImagenes-1;
    } else {
      spriteActualMario-=0.1;
    }
  }
}
