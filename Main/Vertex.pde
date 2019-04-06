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

  public void add(Vertex v){
    vetor.add(v.vetor);
  }

  public void add(PVector v){
    vetor.add(v);
  }

  public void add(float x, float y){
    vetor.x += x;
    vetor.y += y;
  }

  public void add(float x, float y, float z){
    vetor.x += x;
    vetor.y += y;
    vetor.z += z;
  }

  public void sub(Vertex v){
    vetor.sub(v.vetor);
  }

  public void sub(PVector v){
    vetor.sub(v);
  }

  public void sub(float x, float y){
    vetor.x -= x;
    vetor.y -= y;
  }

  public void mult(float n){
    vetor.mult(n);
  }

  public void div(float n){
    vetor.div(n);
  }
}
