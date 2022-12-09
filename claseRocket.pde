class Rocket {
  PImage rocket;
  int x, y;
  int velY;

  Rocket(int posx, int posy) {
    rocket = loadImage("rocket1.png");
   
    x = posx;
    y = posy;
    velY = 2;
  }

  void Dibujar() {
    image(rocket, x, y);
  }

  void mover() {
    if (y<0) {
      velY=2;
    }
    if (y>220) {
      velY=-2;
    }
    y=y+velY;
  }
  
  void mover1() {
    if (y<280) {
      velY=2;
    }
    if (y>500) {
      velY=-2;
    }
    y=y+velY;
  }
}
