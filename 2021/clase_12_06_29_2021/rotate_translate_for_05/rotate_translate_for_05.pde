int cant = 10;
int tam;
int grados = 1;

void setup(){
  size(400,400);
  tam = width/cant;
  textSize(20);
}

void draw(){
  background(200);
  
  // i=0 -> 0,0 -> 0,0
  // i=1 -> 50,0 -> 50,0
  // i=2 -> 100,0 -> 100,0
  // i=3 -> 150,0 -> 150,0
  for(int i = 0; i < cant; i++){
    for(int j = 0; j < cant; j++){
      pushMatrix();//Salvar un punto de restauración
      
      translate(i*tam, j*tam);
      if(i%2 == 0){
        rotate(radians(grados));//0, 1, 2, 3, ... 
      }else{
        rotate(radians(360 - grados));// 360, 359, 358, ...
      }
      rect(0,0, tam, tam);
      //rect(10,10, tam, tam);
      
      popMatrix(); // Restaurar
    }
  }
  grados++;
}

void mouseClicked(){
}
