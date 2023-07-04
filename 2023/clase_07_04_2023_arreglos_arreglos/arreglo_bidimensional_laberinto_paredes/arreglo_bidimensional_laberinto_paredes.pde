int cantFilas = 10;
int cantColumnas = 10;
int ancho, alto;
int [][] tablero;
int posX, posY;

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
    }
  }
}

void mouseClicked(){
  int columna = floor(map(mouseX, 0, width, 0, cantColumnas));
  int fila = floor(map(mouseY, 0, height, 0, cantFilas));
  
  tablero[columna][fila] = 1;
}

void keyPressed(){
  tablero[posX][posY] = 0;
  if(keyCode == LEFT){
    if(tablero[posX-1][posY] == 0)
      posX--;
  }
  if(keyCode == RIGHT){
    if(tablero[posX+1][posY] == 0)
      posX++;
  }
  if(keyCode == UP){
    if(tablero[posX][posY-1] == 0)
      posY--;
  }
  if(keyCode == DOWN){
    if(tablero[posX][posY+1] == 0)
      posY++;
  }
  tablero[posX][posY] = 2;
}
