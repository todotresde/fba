int rotacion = 0;

void setup(){
  size(400, 400);
}

void draw(){
  background(200);
  pushMatrix();//Guardar valores de rotate y translate
  translate(0, 0);
  rotate(radians(rotacion));
  fill(255);
  rect(0,0,50,50);
  popMatrix();//Recuperar valores de rotate y translate
  
  pushMatrix();//Guardar valores de rotate y translate
  translate(100,0);
  rotate(radians(rotacion));
  fill(255);
  rect(0,0,50,50);
  popMatrix();//Recuperar valores de rotate y translate
  //fill(0,0,255);
  //rect(0,100,50,50);
  rotacion+=5;
}

void mouseMoved(){

}
