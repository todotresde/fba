import processing.sound.*;

SoundFile fileEffect, fileTrack;
boolean inicioFileTrack = false;

void setup() {
  size(640, 360);
  background(0);
  textSize(30);
  background(255);
  // Load a soundfile from the /data folder of the sketch and play it back
  fileEffect = new SoundFile(this, "sonidos/effect.wav"); 
  fileTrack = new SoundFile(this, "sonidos/bandasonora.mp3"); 
  
}      

void draw() {
  background(200);
  if(inicioFileTrack && !fileEffect.isPlaying()){
    fill(0);
    text("Terminó!", 100, 100);
  }
  
}

void mouseClicked() {
  fileEffect.play();
  inicioFileTrack = true;
}

void keyPressed() {
  if(keyCode == ENTER){
    fileTrack.play();
  }
  if(key == ' '){
    fileTrack.stop();
  }
  
}
