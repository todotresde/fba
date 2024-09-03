let numerosPares = [];

function setup() {
  createCanvas(400, 400);
  //Directo
  //numerosPares = [2,4,6,8,10,12,14,16,18,20];
  
  ////Recorriendo con 2 variables
  //let posArreglo = 0;
  //for(let i=2; i<=20; i+=2){
  //  numerosPares[posArreglo] = i;
  //  posArreglo++;
  //}
  
  //Recorriendo con 1 variable + formula
  for(let i=0; i<10; i+=1){
    numerosPares[i] = (i*2) + 2;
  }
  
  print(numerosPares);
}


function draw() {
  
}
