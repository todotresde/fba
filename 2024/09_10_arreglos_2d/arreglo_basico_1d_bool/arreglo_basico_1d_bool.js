let posiciones = [];
let tam;
let posX = 0;
let cant = 10;

function setup() {
  createCanvas(400, 400);
  tam = width/cant;
  
  for(let i=0; i<cant; i+=1){
    posiciones[i] = false;
  }
  print(posiciones);
}


function draw() {
  background(200);
  
  for(let i=0; i<cant; i+=1){
    if(posiciones[i] === true){
      fill(0);
    }else{
      fill(255);
    }
    rect(i*tam, 100, tam, tam);
  }
}

function mousePressed(){
  for(let i=0; i<cant; i+=1){
    if(mouseX > i*tam && mouseX < i*tam + tam && mouseY > 100 && mouseY < 100 + tam){
      posiciones[i] = !posiciones[i]; 
    }
  }
  print(posiciones);
}
