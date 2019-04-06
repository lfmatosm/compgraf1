abstract class TransformableObject{
  void translade(Face object, float x, float y){
    for(Edge e : object.getEdges()){
      e.getVertexA().add(new PVector(x, y));
      e.getVertexB().add(new PVector(x,y));
    }
  }
}
