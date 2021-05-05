PImage imgOriginal;
PImage imgModificada;
PFont tipografiaTitulo;
PFont tipografiaSubtitulo;

int transparenciaTitulo = 0;
int mitadPantalla;
int posYSubtitulo = 500;

void setup(){
  size(800,400);
  imgOriginal = loadImage("portada-original.jpg");
  imgModificada = loadImage("portada-modificada.jpg");
  tipografiaTitulo = loadFont("BerlinSansFB-Bold-48.vlw");
  tipografiaSubtitulo = loadFont("BlackadderITC-Regular-20.vlw");
  
  mitadPantalla = width/2;
}

void draw(){
  //Dibujo la imágen original en la mitad derecha de la pantalla
  image(imgOriginal,0,0,mitadPantalla,height);
  //Dibujo la imágen original en la mitad izquierda de la pantalla
  image(imgModificada,mitadPantalla,0,mitadPantalla,height);
  
  //Dibujo el título
  fill(#E3A710, transparenciaTitulo);
  textFont(tipografiaTitulo, 40);
  text("Estas ahi,", mitadPantalla + 150, 50);
  textSize(60);
  text("monstruo?", mitadPantalla + 100, 150);
  
  transparenciaTitulo++;
  
  //Dibujo el subtitulo
  fill(#E3A710);
  textFont(tipografiaSubtitulo, 25);
  text("Mete la mano\nen los escondites\ndel monstruo ...\nsi te atreves!!!!", 
    mitadPantalla + 250, posYSubtitulo);
}

void mouseMoved(){

  //Calculo el mouse se mueve mas allá del pixel 700 en X
  if(mouseX > mitadPantalla + 300){
    //Calculo el mouse se mueve mas allá del pixel 150 en Y
    if(mouseY > 150){
      //Calculo el mouse se mueve mas acá del pixel 250 en Y
      if(mouseY < 250){
        //Aproximadamente, me muevo en la araña
        posYSubtitulo = posYSubtitulo - 1;
      }
    }
  }
}
