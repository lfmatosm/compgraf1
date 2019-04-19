class Question {
  String question = "Qual imagem completa a sequência?";
  ArrayList<TransformableObject> shapes = new ArrayList<TransformableObject>();
  ArrayList<AnswerButton> options = new ArrayList<AnswerButton>();
  int correctAnswer, value;
  public int result = 0;
  private boolean isActive, btnPressed;

  public Question() {}

  public Question(ArrayList<TransformableObject> shap,
  ArrayList<AnswerButton> opts,
  int corrAns, int val) {
    this.shapes = shap;
    this.options = opts;
    this.correctAnswer = corrAns;
    this.isActive = true;
    this.value = val;
  }
  
  public Question(String quest, ArrayList<TransformableObject> shap,
  ArrayList<AnswerButton> opts,
  int corrAns, int val) {
    this(shap, opts, corrAns, val);
    this.question = quest;
  }

  void draw() {
    if (isActive) {
      textAlign(CENTER);
      textSize(20);
      fill(0, 102, 153);
      text(question, 200, 20);

      for (TransformableObject obj : shapes) obj.draw();
      for (AnswerButton b : options) b.draw();
    }
    
  }

  int getPressedButton() {
    int i = 0;
    for (AnswerButton b : options) {
      if (b.overButton(mouseX, mouseY)) {
        print("Button " + i + " clicked.\n");
        btnPressed = true;
        isActive = false;
        return i;
      } 
      i++;
    }
    return -1;
  }
}
