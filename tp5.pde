//tp5
//Alumno: Bernal Facundo
//Legajo: 91488/1
//LINK DEL VIDEO: 

import processing.sound.*;
SoundFile fondo;
Principal pr;

void setup() {
  fondo = new SoundFile(this, "sonido.wav", true);
  fondo.loop();
  size(700, 600);
  pr = new Principal ();
}

void draw() {
  pr.display();
  if (keyPressed && pr.escenarios==2) {
    pr.moverEco(keyCode);
  }
  pr.perder();
}

void keyPressed() {
  pr.cambiarEscenarios(keyCode);
}
