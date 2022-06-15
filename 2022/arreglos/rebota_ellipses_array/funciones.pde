void rebotaEllipse(int posEnArreglo, int posY){
  int tam = 50;
  ellipse(posX[posEnArreglo], posY, tam, tam);
  posX[posEnArreglo] = 
    posX[posEnArreglo] + dir[posEnArreglo];
  
  if(
    posX[posEnArreglo] > width - tam/2 || 
    posX[posEnArreglo] < tam/2){
    dir[posEnArreglo] = dir[posEnArreglo] * -1;
  }
}
