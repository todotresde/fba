PImage imagen;

void setup(){
  size(800,300);
  imagen = loadImage("oz.jpg");
  fill(200);
}

void draw(){
  rect(0, 0, width, height);
  fill(#7AC682);
  triangle(550,300,650,50,700,300);
  fill(#B9A842);
  triangle(650,300,700,100,800,300);
  fill(#139D60);
  triangle(350,300,500,-50,600,300);
  fill(#A7F1FF);
  triangle(500,300,600,100,650,300);
  image(imagen, 0, 0, 400, 300);
}

void mouseMoved(){
  fill(#0A6576);
}
