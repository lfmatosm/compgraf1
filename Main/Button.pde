class Button {
  private String message = "No message";
  private int buttonX, buttonY;
  private int buttonSizeX = 90;
  private int buttonSizeY = 90;
  private color buttonColor, buttonHighlight, baseColor;
  private color currentColor;
  private boolean buttonOver = false;

  public Button(String msg, int x, int y, int sizeX, int sizeY, color normal, color highlight) {
    message = msg;
    buttonX = x;
    buttonY = y;
    buttonSizeX = sizeX;
    buttonSizeY = sizeY;
    buttonColor = normal;
    buttonHighlight = highlight;
  }

  public Button(int x, int y, int sizeX, int sizeY, color normal, color highlight) {
    buttonX = x;
    buttonY = y;
    buttonSizeX = sizeX;
    buttonSizeY = sizeY;
    buttonColor = normal;
    buttonHighlight = highlight;
  }

  void draw() {
    update(mouseX, mouseY);

    if (buttonOver) fill(buttonHighlight);
    else fill(buttonColor);
    stroke(255);
    rect(buttonX, buttonY, buttonSizeX, buttonSizeY);

    textAlign(CENTER);
    textSize(30);
    fill(0, 102, 153);
    text(message, buttonX + (buttonX/3.5), buttonY + (buttonY/5));

  }

  void update(int x, int y) {
    if (overButton(buttonX, buttonY, buttonSizeX, buttonSizeY))
      buttonOver = true;
    else buttonOver = false;
  }

  void mousePressed() {
    if (buttonOver)
      currentColor = buttonColor;
  }

  boolean overButton(int x, int y, int width, int height)  {
    if (mouseX >= x && mouseX <= x+width &&
    mouseY >= y && mouseY <= y+height) return true;
    else return false;
  }

  int getX() {return buttonX;}
  int getY() {return buttonY;}
  int getSizeX() {return buttonSizeX;}
  int getSizeY() {return buttonSizeY;}
}
