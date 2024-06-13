
int i = 0;
void setup(){
  size(400, 400);
  
  // i=0 => j=0, j=1, j=2, ... j=8, j=9  
  // i=1 => j=0, j=1, j=2, ... j=8, j=9  
  // i=2 => j=0, j=1, j=2, ... j=8, j=9
  //...
  // i=9 => j=0, j=1, j=2, ... j=8, j=9
  for(int i=0; i < 10; i++){
    for(int j=0; j < 10; j++){
      println(i, j); // => 100 veces => cant i * cant j
    }
  }
  noLoop();
  
}

void draw(){
  
}
