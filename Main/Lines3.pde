class Lines3 extends TransformableObject {

  // Face face;

  public Lines3(float posX, float posY, float sideHorizontal, float sideVertical){
    Vertex a = new Vertex(posX, posY);
    Vertex b = new Vertex(posX, posY + sideVertical);
    Vertex c = new Vertex(posX + sideHorizontal, posY + sideVertical);
    Vertex d = new Vertex(posX + sideHorizontal, posY);

    Edge ab = new Edge(a,b, new int[]{0,0,0});
    Edge bc = new Edge(b,c, new int[]{0,0,0});
    Edge cd = new Edge(c,d, new int[]{0,0,0});

    ArrayList<Edge> edges = new ArrayList<Edge>();
    edges.add(ab);
    edges.add(bc);
    edges.add(cd);

    this.simpleObject = new Face(edges);
  }
}
