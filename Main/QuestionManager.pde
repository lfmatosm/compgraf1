class QuestionManager {
  ArrayList<Question> questions = new ArrayList<Question>();
  int currIndex = -1;
  Question current = null;
  boolean gameHasEnded = false;
  boolean answered = true;

  public QuestionManager() {}

  public QuestionManager(ArrayList<Question> questionList) {
    questions = questionList;
  }

  public void nextQuestion() {
    if(answered){
      if (this.hasNextQuestion()){
        current = questions.get((++currIndex) % questions.size());
      }
      if (current != null){
        answered = false;
        this.dropQuestion();
      }
      else gameHasEnded = true;
    }
  }

  void dropQuestion() {
    background(255);
  }

  public boolean hasNextQuestion() { return (currIndex < questions.size()-1) ? true : false; }

  void draw() {
    if (current != null) current.draw();

    textAlign(CENTER);
    textSize(20);
    fill(0, 102, 153);
    text((currIndex+1) + "/" + questions.size(), width-(width/2), height-(height/40));
  }

  int handleClick() {
    if (current != null) {
      int pressedIndex = current.getPressedButton();
      if (pressedIndex > -1) {
        int total = (pressedIndex == current.correctAnswer) ? current.value : 0;
        this.nextQuestion();
        answered = true;
        return total;
      }
    }
    return 0;
  } 
}
