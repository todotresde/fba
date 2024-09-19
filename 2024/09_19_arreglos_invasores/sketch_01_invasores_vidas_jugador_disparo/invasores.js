function dibujarInvasores(){
  for(let fila=0; fila<cantFilas; fila++){
    for(let col=0; col<cantColumnas; col++){
      if(invasores_vidas[fila][col] === 1){
        let posX = (col * tam) + offsetX;
        let posY = (fila * tam) + offsetY;
        fill(255);
        rect(posX, posY, tam * 0.5, tam * 0.5);
      }
    }
  }
}
