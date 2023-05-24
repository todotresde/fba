int cant = 4;
int tam;
int angulo;

void setup(){
  size(800,400);
  tam = width / cant;
  rectMode(CENTER);
}

void draw(){
  background(200);
  for(int i=0; i<cant; i++){
    pushMatrix();
    translate(i*tam,200);
    if(i%2 == 0){
      rotate(radians(- angulo));
    }else{
      rotate(radians(angulo));
    }
    rect(0,0,100,100);
    ellipse(-50,-50,30,30);
    popMatrix();
  }
  
  angulo++;
}
