class Question {
  String question = "No question.";
  ArrayList<Object2D> shapes = new ArrayList<Object2D>();
  ArrayList<Button> options = new ArrayList<Button>();
  private int correctAnswer;

  public Question(String quest, ArrayList<Object2D> shap, ArrayList<Button> opts,
  int corrAns) {
    this.question = quest;
    this.shapes = shap;
    this.options = opts;
    this.correctAnswer = corrAns;
  }


}
