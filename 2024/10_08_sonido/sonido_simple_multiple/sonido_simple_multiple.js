let sonidoDeFondo, campana;

function preload() {
  soundFormats('mp3');
  sonidoDeFondo = loadSound('data/sound.mp3');
  campana = loadSound('data/ting-tong.mp3');
}

function setup() {
  createCanvas(400, 400);
  
  sonidoDeFondo.loop();
}


function draw() {
  
}

function keyPressed() {
  sonidoDeFondo.stop();
  campana.stop();
}

function mouseReleased() {
  if(!campana.isPlaying())
    campana.play();
}
