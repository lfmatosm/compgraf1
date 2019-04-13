class Object2D extends TransformableObject{

  // public Object2D(ArrayList<Face> objs){
  //   this.objects = objs;
  //   this.simpleObject = null;
  // }
  //
  // public Object2D(Face object){
  //   this.simpleObject = object;
  //   this.objects = null;
  // }

  public void draw(){
    if ((objects == null) || (objects.size() == 0)) {
      simpleObject.draw();
    }
    else {
      for(Face f : objects){
        f.draw();
      }
    }
  }

  public boolean isSimple() { return this.objects == null ||
    this.objects.size() == 0; }

  public Face getFace() { return this.simpleObject; }

  public ArrayList<Vertex> getVertices() {
    ArrayList<Vertex> vertices = new ArrayList<Vertex>();
    if (this.isSimple()) {
      for (Edge e : this.simpleObject.getEdges()) {
        vertices.add(e.getVertexA()); vertices.add(e.getVertexB());
      }
    }
    return vertices;
  }

  public Vertex getNearestTo(Vertex u) {
    double minorDist = Double.MAX_VALUE;
    Vertex nearest = new Vertex((float)Double.MAX_VALUE, (float)Double.MAX_VALUE);
    for (Vertex v : this.getVertices()) {
      double dist = v.euclideanDistanceTo(u);
      if (dist < minorDist) {
        minorDist = dist; nearest = v;
      }
    }
    return nearest;
  }
}
