abstract class TransformableObject{
  ArrayList<Face> objects = new ArrayList<Face>();
  Face simpleObject;

  void translade(float x, float y){
    if ((this.objects == null) || (this.objects.size() == 0)) {
      for (Edge e : simpleObject.getEdges()) transladeEdge(e, x, y);
    } else{
      for (Face f : this.objects){
        for(Edge e : f.getEdges()) transladeEdge(e, x, y);
      }
    }
  }
  
  void reflex(int x, int y){
    //Prevenção de má interação.
    if(x > 0 || x == 0) x = 1;
    if(x < 0) x = -1;
    if(y > 0 || y == 0) y = 1;
    if(y < 0) y = -1;
    
    if(this.object == null){
      for(Edge e : simpleObject.getEdges()){
        e.getVertexA();
      }
    }    

  void scale(float scalingFactor) {
    if ((this.objects == null) || (this.objects.size() == 0)) {
      this.simpleObject = scaledFace(this.simpleObject, scalingFactor);
    } else for (Face f : this.objects) f = scaledFace(f, scalingFactor);
  }

  void transladeEdge(Edge e, float x, float y) {
    e.getVertexA().add(new PVector(x, y));
    e.getVertexB().add(new PVector(x, y));
  }

  Face scaledFace(Face f, float scalingFactor) {
    ArrayList<Edge> newEdges =  new ArrayList<Edge>();
    for (Edge e : f.getEdges()) {
      Vertex a = e.getVertexA();
      Vertex b = e.getVertexB();
      newEdges.add(new Edge(scaledVertex(a, scalingFactor),
       scaledVertex(b, scalingFactor)));
    }
    return new Face(newEdges);
  }

  Vertex scaledVertex(Vertex v, float scalingFactor) {
    return new Vertex(v.getX() * scalingFactor, v.getY() * scalingFactor);
  }
}
