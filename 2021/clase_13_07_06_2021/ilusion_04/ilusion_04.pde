int tam = 30;
int cantColumnas = 20;
int cantFilas = 14;
int desfasaje = 70;
int incDesfasaje = 10;
color colorFondo = color(0);

void setup(){
  size(400,400);
  stroke(120);
  strokeWeight(3);
}

void draw(){
  background(200);
  /*
  for(int i = 0; i<cantColumnas; i+=2){
    fill(255);
    rect(i * tam,0,tam,tam);//i=0 -> 0,0 --- i=2 -> 100,0
    fill(0);
    rect(i * tam + tam,0,tam,tam);//i=0 -> 50,0 --- i=2 -> 200,0
  }
  */
  
  for(int f = 0; f<cantFilas; f+=1){
    for(int c = 0; c<cantColumnas; c+=1){
      if(c%2 == 0){
        fill(colorFondo);
      }else{
        fill(0);
      }
      rect(c * tam - desfasaje, f * tam, tam, tam);
    }
    if(f%2 == 0){
      desfasaje += incDesfasaje;
    }else{
      desfasaje -= incDesfasaje;
    }
  }
}

void mouseMoved(){
   incDesfasaje = round(map(mouseX,0,width, 20, 5));
   colorFondo = round(map(mouseY, 0, height, 0, 255));
}
