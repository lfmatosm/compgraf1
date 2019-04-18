class Face{
  private ArrayList<Edge> edges;

  public Face(ArrayList<Edge> edges){
    this.edges = edges;
  }

  public ArrayList<Edge> getEdges(){
    return this.edges;
  }

  public void draw(){
    for (Edge e : edges){
      e.draw();
    }
  }
}
