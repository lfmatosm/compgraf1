abstract class CGObjectTransformation2D{
  Face translade(Face object, float x, float yTo){
    for(Edge e : object.getEdges()){
      e.getVertexA().add(new PVector(x, y));
      e.getVertexB().add(new PVector(x,y));
    }
  }
}
