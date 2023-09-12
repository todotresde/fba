let mySound;
function preload() {
  soundFormats('mp3', 'ogg');
  mySound = loadSound('data/bell');
}

function setup() {
  createCanvas(100, 100);
}

function mousePressed() {
  if(!mySound.isPlaying()){
    mySound.play();
  }
}
