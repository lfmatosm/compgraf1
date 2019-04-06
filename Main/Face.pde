class Face{
  private Edge[] edges;

  public Face(Edge[] edges){
    this.edges = edges;
  }
  
  public Edge[] getEdges(){
    return edges;
  }

  public void draw(){
    for(Edge e : edges){
      e.draw();
    }
  }
}
