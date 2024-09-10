function dibujarCelda(i, j) {
  if (grilla[i][j] === 1) {
    fill(0);
  } else if (grilla[i][j] === 2) {
    fill(0, 255, 0);
  } else if (grilla[i][j] === 3) {
    fill(255, 0, 0);
  } else {
    fill(255);
  }
  rect(i*tam, j*tam, tam, tam);
}

function moverPersonaje(){
  grilla[posXPersonaje][posYPersonaje] = 0;

  if (keyCode === DOWN_ARROW) {
    posYPersonaje++;
  } else if (keyCode === UP_ARROW) {
    posYPersonaje--;
  } else if (keyCode === LEFT_ARROW) {
    posXPersonaje--;
  } else if (keyCode === RIGHT_ARROW) {
    posXPersonaje++;
  }
  
  grilla[posXPersonaje][posYPersonaje] = 1;
}

function sePuedeMoverElPersonaje(){
  if (keyCode === DOWN_ARROW) {
    return grilla[posXPersonaje][posYPersonaje+1] === 0;
  } else if (keyCode === UP_ARROW) {
    return grilla[posXPersonaje][posYPersonaje-1] === 0;
  } else if (keyCode === LEFT_ARROW) {
    return grilla[posXPersonaje-1][posYPersonaje] === 0;
  } else if (keyCode === RIGHT_ARROW) {
    return grilla[posXPersonaje+1][posYPersonaje] === 0;
  } 
}
