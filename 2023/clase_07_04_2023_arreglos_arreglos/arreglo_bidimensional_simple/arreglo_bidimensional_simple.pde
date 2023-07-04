int cantFilas = 10;
int cantColumnas = 10;
int ancho, alto;
int [][] tablero;

void setup(){
  size(400, 400);
  tablero = new int[cantFilas][cantColumnas];
  ancho = width/cantColumnas;
  alto = height/cantFilas;
}

void draw(){
  for(int fila = 0; fila < cantFilas; fila++){
    for(int columna = 0; columna < cantColumnas; columna++){
      if(tablero[columna][fila] == 1){
        fill(0);
      }else{
        fill(255);
      }
      rect(columna * ancho, fila * alto, ancho, alto);
      fill(255,0,0);
      text(
        "(" + columna + "," + fila + "," + tablero[columna][fila] + ")" 
        ,columna * ancho + ancho/5, fila * alto + alto/2);
      
    }
  }
}

void mouseClicked(){
  int columna = floor(map(mouseX, 0, width, 0, cantColumnas));
  int fila = floor(map(mouseY, 0, height, 0, cantFilas));
  
  tablero[columna][fila] = 1;
}
