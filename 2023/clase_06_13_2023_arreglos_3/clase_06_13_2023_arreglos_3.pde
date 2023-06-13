int tamX, tamY;
int cantColumnas = 10;
int [] celdasSeleccionadas = new int [cantColumnas];
int celdaSeleccionada = -1;

void setup(){
  size(400,400);
  tamX = width/cantColumnas;
  tamY = 100;
}

void draw(){
  background(200);
  for(int i=0; i<cantColumnas;i++){
    if(
      (mouseX > i*tamX && mouseX < i*tamX + tamX && mouseY > 200 && mouseY < 200 + tamY) ||
        celdasSeleccionadas[i] == 1
      ){
      fill(0);
    }else{
      fill(255);
    }
    rect(i*tamX, 200, tamX, tamY);
  }
}

void mouseClicked(){
  for(int i=0; i<cantColumnas;i++){
    if(mouseX > i*tamX && mouseX < i*tamX + tamX && mouseY > 200 && mouseY < 200 + tamY){
      if(celdasSeleccionadas[i] == 1){
        celdasSeleccionadas[i] = 0;
      }else{
        celdasSeleccionadas[i] = 1;
      };
    }
  }
}
