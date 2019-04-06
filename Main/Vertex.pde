class Vertex {
  private PVector vector;

  public Vertex(int x, int y) {
    vector = new PVector(x, y, 0);
  }

  public Vertex(int x, int y, int z) {
    vector = new PVector(x, y, z);
  }

  public Vertex(float x, float y) {
    vector = new PVector(x, y, 0);
  }

  public Vertex(float x, float y, float z) {
    vector = new PVector(x, y, z);
  }

  public float getX() {
    return this.vector.x;
  }

  public float getY() {
    return this.vector.y;
  }

  public void printVertex(){
    println("( " + vector.x + ", " + vector.y + ", " + vector.z + " )");
  }

  public void add(Vertex v){
    vector.add(v.vector);
  }

  public void add(PVector v){
    vector.add(v);
  }

  public void add(float x, float y){
    vector.x += x;
    vector.y += y;
  }

  public void add(float x, float y, float z){
    vector.x += x;
    vector.y += y;
    vector.z += z;
  }

  public void sub(Vertex v){
    vector.sub(v.vector);
  }

  public void sub(PVector v){
    vector.sub(v);
  }

  public void sub(float x, float y){
    vector.x -= x;
    vector.y -= y;
  }

  public void mult(float n){
    vector.mult(n);
  }

  public void div(float n){
    vector.div(n);
  }
}
