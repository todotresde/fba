int cant = 10;
String [] posiciones = new String [cant];
int posY;
int tam;
int cantCaracteres = 1;

void setup() {
  size(500, 480);
  tam = width/cant;
  posY = height - tam;
  
  for(int i=0; i<cant; i++){
    posiciones[i] = "";
  }
 
}

void draw() {
  background(200);
  fill(0);
  textSize(20);
  
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

void keyPressed() {
  if(key == '0'){
    if(cantCaracteres > 1){
      for(int i = cantCaracteres; i >= 2; i--){
        posiciones[cant-i] = posiciones[cant-i+1];
        posiciones[cant-i+1] = "0";
      }
    }else{
      posiciones[cant-cantCaracteres] = "0";
    }
    cantCaracteres++;
  }else if(key == '1'){
    if(cantCaracteres > 1){
      for(int i = cantCaracteres; i >= 2; i--){
        posiciones[cant-i] = posiciones[cant-i+1];
        posiciones[cant-i+1] = "1";
      }
    }else{
      posiciones[cant-cantCaracteres] = "1";
    }
    cantCaracteres++;
  }else if(key == '2'){
    if(cantCaracteres > 1){
      for(int i = cantCaracteres; i >= 2; i--){
        posiciones[cant-i] = posiciones[cant-i+1];
        posiciones[cant-i+1] = "2";
      }
    }else{
      posiciones[cant-cantCaracteres] = "2";
    }
    cantCaracteres++;
  }else if(key == '+'){
    if(cantCaracteres > 1){
      for(int i = cantCaracteres; i >= 2; i--){
        posiciones[cant-i] = posiciones[cant-i+1];
        posiciones[cant-i+1] = "+";
      }
    }
    cantCaracteres++;
  }
}
