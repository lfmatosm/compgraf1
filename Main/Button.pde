class Button {
  protected String message = "No message";
  protected int btnX, btnY;
  protected int btnWidth = 90;
  protected int btnHeight = 90;
  protected color btnColor, btnHighlight, baseColor;
  protected color currColor;
  protected boolean overBtn = false;

  public final color DEFAULT_REGULAR_COLOR = color(255, 255, 255);
  public final color DEFAULT_HIGHLIGHT_COLOR = color(200, 200, 200);

  public Button(String msg, int x, int y, int sizeX, int sizeY, color normal, color highlight) {
    message = msg;
    btnX = x;
    btnY = y;
    btnWidth = sizeX;
    btnHeight = sizeY;
    btnColor = normal;
    btnHighlight = highlight;
  }

  public Button(int x, int y, int sizeX, int sizeY, color normal, color highlight) {
    btnX = x;
    btnY = y;
    btnWidth = sizeX;
    btnHeight = sizeY;
    btnColor = normal;
    btnHighlight = highlight;
  }

  void draw() {
    update(mouseX, mouseY);

    if (overBtn) fill(btnHighlight);
    else fill(btnColor);
    stroke(255);
    rect(btnX, btnY, btnWidth, btnHeight);

    textAlign(CENTER);
    textSize(30);
    fill(0, 102, 153);
    text(message, btnX + (btnX/3.5), btnY + (btnY/5));
  }

  void update(int x, int y) {
    if (overButton())
      overBtn = true;
    else overBtn = false;
  }

  void mousePressed() {
    if (overBtn) currColor = btnColor;
  }

  boolean overButton()  {
    if (mouseX >= btnX && mouseX <= btnX+btnWidth &&
    mouseY >= btnY && mouseY <= btnY+btnHeight) return true;
    else return false;
  }

  int getX() {return btnX;}
  int getY() {return btnY;}
  int getSizeX() {return btnWidth;}
  int getSizeY() {return btnHeight;}
}
