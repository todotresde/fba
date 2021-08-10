int cant = 10;
int [] posiciones = new int [cant];
int posY = 200;
int tam;

void setup() {
  size(500, 480);
  tam = width/cant;
  
  for(int i=0; i<cant; i++){
    posiciones[i] = round(random(100));
  }
 
}

void draw() {
  background(200);
  
  for(int i=0; i<cant; i++){
    noFill();
    rect(i * tam, posY, tam, tam);
    fill(255,0,0);
    textSize(10);
    text(i, i * tam + tam - 10, posY + tam - 5);
    
    fill(0);
    textSize(20);
    text(posiciones[i], i * tam + tam/3, posY + tam/2);
  }
}

void mouseMoved() {
}

void keyPressed () {
}
