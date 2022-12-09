class Principal {
  int cantidad = 3;
  int escenarios;
  Limites [] lim = new Limites[4];
  Rocket [] rockets = new Rocket [1]; //arreglos
  Rocket [] rockets1 = new Rocket [1];
  Vida [] vidaE = new Vida [cantidad];

  Eco e;//asigno las clases
  Fondos f;
  Pokeball p;
  int disR = 350;

  Principal () {//constructor
    for (int i=0; i<rockets.length; i++) {
      rockets [i] = new Rocket(190+i*disR, 0);
      rockets1 [i] = new Rocket(550+i*disR, 500);
    }
    for (int i=0; i<cantidad; i++) {
      vidaE [i] = new Vida(490+i*50, -30);
    }
    e = new Eco (140, 40, 3);
    f = new Fondos ();
    p = new Pokeball();
  }

  void display() {
    escenarios();
  }

  void jugando() {//esta el juego
    f.mapa();
    e.dibujar();
    p.objetivo();
    for (int i=0; i<rockets.length; i++) {
      rockets [i].mover();
      rockets [i].Dibujar();
    }
    for (int i=0; i<rockets.length; i++) {
      rockets1 [i].mover1();
      rockets1 [i].Dibujar();
    }
    capturado();
    andando();
  }

  void andando() {//muestra las vidas
    for (int i=0; i<cantidad; i++) {
      vidaE [i].vida();
    }
  }

  void capturado() {//colision con rocket
    for (int i=0; i<rockets.length; i++) {
      float distancia = dist(e.x, e.y, rockets[i].x, rockets[i].y);
      if (distancia<30) {
        cantidad = cantidad - 1;
        e.x = 140;
        e.y = 40;
      }
    }
    for (int i=0; i<rockets.length; i++) {
      float distancia = dist(e.x, e.y, rockets1[i].x, rockets1[i].y);
      if (distancia<30) {
        cantidad = cantidad - 1;
        e.x = 140;
        e.y = 40;
      }
    }
  }

  void moverEco(int tecla) {//mueve al peesonaje
    if (e.y<520) {
      if (tecla == DOWN ) {
        e.y += 3;
      }
    }
    if (e.y>0) {
      if (tecla == UP) {
        e.y -=3;
      }
    }
    if (e.x>0) {
      if (tecla == LEFT) {
        e.x -=3;
      }
    }

    if (e.x<630) {
      if (tecla == RIGHT) {
        e.x +=3;
      }
    }
  }


  void escenarios() {//diferentes fondos
    if (escenarios == 0) {
      f.inicio();
    }
    if (escenarios == 1) {
      f.reglas();
    }
    if (escenarios == 2) {
      jugando();
    }
    if (escenarios == 3) {
      f.ganaste();
    }
    if (escenarios == 4) {
      f.perdiste();
    }
    if (escenarios == 5) {
      f.fin();
    }
  }

  void cambiarEscenarios (int tecla) {//cambio de fondos
    if (escenarios == 0) {
      if (tecla == 'E' || tecla == 'e') {
        escenarios = 1;
      }
    }
    if (escenarios == 1) {
      if (tecla == 'J' || tecla == 'j') {
        escenarios = 2;
      }
    }
    if (escenarios == 2) {
      float distancia2 = dist(e.x, e.y, p.px, p.py);
      if (distancia2<60) {
        escenarios = 3;
      }
    }
    if (escenarios == 3 || escenarios == 4) {
      cantidad = 3;
      e.x = 140;
      e.y = 40;
      if (tecla == 'R' || tecla == 'r') {
        escenarios = 2;
      }
      if (tecla == 'C' || tecla == 'c') {
        escenarios = 5;
      }
    }
    if (escenarios == 5) {
      if (tecla == 'V' || tecla == 'v') {
        escenarios = 0;
      }
    }
  }

  void perder() {//pierde el juego
    if (cantidad == 0 ) {
      escenarios = 4;
    }
  }
}
