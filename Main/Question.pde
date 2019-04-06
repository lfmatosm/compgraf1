class Question {
  String question = "No question.";
  ArrayList<Object2D> shapes = new ArrayList<Object2D>();
  ArrayList options = new ArrayList();

  public Question(String quest, ArrayList shap, ArrayList opts) {
    question = quest;
    shapes = shap;
    options = opts;
  }


}
