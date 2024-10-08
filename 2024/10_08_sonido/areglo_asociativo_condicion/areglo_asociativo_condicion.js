let misTextos = {
  "inicio": "Bienvenidos!",
  "pantalla1": "Esta es la pantalla 1",
  "pantalla2": "Esta es la pantalla 2",
  "creditos": "Pantalla de créditos"
};

let pantallaActiva = "inicio";

let pantallas = {
  "inicio": ["pantalla1"],
  "pantalla1": ["pantalla2","creditos"],
  "pantalla2": ["creditos"],
  "creditos": ["inicio"],
};

function preload() {

}

function setup() {
  createCanvas(600, 400);
  textSize(40);
}


function draw() {
  background(200);
  text(misTextos[pantallaActiva], 50, 50);
}

function mousePressed() {
  if(pantallas[pantallaActiva].length === 1)
    pantallaActiva = pantallas[pantallaActiva][0];
  else if(pantallas[pantallaActiva].length === 2) {
    pantallaActiva = pantallas[pantallaActiva][1];
  }
}
