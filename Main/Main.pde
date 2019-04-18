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
  
  Square s2Aux = new Square(50,50,50,50);
  s2Aux.translate(100.,0.);
  s2Aux.scale(.5);
  Triangle s4Aux = new Triangle(50,50,50);
  s4Aux.translate(0., 100.);
  s4Aux.rotate(210.);
  s4Aux.scale(.5);
  
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
   
  Triangle s9Aux = new Triangle(50,50,50);
  s9Aux.rotate(30.);
  s9Aux.translate(0.,360);
  s9Aux.scale(.5);
  Square s11Aux = new Square(50,50,50,50);
  s11Aux.translate(200,350);
  s11Aux.scale(.5f);
  Triangle s12Aux = new Triangle(50,50,50);
  s12Aux.rotate(210);
  s12Aux.translate(0,450);
  s12Aux.scale(.5);
  
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
  s2Aux.draw();
  s4Aux.draw();
  s9Aux.draw();
  s11Aux.draw();
  s12Aux.draw();
  
  background(255);  
//level2

  Lines3 s15 = new Lines3(50,50,50,50);
  s15.rotate(90);
  s15.translate(0,-7);
  Lines2 s16 = new Lines2(50,50,50,50);
  s16.translate(130,0);
  s16.rotate(270);
  Lines3 s17 = new Lines3(50,50,50,50);
  s17.rotate(180);
  s17.translate(200,-15);
  Lines2 s18 = new Lines2(50,50,50,50);
  s18.rotate(180);
  s18.translate(35,90);
  Lines2 s19 = new Lines2(50,50,50,50);
  s19.translate(110,90);
  s19.rotate(90);
  Lines1 s20 = new Lines1(50,50,50);
  s20.translate(200,110);
  Lines1 s21 = new Lines1(50,50,50);
  s21.translate(250,110);
  Lines3 s22 = new Lines3(50,50,50,50);
  s22.translate(10,200);
  Square s23 = new Square(50,50,50,50);
  s23.translate(110,200);
  
  Lines2 s24 = new Lines2(50,50,50,50);
  s24.translate(0,280);
  s24.rotate(90);
  Lines1 s25 = new Lines1(50,50,50);
  s25.translate(120,330);
  s25.rotate(90);
  Lines2 s26 = new Lines2(50,50,50,50);
  s26.translate(220,300);
  s26.rotate(270);
  ZShape s27 = new ZShape(50,50,50,50);
  s27.translate(0,400);
  Lines2 s28 = new Lines2(50,50,50,50);
  s28.translate(100,400);
  Lines1 s29 = new Lines1(50,50,50);
  s29.translate(220,380);
  s29.rotate(90);

  s15.draw();
  s16.draw();
  s17.draw();
  s18.draw();
  s19.draw();
  s20.draw();
  s21.draw();
  s22.draw();
  s23.draw();
  s24.draw();
  s25.draw();
  s26.draw();
  s27.draw();
  s28.draw();
  s29.draw();
}

void gameOverScreen() {
  //Todo.
}

public void mousePressed() {
  if ((gameState == MENU) && (menu.mouseOverButton())) {
      gameState = GAME_SCREEN;
  }
}
