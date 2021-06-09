int posX = 0;
int anchoRect = 50;
int altoRect = 20;
int direccion = 1;
int velocidad = 5;

void setup()
{
  size(800, 400);
}

void draw()
{
  background(200);
  rect(posX, 100, anchoRect, altoRect);
  
  
  if(posX >= width - anchoRect){
    direccion = -1;
  }
  if(posX <= 0){
    direccion = 1;
  }
  
  //posX++ <==> posX = posX + 1
  posX = posX + (velocidad * direccion);
}

void mouseClicked(){

}

void keyPressed(){

}
