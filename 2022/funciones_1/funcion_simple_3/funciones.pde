void dibujarPersonajeConTeclas(){
  if(keyCode == RIGHT){
     counter++;
     if(counter > 25){
       counter = 16;
     }
     image = loadImage("frame" + counter + ".png");
   }
   
   if(keyCode == LEFT){
     counter--;
     if(counter < 16){
       counter = 25;
     }
     image = loadImage("frame" + counter + ".png");
   }
}
