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
    rotate(radians(angulo));
    rect(0,0,100,100);
   
    pushMatrix();
    translate(100, 0);
    rotate(radians(angulo*2));
    rect(0,0,20,20);
    popMatrix();
    
    popMatrix();
  }
  
  angulo++;
}
