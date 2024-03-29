class Menu {
  String btnStartMsg = "Iniciar jogo";
  String title = "Psicotécnico v. 0.1";
  Button btnStart;

  public Menu() {
    btnStart = new Button(btnStartMsg, width/2-80, height/2-90/2, 170, 70,
    color(40), color(20));
  }

  void draw() {
    textAlign(CENTER);
    textSize(20);
    text(title, height/3, width/2);
    fill(0, 102, 153);
    btnStart.draw();
  }

  boolean mouseOverButton() {
    return btnStart.overButton(mouseX, mouseY);
  }
}
