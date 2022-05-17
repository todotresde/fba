void dibujarPersonajeFrameCount() {
  if(frameCount%30 == 0){
    counter++;
  }
  
  if (counter > 25) {
    counter = 16;
  }
  image = loadImage("frame" + counter + ".png");
}
