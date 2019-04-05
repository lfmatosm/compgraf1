class Vertex {
  private PVector vetor;

  public Vertex(int x, int y) {
    vetor = new PVector(x, y, 0);
  }

  public Vertex(int x, int y, int z) {
    vetor = new PVector(x, y, z);
  }

  public float getX() {
    return this.vetor.x;
  }

  public float getY() {
    return this.vetor.y;
  }
  
  public void printVertex(){
    println("( " + vetor.x + "; " + vetor.y + "; " + vetor.z + " )");
  }
  
  

}

/*
void setup(){
 size(800,600);
 background(0);
 }
 
 void draw(){
 Vertex vertice1 = new Vertex(30,30);
 Vertex vertice2 = new Vertex(500,30);
 
 stroke(255);
 line(vertice1.getX(), vertice1.getY(), vertice2.getX(), vertice2.getY());
 }
 */
