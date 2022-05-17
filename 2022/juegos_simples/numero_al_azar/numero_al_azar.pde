char numeroElegido;
char numeroPresionado;
boolean haSidoPresionado = false;
String mensaje;

void setup(){
  size(400, 400);
  numeroElegido = char(floor(random(48,57)));
}

void draw(){
  background(200);
  fill(0);
  
  textSize(30);
  text("En que número estoy pensando del 0 al 9?", 50, 50, 350, 200);
  
  textSize(60);
  if(!haSidoPresionado){
    fill(random(255), random(255), random(255));
    text(char(floor(random(48,57))), 200, 300);
  }else {
    if(numeroElegido == numeroPresionado){
      fill(0,255,0);
      mensaje = "Adivinaste! Era el: " + numeroElegido;
    }else{
      fill(255,0,0);
      mensaje = "Upps! .. Era el: " + numeroElegido;
    }
    
    textSize(30);
    text(mensaje, 100, 300);
  }
   
  
}

void keyPressed(){
  if(haSidoPresionado && key == 'r'){
    numeroElegido = char(floor(random(48,57)));
    haSidoPresionado = false;
  } else if(keyCode >= 48 && keyCode <=57){
    numeroPresionado = char(keyCode);
    haSidoPresionado = true;
  }
}
