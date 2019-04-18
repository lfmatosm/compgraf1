class ZShape extends TransformableObject {

  // Face face;

  public ZShape(float posX, float posY, float sideHorizontal, float sideVertical){
    Vertex a = new Vertex(posX, posY);
    Vertex b = new Vertex(posX, posY + sideVertical);
    Vertex c = new Vertex(posX + sideHorizontal, posY + sideVertical);
    Vertex d = new Vertex(posX + sideHorizontal, posY);

    Edge bc = new Edge(b,c, new int[]{0,0,0});
    Edge da = new Edge(d,a, new int[]{0,0,0});
    Edge bd = new Edge(b,d, new int[]{0,0,0});

    ArrayList<Edge> edges = new ArrayList<Edge>();
    edges.add(bd);
    edges.add(bc);
    edges.add(da);

    this.simpleObject = new Face(edges);
  }
}
