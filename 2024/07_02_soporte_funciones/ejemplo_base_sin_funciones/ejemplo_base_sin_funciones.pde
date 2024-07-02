int cant = 10;
int diferencia;
int tam;

void setup(){
  size(400,400);
  diferencia = width/cant;
  rectMode(CENTER);
}

void draw(){
  background(200);
  tam = width;
  for(int i=0; i<cant; i++){
    if(i%2 == 0){
      fill(0);
    }else{
      fill(255);
    }
    rect(width/2, height/2, tam, tam);
    tam = tam - diferencia;
  }
}
