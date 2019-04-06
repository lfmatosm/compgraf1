abstract class CGObjectTransformation2D{
  Face[] object;
  Face simpleObject;
  
  void translade(float x, float y){
    if(this.object == null){
      for(Edge e : simpleObject.getEdges()){
        e.getVertexA().add(new PVector(x, y));
        e.getVertexB().add(new PVector(x,y));
      }
    } else{
      for(Face f : object){
        for(Edge e : f.getEdges()){
        e.getVertexA().add(new PVector(x, y));
        e.getVertexB().add(new PVector(x,y));
        }
      }
    }
  }
}
