import ddf.minim.*;

Minim minim;
AudioPlayer audioPlayer1, audioPlayer2;

void setup()
{
  size(400, 400);

  minim = new Minim(this);
  audioPlayer1 = minim.loadFile("jump.mp3");
  audioPlayer2 = minim.loadFile("bomb.mp3");
  
  textSize(20);
  fill(0);
}

void draw()
{
  background(200);
  if(audioPlayer1.isPlaying()){
    text("PLAYING JUMP!!!!", 200, 200);
  }
  
  if(audioPlayer2.isPlaying()){
    text("PLAYING BOMB!!!!", 200, 200);
  }
}

void mouseClicked(){
  audioPlayer1.rewind();
  audioPlayer1.play();
  println("HOLA MUNDO!");
}

void keyPressed(){
  audioPlayer2.rewind();
  audioPlayer2.play();
  println("HOLA MUNDO 2!");
}
