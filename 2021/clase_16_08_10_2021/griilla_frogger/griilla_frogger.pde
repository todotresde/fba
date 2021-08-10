int cant = 10;
int [] posiciones = new int [cant];
int posY;
int tam;
int posXClicked;

void setup() {
  size(500, 480);
  tam = width/cant;
  posY = height - tam;
  
  for(int i=0; i<cant; i++){
    posiciones[i] = 0;
  }
 
}

void draw() {
  background(200);
  fill(0);
  textSize(20);
  text("POS: " + posXClicked, 100, 100);
  
  for(int i=0; i<cant; i++){
    noFill();
    rect(i * tam, posY, tam, tam);
    fill(255,0,0);
    textSize(10);
    text(i, i * tam + tam - 10, posY + tam - 5);
    
    fill(0);
    textSize(20);
    text(posiciones[i], i * tam + tam/3, posY + tam/2);
    
    rect(i * tam, posiciones[i], tam, tam*2);
  }
}

void mouseMoved() {
  if(mouseY > posY && mouseY < posY + tam){
    posXClicked = round(map(mouseX, 0, width, 0, cant-1));
    posiciones[posXClicked]++;
  }
}
