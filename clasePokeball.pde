class Pokeball {
  PImage pokeball;
  int px;
  int py;

  Pokeball () {
    px = 370;
    py = 570;
    pokeball = loadImage("pokeball.png");
    pokeball.resize(20, 20);
  }

  void objetivo() {
    image(pokeball, px, py);
  }
}
