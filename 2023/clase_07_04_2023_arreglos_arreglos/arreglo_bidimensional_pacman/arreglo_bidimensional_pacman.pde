int cantFilas = 10;
int cantColumnas = 10;
int ancho, alto;
int [][] tablero;
int posX, posY;
int puntaje = 0;

void setup(){
  size(400, 400);
  tablero = new int[cantFilas][cantColumnas];
  ancho = width/cantColumnas;
  alto = height/cantFilas;
  
  tablero[1][1] = 1;
  tablero[1][2] = 1;
  tablero[1][3] = 1;
  tablero[4][1] = 1;
  tablero[4][2] = 1;
  tablero[4][3] = 1;
  tablero[3][3] = 3;
  tablero[5][3] = 3;
  tablero[6][3] = 3;
  
  posX = 0;
  posY = 0;
  tablero[posX][posY] = 2;
}

void draw(){
  for(int fila = 0; fila < cantFilas; fila++){
    for(int columna = 0; columna < cantColumnas; columna++){
      if(tablero[columna][fila] == 1){
        fill(0);
      }else if(tablero[columna][fila] == 2){
        fill(255,0,0);
      }else{
        fill(255);
      }
      rect(columna * ancho, fila * alto, ancho, alto);
      
      if(tablero[columna][fila] == 3){
        fill(0,255,0);
        ellipse(columna * ancho + alto/2, fila * alto + ancho/2, ancho/3, alto/3);
      }
    }
  }
  dibujarScore(250, 50);
  dibujarElipses();
}

void mouseClicked(){
  int columna = floor(map(mouseX, 0, width, 0, cantColumnas));
  int fila = floor(map(mouseY, 0, height, 0, cantFilas));
  
  tablero[columna][fila] = 1;
}

void keyPressed(){
  tablero[posX][posY] = 0;
  if(keyCode == LEFT){
    if(tablero[posX-1][posY] != 1){
      if(tablero[posX-1][posY] == 3){
        puntaje = puntaje + 100;
      }
      posX--;
    }
  }
  if(keyCode == RIGHT){
    if(tablero[posX+1][posY] != 1){
      if(tablero[posX+1][posY] == 3){
        puntaje = puntaje + 100;
      }
      posX++;
    }
  }
  if(keyCode == UP){
    if(tablero[posX][posY-1] != 1){
      if(tablero[posX][posY-1] == 3){
        puntaje = puntaje + 100;
      }
      posY--;
    }
  }
  if(keyCode == DOWN){
    if(tablero[posX][posY+1] != 1){
      if(tablero[posX][posY+1] == 3){
        puntaje = puntaje + 100;
      }
      posY++;
    }
  }
  tablero[posX][posY] = 2;
}
