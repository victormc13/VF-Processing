class Pokeball {
  PImage pokeball;
  int px;
  int py;

  Pokeball () {//constructor
    px = 370;
    py = 570;
    pokeball = loadImage("pokeball.png");
    pokeball.resize(25, 25);
  }

  void objetivo() { //ganar
    image(pokeball, px, py);
  }
}
