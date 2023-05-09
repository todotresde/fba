String palabra = "HOLA";
String palabra_inicio = "_ _ _ _ ";
int errores = 0;

void setup() {
  size(400, 400);
  textSize(30);
}

void draw() {
  background(200);

  fill(255);
  rect(50, 250, 100, 50);
  line(75, 250, 75, 100);
  line(75, 100, 200, 100);
  line(200, 100, 200, 125);
  
  if(errores >= 1){
    ellipse(200, 150, 50, 50);
  }
  if(errores >= 2){
    line(200,175,200,250);
  }
  if(errores >= 3){
    line(200,175,225,200);   
  }
  if(errores >= 4){
    line(200,175,175,200);
  }
  if(errores >= 5){
    line(200,250,225,275);   
  }
  if(errores >= 6){
    line(200,250,175,275);
  }
  if(errores >= 7){
    fill(255,0,0);
    text("PERDISTE!!!", 200, 50);
  }
  
  fill(0);
  text(palabra_inicio, 200, 350);
}

void keyPressed(){
  if(key == 'h'){
    palabra_inicio = "H " + 
    palabra_inicio.substring(2,palabra_inicio.length());
  }else if(key == 'o'){
    palabra_inicio = palabra_inicio.substring(0,2) +
    "O " + 
    palabra_inicio.substring(4,palabra_inicio.length());
  }else if(key == 'l'){
    palabra_inicio = palabra_inicio.substring(0,4) +
    "L " + 
    palabra_inicio.substring(6,palabra_inicio.length());
  }else if(key == 'a'){
    palabra_inicio = palabra_inicio.substring(0,6) +
    "A ";
  }else{
    errores++;
  }
}
