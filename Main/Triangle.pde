class Triangle extends Object2D{

  //Face face;

  public Triangle(float posX, float posY, float sideLen){
    Vertex a = new Vertex(posX, posY);
    Vertex b = new Vertex(posX, posY + sideLen);
    Vertex c = new Vertex(posX + (sideLen/2)*sqrt(3), posY + sideLen/2);

    Edge ab = new Edge(a,b, new int[]{0,0,0});
    Edge bc = new Edge(b,c, new int[]{0,0,0});
    Edge ca = new Edge(c,a, new int[]{0,0,0});

    ArrayList<Edge> edges = new ArrayList<Edge>();
    edges.add(ab);
    edges.add(bc);
    edges.add(ca);

    this.simpleObject = new Face(edges);
  }
}
