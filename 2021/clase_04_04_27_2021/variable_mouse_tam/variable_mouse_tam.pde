int laPosDeMiEllipse;

void setup(){
  size(400, 400);
  laPosDeMiEllipse = 1;
  textSize(20);
  frameRate(10);
}

void draw(){
  background(200);
  laPosDeMiEllipse = laPosDeMiEllipse + 1;// laPosDeMiEllipse++;
  fill(255);
  ellipse(width/2, height/2, laPosDeMiEllipse,laPosDeMiEllipse);
  
  fill(255,0,0,10);
  rectMode(CENTER);//CORNER, CORNERS
  rect(width/2, height/2, width - laPosDeMiEllipse, width - laPosDeMiEllipse);
  
  fill(0);
  text("laPosDeMiEllipse: " + laPosDeMiEllipse, 100, 100);
  text("width - laPosDeMiEllipse: " + (width - laPosDeMiEllipse), 100, 200);
}
