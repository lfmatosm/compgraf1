final int MENU = 0;
final int GAME_SCREEN = 1;
final int GAME_OVER = 2;

int gameState = MENU;
Menu menu;

void setup() {
  size(800, 600);
}

void draw() {
  if (gameState == MENU) menuScreen();
  else if (gameState == GAME_SCREEN) gameScreen();
  else gameOverScreen();
}

void menuScreen() {
  background(0);
  menu = new Menu();
  menu.draw();
}

void gameScreen() {
  //Testes da classe Face.
  background(255);
  textSize(30);
  text("O jogo começou!", height/1.5, width/1.5);
  fill(0, 102, 153);

  Square t1 = new Square(50,50,50,50);

  Triangle t2 = new Triangle(150,50,50);

  Star t3 = new Star(250,50,50);

  t1.translate(20., 50.);
  t1.scale(3.);
  t1.rotate(50.);
  t1.shear(2., 1.5);
  t1.draw();

  t2.scale(2.);
  t2.draw();

  t3.rotate(40.);
  t3.draw();
}

void gameOverScreen() {
  //Todo.
}

public void mousePressed() {
  if ((gameState == MENU) && (menu.mouseOverButton())) {
      gameState = GAME_SCREEN;
  }
}
