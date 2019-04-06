class Object2D extends TransformableObject{

  public Object2D(ArrayList<Face> objs){
    this.objects = objs;
    this.simpleObject = null;
  }

  public Object2D(Face object){
    this.simpleObject = object;
    this.objects = null;
  }

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
}
