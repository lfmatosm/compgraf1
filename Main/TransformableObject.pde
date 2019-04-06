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

  void scale(float scalingFactorX, float scalingFactorY) {
    if ((this.objects == null) || (this.objects.size() == 0)) {
      this.simpleObject = scaledFace(this.simpleObject, scalingFactorX, scalingFactorY);
    } else for (Face f : this.objects) f = scaledFace(f, scalingFactorX, scalingFactorY);
  }

  void uniformScale(float scalingFactor) {
    scale(scalingFactor, scalingFactor);
  }

  void transladeEdge(Edge e, float x, float y) {
    e.getVertexA().add(new PVector(x, y));
    e.getVertexB().add(new PVector(x, y));
  }

  Face scaledFace(Face f, float scalingFactorX, float scalingFactorY) {
    ArrayList<Edge> newEdges =  new ArrayList<Edge>();
    for (Edge e : f.getEdges()) {
      Vertex a = e.getVertexA();
      Vertex b = e.getVertexB();
      newEdges.add(new Edge(scaledVertex(a, scalingFactorX, scalingFactorY),
       scaledVertex(b, scalingFactorX, scalingFactorY)));
    }
    return new Face(newEdges);
  }

  Vertex scaledVertex(Vertex v, float scalingFactorX, float scalingFactorY) {
    return new Vertex(v.getX() * scalingFactorX, v.getY() * scalingFactorY);
  }
}
