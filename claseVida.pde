class Vida {
  PImage corazon;
  int x, y;

  Vida(int vx, int vy) {
    corazon = loadImage("vida.png");
    corazon.resize(120, 140);
    x = vx;
    y = vy;
  }

  void vida() {
    image(corazon, x, y);
  }
}
