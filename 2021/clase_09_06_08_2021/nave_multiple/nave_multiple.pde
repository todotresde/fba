int posX1 = round(random(50, 300));
int posX2 = round(random(50, 300));
int posX3 = round(random(50, 300));
int anchoRect = 50;
int altoRect = 20;
int direccion1 = 1;
int velocidad1 = floor(random(2, 10));// 3.6 => 3, 3.1 => 3
int direccion2 = 1;
int velocidad2 = ceil(random(2, 10));// 3.6 => 4, 3.1 => 4
int direccion3 = 1;
int velocidad3 = round(random(2, 10));// 3.6 => 4, 5.2 => 5 

void setup()
{
  size(400, 400);
}

void draw()
{
  background(200);
  rect(posX1, 0, anchoRect, altoRect);
  rect(posX2, 50, anchoRect, altoRect);
  rect(posX3, 100, anchoRect, altoRect);
  
  //Rect 1
  if(posX1 >= width - anchoRect){
    direccion1 = -1;
  }
  if(posX1 <= 0){
    direccion1 = 1;
  }
  
  //Rect 2
  if(posX2 >= width - anchoRect){
    direccion2 = -1;
  }
  if(posX2 <= 0){
    direccion2 = 1;
  }
  
  //Rect 3
  if(posX3 >= width - anchoRect){
    direccion3 = -1;
  }
  if(posX3 <= 0){
    direccion3 = 1;
  }
  
  posX1 = posX1 + (velocidad1 * direccion1);
  posX2 = posX2 + (velocidad2 * direccion2);
  posX3 = posX3 + (velocidad3 * direccion3);
}

void mouseClicked(){

}

void keyPressed(){

}
