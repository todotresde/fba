int tam = 0;
int inc = 1;

void setup(){
    size(400, 400);
}

void draw(){
  ellipse(200,200,tam,tam);
  tam = tam + inc;
  
  if(mouseX > 200){
    inc = 0;
  }else{
    inc = 1;
  }
}

void mouseClicked(){
  inc = 0;
}

void keyPressed(){

}
