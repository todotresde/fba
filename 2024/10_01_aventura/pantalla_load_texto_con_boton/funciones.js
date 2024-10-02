function obtenerTextActual(){
  return posTextoActual;
}

function reload(){
  //anchoPantalla = mouseX;
  //altoPantalla = mouseY;
  
  anchoTexto = anchoPantalla * 0.8;
  tamTexto = altoPantalla * 0.10;
  inicioTexto = anchoPantalla * 0.05;
  
  posXBoton = anchoPantalla * 0.9;
  posYBoton = altoPantalla * 0.9;
  anchoBoton = anchoPantalla * 0.05;
  altoBoton = altoPantalla * 0.05;
  
  textSize(tamTexto);
}
