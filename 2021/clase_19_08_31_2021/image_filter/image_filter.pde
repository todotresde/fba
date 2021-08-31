PImage photo;
int sizeOfPixel;

void setup(){
  size(400,400);
  sizeOfPixel = width * height;
  photo = loadImage("shiny.jpg");
  photo.resize(width, height);
  
}

void draw(){
  photo.loadPixels();
  for (int i = 0; i < sizeOfPixel; i++) {
    color pixelColor = photo.pixels[i];
    photo.pixels[i] = color(red(pixelColor) + dist(0,0,mouseX,mouseY), green(pixelColor), blue(pixelColor));
  }
  photo.updatePixels();
  image(photo, 0, 0, width, height);
}
