class Triangle_square extends TransformableObject {

  //Face face;

  public Triangle_square(float posX, float posY, float sideLen){
    Vertex a = new Vertex(posX, posY);
    Vertex d = new Vertex(posX, posY + sideLen/3);
    Vertex e = new Vertex(posX + sideLen/4, posY + sideLen/3);
    Vertex f = new Vertex(posX + sideLen/4, posY + 2*sideLen/3);
    Vertex g = new Vertex(posX, posY + 2*sideLen/3);
    Vertex b = new Vertex(posX, posY + sideLen);
    Vertex c = new Vertex(posX + (sideLen/2)*sqrt(3), posY + sideLen/2);

    Edge ad = new Edge(a,d, new int[]{0,0,0});
    Edge de = new Edge(d,e, new int[]{0,0,0});
    Edge ef = new Edge(e,f, new int[]{0,0,0});
    Edge fg = new Edge(f,g, new int[]{0,0,0});
    Edge gb = new Edge(g,b, new int[]{0,0,0});
    Edge bc = new Edge(b,c, new int[]{0,0,0});
    Edge ca = new Edge(c,a, new int[]{0,0,0});

    ArrayList<Edge> edges = new ArrayList<Edge>();
    edges.add(ad);
    edges.add(de);
    edges.add(ef);
    edges.add(fg);
    edges.add(gb);
    edges.add(bc);
    edges.add(ca);

    this.simpleObject = new Face(edges);
  }
}
