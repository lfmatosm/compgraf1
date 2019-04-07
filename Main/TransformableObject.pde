abstract class TransformableObject{
  ArrayList<Face> objects;
  Face simpleObject;
  
  void reflex(boolean x, boolean y){
    int xRefl = 0;
    int yRefl = 0;
    
    if(x == false) xRefl = 1;
    if(x == true) xRefl = -1;
    if(y == false) yRefl = 1;
    if(y == true) yRefl = -1;
    
    public float getXMax(){
      float max = 0;
      for (Edge e : simpleObject.getEdges()){
         if(e.getVertexA()){
         }
      }
    }
    
    if ((this.objects == null) || (this.objects.size() == 0)) {
      for (Edge e : simpleObject.getEdges()){
        /*e.getVertexA().setXY(e.getVertexA().getX()*xRefl, e.getVertexA().getY()*yRefl);
        e.getVertexB().setXY(e.getVertexB().getX()*xRefl , e.getVertexB().getY()*yRefl);*/
        
        if(x == true || y == true){
          translateEdge(e, e.getVertexA().getX() - 2*e.getVertexA().getX(),  e.getVertexA().getY()*(-1));
        }
        
      }
    } else{
      for (Face f : this.objects){
        for(Edge e : f.getEdges()){
          e.getVertexA().setXY(e.getVertexA().getX()*xRefl, e.getVertexA().getY()*yRefl);
          e.getVertexB().setXY(e.getVertexB().getX()*xRefl, e.getVertexB().getY()*yRefl);
        }
      }
    }
    
  }

  void translate(float x, float y){
    if ((this.objects == null) || (this.objects.size() == 0)) {
      for (Edge e : simpleObject.getEdges()) translateEdge(e, x, y);
    } else{
      for (Face f : this.objects){
        for(Edge e : f.getEdges()) translateEdge(e, x, y);
      }
    }
  }

  void scale(float scalingFactorX, float scalingFactorY) {
    if ((this.objects == null) || (this.objects.size() == 0)) {
      this.simpleObject = scaledFace(this.simpleObject, scalingFactorX, scalingFactorY);
    } else for (Face f : this.objects) f = scaledFace(f, scalingFactorX, scalingFactorY);
  }

  //Cisalhamento.
  void shear(float shearFactorX, float shearFactorY) {
    if ((this.objects == null) || (this.objects.size() == 0)) {
      this.simpleObject = shearedFace(this.simpleObject, shearFactorX, shearFactorY);
    } else for (Face f : this.objects) f = shearedFace(f, shearFactorX, shearFactorY);
  }

  Face shearedFace(Face f, float shearFactorX, float shearFactorY) {
    ArrayList<Edge> newEdges =  new ArrayList<Edge>();
    for (Edge e : f.getEdges()) {
      Vertex a = e.getVertexA();
      Vertex b = e.getVertexB();
      newEdges.add(new Edge(shearedVertex(a, shearFactorX, shearFactorY),
       shearedVertex(b, shearFactorX, shearFactorY)));
    }
    return new Face(newEdges);
  }

  Vertex shearedVertex(Vertex v, float shearFactorX, float shearFactorY) {
    return new Vertex(v.getX() + (shearFactorX * v.getY()),
    v.getY() + (shearFactorY * v.getX()));
  }

  void uniformScale(float scalingFactor) {
    scale(scalingFactor, scalingFactor);
  }

  void translateEdge(Edge e, float x, float y) {
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
