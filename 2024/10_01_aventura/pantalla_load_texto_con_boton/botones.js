function dibujarBotonCuadrado(){
  fill(255,0,0);
  rect(posXBoton,posYBoton,anchoBoton,altoBoton);
}

function clickBotonCuadrado(){
  if(
    mouseX > posXBoton && 
    mouseX < posXBoton+anchoBoton && 
    mouseY > posYBoton && 
    mouseY < posYBoton+altoBoton){
    posTextoActual++;
  }
}
