final int MENU = 0;
final int GAME_SCREEN = 1;
final int GAME_OVER = 2;

int gameState = MENU;
Menu menu;

void setup() {
  size(800, 600);
}

void draw() {
  if (gameState == MENU) menuScreen();
  else if (gameState == GAME_SCREEN) gameScreen();
  else gameOverScreen();
}

void menuScreen() {
  background(0);
  menu = new Menu();
  menu.draw();
}

void gameScreen() {
  //Testes da classe Face.
  background(255);
  textSize(30);
  text("O jogo começou!", height/1.5, width/1.5);
  fill(0, 102, 153);
  Vertex a = new Vertex(50,50);
  Vertex b = new Vertex(50,100);
  Vertex c = new Vertex(100,100);
  Vertex d = new Vertex(100,50);

  Edge ea = new Edge(a,b, new int[]{255,0,0});
  Edge eb = new Edge(b,c, new int[]{255,255,0});
  Edge ec = new Edge(c,d, new int[]{255,0,255});
  Edge ed = new Edge(d,a, new int[]{0,255,0});

  ArrayList<Edge> edges = new ArrayList<Edge>();
  edges.add(ea);
  edges.add(eb);
  edges.add(ec);
  edges.add(ed);

  Face face = new Face(edges);
  face.draw();

  Object2D obj = new Object2D(face);
  

  //obj.translateToOrign();
  PVector centro = obj.getCenter();
  println("X - "+centro.x+"\nY - "+centro.y);
  obj.reflect(true, true);
  obj.translate(52, 0);
  obj.draw();
}

void gameOverScreen() {
  //Todo.
}

public void mousePressed() {
  if ((gameState == MENU) && (menu.mouseOverButton())) {
      gameState = GAME_SCREEN;
  }
}
