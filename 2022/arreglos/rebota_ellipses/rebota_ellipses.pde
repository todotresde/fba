int cant = 3;
int [] posX;
int [] dir;

void setup(){
  size(400, 400);
  posX = new int [cant];
  for(int i = 0; i< cant; i++){
    posX[i] = round(random(100, 300));
    dir[i] = 1;
  }
}

void draw(){
  background(200);
  rebotaEllipse(0, 100);
  rebotaEllipse(1, 200);
  rebotaEllipse(2, 300);
}
