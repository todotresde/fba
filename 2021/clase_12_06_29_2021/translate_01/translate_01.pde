boolean conTranslate = false;

void setup(){
  size(400,400);
  textSize(20);
}

void draw(){
  background(200);
  
  if(conTranslate){
    text("Con Translate", 200, 100);
    translate(mouseX,mouseY);
    line(-200,0,200,0); // Línea horizontal en el eje X
    line(0,-200,0,200); // Línea vertical en el eje Y
    rect(0,0,50,50);
  }else{
    text("Sin Translate", 200, 100);
    line(-200 + mouseX, mouseY, 200 + mouseX, mouseY); // Línea horizontal en el eje X
    line(mouseX,-200 + mouseY, mouseX, 200 + mouseY); // Línea vertical en el eje Y
    rect(mouseX,mouseY,50,50);
  }
}

void mouseClicked(){
  conTranslate = !conTranslate;
}
