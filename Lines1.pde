class Lines1 extends TransformableObject {

  // Face face;

  public Lines1(float posX, float posY, float size){
    Vertex a = new Vertex(posX, posY);
    Vertex b = new Vertex(posX, posY + size);

    Edge ab = new Edge(a,b, new int[]{0,0,0});

    ArrayList<Edge> edges = new ArrayList<Edge>();
    edges.add(ab);

    this.simpleObject = new Face(edges);
  }
}
