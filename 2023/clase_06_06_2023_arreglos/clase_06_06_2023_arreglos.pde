int [] numerosPares = new int [10];
int cantPares = 0;

void setup(){
  size(400,400);
  textSize(30);
  for(int i=1; i<=20;i++){
    if(esPar(i)){
      numerosPares[cantPares] = i;
      cantPares++;
    }
  }
}

void draw(){
  background(200);
  fill(0);
  for(int i=0; i<14;i++){
    text(numerosPares[i], (i*40)+10, 200);
  }
}
