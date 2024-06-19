int rotacion = 0;
int cant = 10;
float tam;
void setup(){
  size(400, 400);
  tam = width/cant;
  rectMode(CENTER);
}

void draw(){
  background(200);
  for(int i=0; i< cant; i++){
    for(int j=0; j< cant; j++){
      pushMatrix();//Guardar valores de rotate y translate
      translate(i * tam + tam/2, j * tam + tam/2);
      rotate(radians(rotacion));
      fill(255);
      rect(0,0,tam,tam);
      popMatrix();//Recuperar valores de rotate y translate
    }
  }
  
  rotacion += map(dist(mouseX, mouseY, width/2, height/2), 0, 255, 0, 5);
}

void mouseMoved(){

}
