let tam;

function setup() {
  createCanvas(400,400);
}


function draw() {
  if(tam != undefined){
    rect(100, 100, tam, tam);
  }else{
    ellipse(100,100,50,50);
  }
}

function mouseClicked(){
  tam = 50;
}
