let cantFilas = 3;
let cantTroncos = 3;
let posX = [];
let posY = [];
let inicioPosX = 50;

function setup() {
  createCanvas(500, 500);
  for(let i=0; i<cantFilas; i++){
    posX[i] = [];
    posY[i] = [];
    inicioPosX = random(-100, 50);
    for(let j=0; j<cantTroncos; j++){
      posX[i][j] = (j * 100) + inicioPosX;
      posY[i][j] = (i * 100) + 100;
    }
  }
}


function draw() {
  console.log(posX);
  background(200);
  for(let i=0; i<cantFilas; i++){
    for(let j=0; j<cantTroncos; j++){
      rect(posX[i][j], posY[i][j] , 50, 20);
      
      if(i%2==0){
        posX[i][j]++;
        
        if(posX[i][j] > 500){
          posX[i][j] = -100;
        }
      }else{
        posX[i][j]--;
        
        if(posX[i][j] < -100){
          posX[i][j] = 500;
        }
      }
      
      
    }
  }
}
