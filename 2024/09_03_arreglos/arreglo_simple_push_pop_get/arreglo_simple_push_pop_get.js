let numerosPares = [];

function setup() {
  createCanvas(400, 400);
  
  for(let i=0; i<10; i+=1){
    //numerosPares[i] = (i*2) + 2;
    numerosPares.push((i*2) + 2);
  }
  print(numerosPares);
  
  for(let i=0; i<5; i+=1){
    numerosPares.pop();
  }
  
  print(numerosPares);
}


function draw() {
  
}
