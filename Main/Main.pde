final int MENU = 0;
final int GAME_SCREEN = 1;
final int GAME_OVER = 2;

int gameState = MENU;
Menu menu;
QuestionManager manager = new QuestionManager();

static int score = 0;

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
  background(255);

  QuestionBuilder builder = new QuestionBuilder();
  Question q1 = builder.buildQuestion(1);

  ArrayList<Question> questions = new ArrayList<Question>();
  questions.add(q1);
  manager = new QuestionManager(questions);
  manager.nextQuestion();
  
  manager.draw();
  print("Score: " + score + "\n");
    

// //level2

//   Lines3 s15 = new Lines3(50,50,50,50);
//   s15.rotate(90);
//   s15.translate(0,-7);
//   Lines2 s16 = new Lines2(50,50,50,50);
//   s16.translate(130,0);
//   s16.rotate(270);
//   Lines3 s17 = new Lines3(50,50,50,50);
//   s17.rotate(180);
//   s17.translate(200,-15);
//   Lines2 s18 = new Lines2(50,50,50,50);
//   s18.rotate(180);
//   s18.translate(35,90);
//   Lines2 s19 = new Lines2(50,50,50,50);
//   s19.translate(110,90);
//   s19.rotate(90);
//   Lines1 s20 = new Lines1(50,50,50);
//   s20.translate(200,110);
//   Lines1 s21 = new Lines1(50,50,50);
//   s21.translate(250,110);
//   Lines3 s22 = new Lines3(50,50,50,50);
//   s22.translate(10,200);
//   Square s23 = new Square(50,50,50,50);
//   s23.translate(110,200);
  
//   Lines2 s24 = new Lines2(50,50,50,50);
//   s24.translate(0,280);
//   s24.rotate(90);
//   Lines1 s25 = new Lines1(50,50,50);
//   s25.translate(120,330);
//   s25.rotate(90);
//   Lines2 s26 = new Lines2(50,50,50,50);
//   s26.translate(220,300);
//   s26.rotate(270);
//   ZShape s27 = new ZShape(50,50,50,50);
//   s27.translate(0,400);
//   Lines2 s28 = new Lines2(50,50,50,50);
//   s28.translate(100,400);
//   Lines1 s29 = new Lines1(50,50,50);
//   s29.translate(220,380);
//   s29.rotate(90);

//   s15.draw();
//   s16.draw();
//   s17.draw();
//   s18.draw();
//   s19.draw();
//   s20.draw();
//   s21.draw();
//   s22.draw();
//   s23.draw();
//   s24.draw();
//   s25.draw();
//   s26.draw();
//   s27.draw();
//   s28.draw();
//   s29.draw();
}

void gameOverScreen() {
  exit();
}

public void mousePressed() {
  if ((gameState == MENU) && (menu.mouseOverButton())) gameState = GAME_SCREEN;
  if ((gameState == GAME_SCREEN) && (manager.gameHasEnded)) {
    score += manager.handleClick();
    gameState = GAME_OVER;
  }
  if (gameState == GAME_SCREEN) score += manager.handleClick();
}
