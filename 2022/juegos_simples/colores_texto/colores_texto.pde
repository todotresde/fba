color colorRandom1 = color(255, 0, 0);
color colorRandom2 = color(0, 255, 0);
String textoDelColor = "Verde";
String respuesta;
boolean hiceClick = false;

void setup() {
  size(400, 400);
}

void draw() {
  background(200);  
  if(!hiceClick){
    fill(colorRandom1);
    text(textoDelColor, 50, 100);
  
    fill(colorRandom1);
    rect(0, height/2, width/2, height/2);
  
    fill(colorRandom2);
    rect(width/2, height/2, width/2, height/2);
  }else{
    text(respuesta, 50, 100);
  }
}

void mouseClicked() {
  if (mouseX < width/2 && mouseY > height/2) {
    if (textoDelColor == "Verde" && green(colorRandom1) == 255) {
      respuesta = "Excelente!";
    } else {
      respuesta = "Error!";
    }
    hiceClick = true;
  } else if (mouseX < width/2 && mouseY > height/2) {
    hiceClick = true;
  }
}
