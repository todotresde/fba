int tam = 50;
int cantColumnas = 10;

void setup(){
  size(400,400);
  stroke(120);
  strokeWeight(3);
}

void draw(){
  /*
  for(int i = 0; i<cantColumnas; i+=2){
    fill(255);
    rect(i * tam,0,tam,tam);//i=0 -> 0,0 --- i=2 -> 100,0
    fill(0);
    rect(i * tam + tam,0,tam,tam);//i=0 -> 50,0 --- i=2 -> 200,0
  }
  */
  
  for(int i = 0; i<cantColumnas; i+=1){
    if(i%2 == 0){
      fill(255);
    }else{
      fill(0);
    }
    rect(i * tam,0,tam,tam);
  }
}
