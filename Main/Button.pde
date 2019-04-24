class Button {
  protected String message = "No message";
  protected int btnX, btnY;
  protected int btnWidth = 90;
  protected int btnHeight = 90;
  protected color btnColor, btnHighlight, baseColor;
  protected color currColor;
  protected boolean overBtn = false;

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
    text(message, btnX + btnX/1.4, btnY + btnY/5);
  }

  void update(int x, int y) {
    if (overButton(x, y)) overBtn = true;
    else overBtn = false;
  }

  void mousePressed() { if (overBtn) currColor = btnColor; }

  boolean overButton(int mX, int mY)  {
    // print("Mouse is over button at (" + btnX + "," + btnY + ")\n");
    return (mX >= btnX && mX <= btnX+btnWidth &&
        mY >= btnY && mY <= btnY+btnHeight) ? true : false;
  }

  int getX() {return btnX;}
  int getY() {return btnY;}
  int getSizeX() {return btnWidth;}
  int getSizeY() {return btnHeight;}
}
