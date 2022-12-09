class Eco {
  int x, y, i;
  PImage [] eco;
  Eco (int x, int y, int i) { // constructor
    this.x = x;
    this.y = y;
    this.i = i;
    eco = new PImage[4];

    for  (i = 0; i<eco.length; i ++) {
      eco[i] = loadImage("eco3.png");
    }
  }
  void dibujar () { // pone a Eco en patalla
    image(eco[i], x, y, 30, 40);
  }

  void mover (int precionar) { // mueve a Eco
    if (precionar == RIGHT) {
      x +=17;
      i = 0;
    }
    if (precionar == LEFT) {
      x -=17;
      i=1;
    }
    if (precionar == UP) {
      y -=17;
      i=2;
    }
    if (precionar == DOWN) {
      y +=17;
      i=3;
    }
  }
}
