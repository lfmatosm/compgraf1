class Edge{
  private Vertex a;
  private Vertex b;
  private int[] rgb = null;

  public Edge(Vertex a, Vertex b){
    this.a = a;
    this.b = b;
  }

  public Edge(Vertex a, Vertex b, int[] rgb){
    this.a = a;
    this.b = b;
    this.rgb = rgb;
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
    if(rgb == null){
      line(a.getX(), a.getY(), b.getX(), b.getY());
    } else{
      stroke(rgb[0], rgb[1], rgb[2]);
      line(a.getX(), a.getY(), b.getX(), b.getY());
      noStroke();
    }
  }
}
