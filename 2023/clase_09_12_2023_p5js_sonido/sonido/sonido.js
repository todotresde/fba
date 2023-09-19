let mySound;
function preload() {
  soundFormats('mp3');
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
