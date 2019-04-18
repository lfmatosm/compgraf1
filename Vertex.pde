class Vertex {
  public PVector vector;

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

  public void setX(float x){
    this.vector.x = x;
  }

   public void setY(float y){
    this.vector.y = y;
  }

  public void setXY(float x, float y){
    this.vector.x = x;
    this.vector.y = y;
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

  public double euclideanDistanceTo(Vertex other) {
    return Math.sqrt(Math.pow((double)this.vector.x-other.getX(), 2) +
           Math.pow((double)this.vector.y-other.getY(), 2));
  }

  public boolean biggerThan(Vertex other) {
    if ((this.vector.x < other.getX()) && (this.vector.y > other.getY())) return true;
    else return false;
  }

  //Converte o vértice para uma representação em matriz com coordenada homogênea.
  public float[][] toMatrix() {
    return new float[][]{{this.vector.x}, {this.vector.y}, {1}};
  }

  //Converte uma dada matriz de representação para o vértice atual.
  public void toVertex(float[][] mtx) {
    this.vector = (mtx[2][0] == 0.) ?
                new PVector(mtx[0][0], mtx[1][0], 0.) :
                new PVector(mtx[0][0], mtx[1][0], mtx[2][0]);
  }

  public String toString() { return "(" + this.vector.x + ", " + this.vector.y + ")\n"; }
}
