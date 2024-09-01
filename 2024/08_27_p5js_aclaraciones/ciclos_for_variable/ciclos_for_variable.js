let mySound;

function preload(){
  soundFormats('mp3', 'ogg')
  mySound = loadSound('data/doorbell');
}

function setup() {
  createCanvas(400,400);
}


function draw() {
  let tam; // undefined, null
  background(65,45,203);
  for(let i=0; i<10; i++){
    if(i%2 === 0){
      print(tam*40);//NaN
      rect(tam*40, 40, 40, 40);
    }
  }
  
}

function mousePressed() {
  mySound.play();
}
