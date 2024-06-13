int cantFlechas = 1;
int cantAWSD = 1;
int tam = 40;
int posXFlechas = 0;
int posXAWSD;

void setup(){
  size(400,400);
  posXAWSD = width - tam;
}

void draw(){
  background(200);
  for(int i=0; i<cantFlechas;i++){
    rect(posXFlechas, ((height - tam) - (tam * i)) , tam, tam);
  }
  
  for(int i=0; i<cantAWSD;i++){
    rect(posXAWSD, ((height - tam) - (tam * i)) , tam, tam);
  }
}

void keyPressed(){
  if(keyCode == LEFT){
    posXFlechas-=tam;
  }else if(keyCode == RIGHT){
    posXFlechas+=tam;
  }else if(keyCode == UP){
    cantFlechas++;
  }else if(keyCode == DOWN){
    cantFlechas--;
  }else if(key == 'a'){
    posXAWSD-=tam;
  }else if(key == 'd'){
    posXAWSD+=tam;
  }else if(key == 'w'){
    cantAWSD++;
  }else if(key == 's'){
    cantAWSD--;
  }
}
