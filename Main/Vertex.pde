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
  
    public float[][] multMat(float[][] a, float[][] b) {

    int aRows = a.length;
    int aColumns = a[0].length;
    int bRows = b.length;
    int bColumns = b[0].length;

    if (aColumns != bRows) {
        throw new IllegalArgumentException("A:Rows: " + aColumns + " did not match B:Columns " + bRows + ".");
    }

    float[][] c = new float[aRows][bColumns];
    for (int i = 0; i < aRows; i++) {
        for (int j = 0; j < bColumns; j++) {
            c[i][j] = 0.00000;
        }
    }

    for (int i = 0; i < aRows; i++) { // aRow
        for (int j = 0; j < bColumns; j++) { // bColumn
            for (int k = 0; k < aColumns; k++) { // aColumn
                c[i][j] += a[i][k] * b[k][j];
            }
        }
    }
    vetor.x = c[0][0];
    vetor.y = c[1][0];
    return(c);
  }
}
