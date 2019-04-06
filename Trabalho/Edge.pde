class Edge{
  private Vertex a;
  private Vertex b;
  
  public Edge(Vertex a, Vertex b){
    this.a = a;
    this.b = b; 
  }
  
  public Vertex getVertexA(){
    return a;
  }
  
  public Vertex getVertexB(){
    return b;
  }
  
  public void setVertexA(Vertex outro){
    a = outro;
  }
  
  public void setVertexB(Vertex outro){
    b = outro;
  }
  
  public void draw(){
    line(a.getX(), a.getY(), b.getX(), b.getY());
  }
}
