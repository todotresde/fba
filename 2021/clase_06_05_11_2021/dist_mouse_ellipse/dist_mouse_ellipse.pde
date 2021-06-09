float distancia;

void setup(){
  size(400,400);
  textSize(40);
}

void draw(){
  background(200);
  distancia = dist(width/2,height/2,mouseX,mouseY);
  line(width/2,height/2,mouseX,mouseY);
  
  if(distancia <= 100){
    noFill();
  }else{
    fill(255,0,0,50);
  }
  ellipse(width/2,height/2,200,200);
  
  fill(0);
  text("Distancia: " + distancia, 40, 200);
}
