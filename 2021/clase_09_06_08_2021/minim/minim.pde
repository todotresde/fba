import ddf.minim.*;

Minim minim;
AudioPlayer player;

void setup()
{
  size(400, 400);

  minim = new Minim(this);
  player = minim.loadFile("jump.mp3");
  
  textSize(20);
  fill(0);
}

void draw()
{
  background(200);
  if(player.isPlaying()){
    text("PLAYING!!!!", 200, 200);
  }
}

void mouseClicked(){
  player.rewind();
  player.play();
  println("HOLA MUNDO!");
}
