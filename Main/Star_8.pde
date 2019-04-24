class Star8 extends TransformableObject {

  //Face face;

  public Star8(float posX, float posY, float sideLen){
    Vertex a = new Vertex(posX + sideLen/3, posY);
    Vertex b = new Vertex(posX + 2*sideLen/3, posY);
    Vertex c = new Vertex(posX, posY + sideLen/3);
    Vertex d = new Vertex(posX + sideLen, posY + sideLen/3);
    Vertex e = new Vertex(posX, posY + 2 * sideLen/3 );
    Vertex f = new Vertex(posX + sideLen, posY + 2 * sideLen/3);
    Vertex g = new Vertex(posX + sideLen/3, posY + sideLen);
    Vertex h = new Vertex(posX + 2*sideLen/3, posY + sideLen);

    Edge af = new Edge(a,f, new int[]{0,0,0});
    Edge ag = new Edge(a,g, new int[]{0,0,0});
    Edge be = new Edge(b,e, new int[]{0,0,0});
    Edge bh = new Edge(b,h, new int[]{0,0,0});
    Edge cd = new Edge(c,d, new int[]{0,0,0});
    Edge ch = new Edge(c,h, new int[]{0,0,0});
    Edge dg = new Edge(d,g, new int[]{0,0,0});
    Edge ef = new Edge(e,f, new int[]{0,0,0});

    ArrayList<Edge> edges = new ArrayList<Edge>();
    edges.add(af);
    edges.add(ag);
    edges.add(be);
    edges.add(bh);
    edges.add(cd);
    edges.add(ch);
    edges.add(dg);
    edges.add(ef);

    this.simpleObject = new Face(edges);
  }
}
