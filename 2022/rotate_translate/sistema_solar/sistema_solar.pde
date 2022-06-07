int distAlSol = 100;
int angulo1 = 1;

void setup(){
  size(600, 600);
}

void draw(){
  background(200);
  
  translate(width/2, height/2);
  fill(255,255,0);
  ellipse(0,0, 100, 100);
  
  for(int i=1; i<4; i++){
    pushMatrix();
    rotate(radians((angulo1*i)/2));
    fill(0,255,0);
    ellipse(i*distAlSol,0,50,50);
    
    pushMatrix();
    translate(i*distAlSol,0);
    rotate(radians(-angulo1*3));
    fill(100);
    ellipse(40,0,10,10);
    popMatrix();
    
    popMatrix();
  }
  
  angulo1++;
}
