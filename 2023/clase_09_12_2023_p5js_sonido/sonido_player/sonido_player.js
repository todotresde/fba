let posX = 100;
let mySound;
let tiempoTotal = 0;
let tiempoActual = 0;

function preload() {
  soundFormats('mp3', 'ogg');
  mySound = loadSound('data/bell');
}

function setup() {
  createCanvas(400, 400);
}

function draw(){
  background(200);
  fill(0);
  line(50, 200, 350, 200);
  fill(255,0,0);
  rect(posX, 180, 10, 40);
  
  tiempoTotal = mySound.duration();
  tiempoActual = mySound.currentTime();
  posX = map(tiempoActual, 0, tiempoTotal, 50, 350);
}

function mousePressed() {
  if(!mySound.isPlaying()){
    mySound.play();
  }else{
    mySound.pause();
  }
}
