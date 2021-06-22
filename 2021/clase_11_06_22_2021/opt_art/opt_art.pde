int tam;
int cant = 10;

void setup(){
  size(400, 400);
  tam = width/cant;
}

void draw(){
  background(200);
  for(int i=0; i<cant; i++){
    for(int j=0; j<cant; j++){
      rect(i*tam, j*tam, tam, tam);
    }
  }
}


void mouseClicked(){
  
}
