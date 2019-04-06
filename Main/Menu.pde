class Menu{
  String btnStartMsg = "Iniciar jogo";
  String title = "Psicotécnico v. 0.1";
  Button btnStart;

  public Menu() {
    btnStart = new Button(btnStartMsg, width/2-90-10, height/2-90/2, 170, 70,
    color(40), color(20));
  }

  void draw() {
    textAlign(CENTER);
    textSize(30);
    text(title, height/1.5, width/1.5);
    fill(0, 102, 153);
    btnStart.draw();
  }

  boolean mouseOverButton() {
    return btnStart.overButton(btnStart.getX(), btnStart.getY(), btnStart.getSizeX(),
    btnStart.getSizeY());
  }
}
