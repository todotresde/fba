let palabras = [];
let velocidad = [];
let altura = [];
let cant = 10;
let tam;

function setup() {
  createCanvas(400, 400);
  tam = width/cant;
  textSize(30);
  
  for(let i=0; i<cant; i+=1){
    palabras.push("Hola " + i);
    velocidad.push(random(1,2));
    altura.push(random(-400,-100));
  }
  
}


function draw() {
  background(200);
  
  for(let i=0; i<cant; i+=1){
    text(palabras[i], i * 5, altura[i]);
    altura[i] = altura[i] + velocidad[i];
  }
}

function mousePressed(){
  print(palabras, velocidad, altura);
}
