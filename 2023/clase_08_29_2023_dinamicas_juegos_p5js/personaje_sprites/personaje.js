function dibujarPersonaje() {
  fill(0);
  image(imagenesMario[round(spriteActualMario)], posX, posY);
}

function calcularSiguienteSpriteDeMario(){
  if(spriteActualMario >= cantImagenes-1){
    spriteActualMario = 0;
  }else{
    spriteActualMario+=0.1;
  }
}
