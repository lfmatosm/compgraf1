class Object2D extends TransformableObject{
    
  public Object2D(Face[] object){
    this.object = object;
    this.simpleObject = null;
  }
  
  public Object2D(Face object){
    this.simpleObject = object;
    this.object = null;
  }
  
  public void draw(){
    if(object == null){
      simpleObject.draw();
    }
    else{
      for(Face f : object){
        f.draw();
      }
    }
  }
}
