let numerosPares = [];
let cant = 10;
let tam;
let posX = 0;

function setup() {
  createCanvas(400, 400);
  tam = width/cant;
  
  for(let i=0; i<10; i+=1){
    numerosPares.push((i*2) + 2);
  }
}


function draw() {
  background(200);
  
  for(let i=0; i<10; i+=1){
    if(posX === i){
      fill(0);
    }else{
      fill(255);
    }
    rect(i*tam, 100, tam, tam);
  }
}

function mousePressed(){
  for(let i=0; i<10; i+=1){
    if(mouseX > i*tam && mouseX < i*tam + tam && mouseY > 100 && mouseY < 100 + tam){
      posX = i;
    }
  }
}
