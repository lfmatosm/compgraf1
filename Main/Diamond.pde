class Diamond extends TransformableObject {

  // Face face;

  public Diamond(float posX, float posY, float sideLen){
    Vertex a = new Vertex(posX, posY);
    Vertex b = new Vertex(posX, posY + sideLen);
    Vertex c = new Vertex(posX + sideLen/2, posY);
    Vertex d = new Vertex(posX + sideLen, posY + sideLen/2);
    Vertex e = new Vertex(posX + sideLen, posY + sideLen);

    Edge ab = new Edge(a,b, new int[]{0,0,0});
    Edge ac = new Edge(a,c, new int[]{0,0,0});
    Edge cd = new Edge(c,d, new int[]{0,0,0});
    Edge de = new Edge(d,e, new int[]{0,0,0});
    Edge eb = new Edge(e,b, new int[]{0,0,0});

    ArrayList<Edge> edges = new ArrayList<Edge>();
    edges.add(ab);
    edges.add(ac);
    edges.add(cd);
    edges.add(de);
    edges.add(eb);

    this.simpleObject = new Face(edges);
  }
}
