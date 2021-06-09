PImage img1, img2;
int posX = 0;
boolean activa1 = false;

void setup(){
  size(400,400);
  textSize(30);
  
  img1 = loadImage("1.png");
  img2 = loadImage("2.png");
}

void draw(){
  background(200);
  
  image(img1,posX,0,width,height);
  image(img2,width+posX,0,width,height);
  
  if(activa1 == true){
    posX--;
  }
}

void mouseClicked(){
  activa1 = true;
}
