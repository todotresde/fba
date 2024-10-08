let soundFile;

function preload() {
  soundFormats('mp3');
  soundFile = loadSound('data/sound.mp3');
}

function setup() {
  createCanvas(400, 400);
}


function draw() {
  
}

function keyPressed() {
  soundFile.loop();
  background(0, 200, 50);
}
function mouseReleased() {
  soundFile.pause();
  background(220);
}
