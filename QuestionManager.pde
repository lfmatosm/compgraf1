class QuestionManager {
  ArrayList<Question> questions = new ArrayList<Question>();
  int currentQuest = 0;

  public QuestionManager(ArrayList questionList) {
    questions = questionList;
  }

  public void invokeQuestion(){
    
  }


  public String CountPoints(){
    int sum = 0;
    int total = 0;
    for(Question q : questions){
      if(q.result == true){
        sum += 1;
      }
      total += 1;
    }
    return("You've answered correctly " + sum + " questions of " + total);
  }  
}
