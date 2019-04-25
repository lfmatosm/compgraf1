final int MENU = 0;
final int GAME_SCREEN = 1;
final int GAME_OVER = 2;
boolean newGame = true;

int gameState = MENU;
Menu menu;
QuestionManager manager = new QuestionManager();

static int score = 0;
int time = second();
int actualTime = 0;

void setup() {
  size(400, 600);
}

void draw() {
  if (gameState == MENU){
    menuScreen();
  } 
  else if (gameState == GAME_SCREEN){
    updateTime();
    print(actualTime);
    gameScreen();
    textSize(20);
    fill(0, 102, 153);
    text("Tempo: "+actualTime, 60, 600-10);
  } 
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
  Question q2 = builder.buildQuestion(2);
  Question q3 = builder.buildQuestion(3);
  Question q4 = builder.buildQuestion(4);
  
  ArrayList<Question> questions = new ArrayList<Question>();
  questions.add(q1);questions.add(q2);
  questions.add(q3);questions.add(q4);
 
 if(newGame == true){
  manager = new QuestionManager(questions);
  newGame = false;
 }
  manager.nextQuestion();
  manager.draw();
  print("Score: " + score + "\n");
}

void gameOverScreen() {
  exit();
}

public void mousePressed() {
  if ((gameState == MENU) && (menu.mouseOverButton())){
    gameState = GAME_SCREEN;
  } 
  if ((gameState == GAME_SCREEN) && (manager.gameHasEnded)) {
    score += manager.handleClick();
    gameState = GAME_OVER;
  }
  if (gameState == GAME_SCREEN){
    score += manager.handleClick();
  } 
}

public void updateTime(){
  actualTime = (second())-time;
}
