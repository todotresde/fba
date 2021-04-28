int laPosDeMiEllipse;

void setup(){
  size(400, 400);
  laPosDeMiEllipse = 1;
  textSize(20);
}

void draw(){
  background(200);
  laPosDeMiEllipse = laPosDeMiEllipse + 1;// laPosDeMiEllipse++;
  ellipse(laPosDeMiEllipse,laPosDeMiEllipse,mouseX,mouseY);
  
  text("laPosDeMiEllipse: " + laPosDeMiEllipse, 100, 100);
}
