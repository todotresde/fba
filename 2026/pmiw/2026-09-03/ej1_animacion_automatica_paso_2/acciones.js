function accion_caminar(){
  let frame = floor(frameCount / velocidadAnimacion) % caminar_cant;
  image(caminar[frame], posX_caminar, 200);
  posX_caminar++;
}

function accion_saltar(){
  let frame = floor(frameCount / velocidadAnimacion) % saltar_cant;
  image(saltar[frame], 200, posY_saltar);
  posY_saltar--;
}

function accion_quieto(){
  let frame = floor(frameCount / velocidadAnimacion) % quieto_cant;
  image(quieto[frame], 200, 200);
}
