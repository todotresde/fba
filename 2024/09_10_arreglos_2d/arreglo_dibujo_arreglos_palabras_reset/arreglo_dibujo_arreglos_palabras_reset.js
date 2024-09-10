let palabras = [];
let velocidad = [];
let altura = [];
let cant = 10;
let tam;

function setup() {
  createCanvas(400, 400);
  tam = width/cant;
  ancho = width/cant;
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
    text(palabras[i], i * ancho, altura[i]);
    altura[i] = altura[i] + velocidad[i];
    
    if(altura[i] > (height + 50)) {
      altura[i] = random(-400,-100);
      velocidad[i] = random(1,4);
    }
  }
}

function mousePressed(){
  print(palabras, velocidad, altura);
}
