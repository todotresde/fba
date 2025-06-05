int posX = 0;

void setup() {
  size(400, 400);
  frameRate = 1;
  textSize(20);
}

void draw() { 
  for(int j=0;j<10;j=j+1){
    for(int i=0;i<10;i=i+1){
      if(i+j == 9){
        fill(0);
      }else{
        fill(255);
      }
      rect(i*40,j*40,40,40);
      fill(0);
      text(i + "-" + j, i*40,(j*40)+30);
    }
  }
  // j=0, i=0, posX=0, posY=0
  // j=0, i=1, posX=40, posY=0
  // j=0, i=2, posX=80, posY=0
  // j=0, i=3, posX=120, posY=0
  // ...
  // j=0, i=9, posX=360, posY=0
  // j=1, i=0, posX=0, posY=40
  // j=1, i=1, posX=40, posY=40
  // j=1, i=2, posX=80, posY=40
  // j=1, i=3, posX=120, posY=40
  // ...
  // j=1, i=9, posX=360, posY=40
  // j=2, i=9, posX=360, posY=80
  // j=2, i=0, posX=0, posY=80
}
