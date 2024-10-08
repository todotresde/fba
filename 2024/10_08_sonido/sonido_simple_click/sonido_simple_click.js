let soundFile;

function preload() {
  soundFormats('mp3');
  soundFile = loadSound('data/ting-tong.mp3');
}

function setup() {
  createCanvas(400, 400);
}


function draw() {
  
}

function keyPressed() {
}

function mouseReleased() {
  if(!soundFile.isPlaying())
    soundFile.play();
}
