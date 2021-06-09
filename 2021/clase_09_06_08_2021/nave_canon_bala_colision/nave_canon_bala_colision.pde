int posX1 = round(random(50, 300));
int posX2 = round(random(50, 300));
int posX3 = round(random(50, 300));

boolean enemigo1Visible = true;
boolean enemigo2Visible = true;
boolean enemigo3Visible = true;

int anchoRect = 50;
int altoRect = 20;
int direccion1 = 1;
int velocidad1 = floor(random(2, 2));// 3.6 => 3, 3.1 => 3
int direccion2 = 1;
int velocidad2 = ceil(random(2, 2));// 3.6 => 4, 3.1 => 4
int direccion3 = 1;
int velocidad3 = round(random(2, 2));// 3.6 => 4, 5.2 => 5 

int posXCanon = 200;
int altoCanon = 100;
int anchoCanon = 20;

int tamBala = 15;
int posXBala;
int posYBala = 200;

boolean balaSeHaDisparado = false;

void setup()
{
  size(400, 400);
  posYBala = height - altoCanon + (anchoCanon / 2);
}

void draw()
{
  background(200);
  
  if(enemigo1Visible){
    rect(posX1, 0, anchoRect, altoRect);
  }
  
  if(enemigo2Visible){
    rect(posX2, 50, anchoRect, altoRect);
  }
  
  if(enemigo3Visible){
    rect(posX3, 100, anchoRect, altoRect);
  }
  
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
  
  //Bala
  if(balaSeHaDisparado){
    ellipse(posXBala, posYBala, tamBala, tamBala);
    posYBala--;
    
    line(posXBala, posYBala, posX1 + anchoRect/2, 0 + altoRect/2);
    line(posXBala, posYBala, posX2 + anchoRect/2, 50 + altoRect/2);
    line(posXBala, posYBala, posX3 + anchoRect/2, 100 + altoRect/2);
    
    if(dist(posXBala, posYBala, posX1 + anchoRect/2, 0 + altoRect/2) < tamBala){
      balaSeHaDisparado = false;
      enemigo1Visible = false;
    }
    
    if(dist(posXBala, posYBala, posX2 + anchoRect/2, 50 + altoRect/2) < tamBala){
      balaSeHaDisparado = false;
      enemigo2Visible = false;
    }
    
    if(dist(posXBala, posYBala, posX3 + anchoRect/2, 100 + altoRect/2) < tamBala){
      balaSeHaDisparado = false;
      enemigo3Visible = false;
    }
  }
  
  //Cañon
  rect(posXCanon, height - altoCanon, anchoCanon, altoCanon);
}

void mouseClicked(){

}

void keyPressed(){
  if(keyCode == LEFT){
    posXCanon-=5; //posXCanon = posXCanon - 5
    posXBala = posXCanon + (anchoCanon / 2);
  }
  if(keyCode == RIGHT){
    posXCanon+=5; //posXCanon = posXCanon + 5
    posXBala = posXCanon + (anchoCanon / 2);
  }
  
  if(keyCode == ENTER){
    balaSeHaDisparado = true;
  }
}
