class Question {
  String question = "No question.";
  ArrayList<TransformableObject> shapes = new ArrayList<TransformableObject>();
  ArrayList<Button> options = new ArrayList<Button>();
  private int correctAnswer;
  boolean result;

  public Question(String quest, ArrayList<TransformableObject> shap,
  ArrayList<Button> opts,
  int corrAns) {
    this.question = quest;
    this.shapes = shap;
    this.options = opts;
    this.correctAnswer = corrAns;
  }
}
