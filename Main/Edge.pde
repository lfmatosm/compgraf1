class Edge{
  private Vertex a;
  private Vertex b;

  public Edge(Vertex a, Vertex b){
    this.a = a;
    this.b = b;
  }

  public void draw(){
    line(a.getX(), a.getY(), b.getX(), b.getY());
  }
}
