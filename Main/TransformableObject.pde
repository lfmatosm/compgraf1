abstract class TransformableObject{
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
  }
}
