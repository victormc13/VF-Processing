class Rocket {
  PImage rocket;
  int x, y;
  int velY;

  Rocket(int posx, int posy) {
    rocket = loadImage("rocket1.png");
    //rocket.resize(40, 50);
    x = posx;
    y = posy;
    velY = 5;
  }

  void Dibujar() {
    image(rocket, x, y);
  }

  void Mueve() {
    if (y<0) {
      velY=5;
    }
    if (y>530) {
      velY=-5;
    }
    y=y+velY;
  }
}
