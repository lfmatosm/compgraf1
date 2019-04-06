class CGObject2D extends CGObjectTransformation2D{
    
  public CGObject2D(Face[] object){
    this.object = object;
    this.simpleObject = null;
  }
  
  public CGObject2D(Face object){
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
