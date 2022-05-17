color colorTexto;
color colorRandom1;
color colorRandom2;
String textoDelColor;
String respuesta;
boolean hiceClick;

void setup() {
  size(400, 400);
  textSize(30);
  iniciar();
}

void draw() {
  background(200);  
  if(!hiceClick){
    dibujarPantallaPrincipal();
  }else{
    dibujarPantallaRespuesta();
  }
}

void mouseClicked() {
  if (mouseX < width/2 && mouseY > height/2) {
    if (hiceClickCorrectamente()) {
      respuesta = "Excelente!";
    } else {
      respuesta = "Error!";
    }
    hiceClick = true;
  } else if (mouseX > width/2 && mouseY > height/2) {
    if (hiceClickCorrectamente()) {
      respuesta = "Excelente!";
    } else {
      respuesta = "Error!";
    }
    hiceClick = true;
  }
}

void keyPressed(){
  if(hiceClick && key == 'r'){
    iniciar();
  }
}
