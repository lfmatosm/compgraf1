class Question {
  String question = "Qual imagem completa a sequência?";
  ArrayList<TransformableObject> shapes = new ArrayList<TransformableObject>();
  // ArrayList<AnswerButton> options = new ArrayList<AnswerButton>();
  ArrayList<TransformableObject> options = new ArrayList<TransformableObject>();
  private int correctAnswer;
  boolean result, isActive;

  public Question() {}

  public Question(ArrayList<TransformableObject> shap,
  ArrayList<TransformableObject> opts,
  int corrAns) {
    this.shapes = shap;
    this.options = opts;
    this.correctAnswer = corrAns;
    this.isActive = true;
  }
  
  public Question(String quest, ArrayList<TransformableObject> shap,
  ArrayList<TransformableObject> opts,
  int corrAns) {
    this.question = quest;
    this.shapes = shap;
    this.options = opts;
    this.correctAnswer = corrAns;
    this.isActive = true;
  }

  void draw() {
    if (isActive) {
      textAlign(CENTER);
      textSize(20);
      fill(0, 102, 153);
      text(question, 200, 20);

      for (TransformableObject obj : shapes) obj.draw();
      for (TransformableObject b : options) b.draw();
    }
  }

  // void mousePressed() {
  //   int i = 0;
  //   for (AnswerButton b : options) {
  //     if (b.overButton())
  //   }
  // }

  int dropQuestion() {
    background(255);
    return 0;
  }
}
