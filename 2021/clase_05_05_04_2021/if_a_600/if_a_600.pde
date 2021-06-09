int a = 1;

void setup(){
  size(400,400);
}

void draw(){
  background(200);
  a++;// a = a + 1 // 0, 1, 2,
  
  if(a < 600){
    ellipse(100,100,100,100);
  }
  
  ellipse(mouseX, mouseY, 100, 100);
  
  println(a);
}
