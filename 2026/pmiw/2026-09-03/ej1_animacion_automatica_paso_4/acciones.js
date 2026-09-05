function accion_caminar(){
  let frame = floor(frameCount / velocidadAnimacion) % caminar_cant;
  image(caminar[frame], posX_caminar, 200);
  posX_caminar++;
  
  if(posX_caminar == 200){
    estado_personaje = "SALTAR";
  }else if(posX_caminar == 300){
    estado_personaje = "QUIETO";
  }
}

function accion_saltar(){
  let frame = floor(frameCount / velocidadAnimacion) % saltar_cant;
  image(saltar[frame], 200, posY_saltar);
  
  cantidad_saltos++;
  
  if(cantidad_saltos >= 60){
    estado_personaje = "CAMINAR";
  }
}

function accion_quieto(){
  let frame = floor(frameCount / velocidadAnimacion) % quieto_cant;
  image(quieto[frame], 300, 200);
  
  cantidad_quieto++;
  
  if(cantidad_quieto >= 120){
    estado_personaje = "CAMINAR";
  }
}
