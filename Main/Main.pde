final int MENU = 0;
final int GAME_SCREEN = 1;
final int GAME_OVER = 2;

int gameState = MENU;
Menu menu;

void setup() {
  size(400, 600);
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


//level1
  Triangle s1 = new Triangle(50,50,50);
  s1.rotate(30.);
  s1.translate(0.,10.);
  Square s2 = new Square(50,50,50,50);
  s2.translate(100.,0.);
  Triangle s3 = new Triangle(50,50,50);
  s3.translate(220.,-10.);
  s3.rotate(90.);
  Triangle s4 = new Triangle(50,50,50);
  s4.translate(0., 100.);
  s4.rotate(210.);
  Triangle s5 = new Triangle(50,50,50);
  s5.rotate(30.);
  s5.translate(110.,110.);
  Square s6 = new Square(50,50,50,50);
  s6.translate(210,100);
  Square s7 = new Square(50,50,50,50);
  s7.translate(-10., 200);
  Triangle s8 = new Triangle(50,50,50);
  s8.translate(110.,190.);
  s8.rotate(90.);
  Triangle s9 = new Triangle(50,50,50);
  s9.rotate(30.);
  s9.translate(0.,360);
  Square s10 = new Square(50,50,50,50);
  s10.translate(100,350);
  Square s11 = new Square(50,50,50,50);
  s11.translate(200,350);
  Triangle s12 = new Triangle(50,50,50);
  s12.rotate(210);
  s12.translate(0,450);
  Triangle s13 = new Triangle(50,50,50);
  s13.translate(110,460);
  s13.rotate(30);
  Triangle s14 = new Triangle(50,50,50);
  s14.rotate(210);
  s14.translate(210,440);
  
  
  
  s1.draw();
  s2.draw();
  s3.draw();
  s4.draw();
  s5.draw();
  s6.draw();
  s7.draw();
  s8.draw();
  s9.draw();
  s10.draw();
  s11.draw();
  s12.draw();
  s13.draw();
  s14.draw();
}

void gameOverScreen() {
  //Todo.
}

public void mousePressed() {
  if ((gameState == MENU) && (menu.mouseOverButton())) {
      gameState = GAME_SCREEN;
  }
}
