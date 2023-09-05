function dibujarPersonaje(){
  if(vida > 0){
    fill(0,0,255);
    rect(posX, posY, 20, 50);
    
    moverPersonaje();
    dibujarVida();
    
    modificarSalto();
  }
}

function moverPersonaje(){
  if(keyIsPressed){
    if(keyCode == LEFT_ARROW){
      posX-=incrementoPosX;
    }else if(keyCode == RIGHT_ARROW){
      posX+=incrementoPosX;
    }else if(keyCode == UP_ARROW){
      iniciarSalto();
    }else if(keyCode == DOWN_ARROW){
      
    }
  }
 
}

function dibujarVida(){
  fill(255,0,0);
  rect(posX, posY - 10, map(vida, 0, 100, 0, 20), 5);
}

function iniciarSalto(){
  if(!personajeEstaSaltando){
    personajeEstaSaltando = true;
  }
}

function modificarSalto(){
  if(personajeEstaSaltando){
    incrementoPosX = 2;
    posY = posY + direccionSalto;
    
    if(posYInicial - posY >= alturaSalto){
      direccionSalto = direccionSalto * -1;
    }
    if(posYInicial - posY <= 0){
      personajeEstaSaltando = false;
      direccionSalto = -1;
      posY = posYInicial;
    }
  }
}
