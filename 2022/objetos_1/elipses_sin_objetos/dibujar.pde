void dibujarObjeto(int i){
  fill(colores[i]);
  ellipse(posX[i], posY[i], tam[i], tam[i]);
}

void moverObjeto(int i){
  if(dir[i] == 0){
    posX[i]++;
    if(posX[i]>width){
      dir[i] = 2;
    }
  }else if(dir[i] == 1){
    posY[i]++;
    if(posY[i]>height){
      dir[i] = 3;
    }
  }else if(dir[i] == 2){
    posX[i]--;
    if(posX[i]<0){
      dir[i] = 0;
    }
  }else if(dir[i] == 3){
    posY[i]--;
    if(posY[i]<0){
      dir[i] = 1;
    }
  }
  
  
}
