import processing.video.*;

Movie myMovie;

void setup() {
  size(360, 240);
  myMovie = new Movie(this, "odin.mp4");
  myMovie.play();
}

void draw() {
  image(myMovie, 0, 0, width, height);
}

void movieEvent(Movie m) {
  m.read();
}
