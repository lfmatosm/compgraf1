class Square_square extends TransformableObject {

  // Face face;

  public Square_square(float posX, float posY, float sideLen){
    Vertex a = new Vertex(posX, posY);
    Vertex e = new Vertex(posX, posY + sideLen/3);
    Vertex f = new Vertex(posX + sideLen/4, posY + sideLen/3);
    Vertex g = new Vertex(posX + sideLen/4, posY + 2*sideLen/3);
    Vertex h = new Vertex(posX, posY + 2*sideLen/3);
    Vertex b = new Vertex(posX, posY + sideLen);
    Vertex c = new Vertex(posX + sideLen, posY + sideLen);
    Vertex d = new Vertex(posX + sideLen, posY);

    Edge ae = new Edge(a,e, new int[]{0,0,0});
    Edge ef = new Edge(e,f, new int[]{0,0,0});
    Edge fg = new Edge(f,g, new int[]{0,0,0});
    Edge gh = new Edge(g,h, new int[]{0,0,0});
    Edge hb = new Edge(h,b, new int[]{0,0,0});
    Edge bc = new Edge(b,c, new int[]{0,0,0});
    Edge cd = new Edge(c,d, new int[]{0,0,0});
    Edge da = new Edge(d,a, new int[]{0,0,0});

    ArrayList<Edge> edges = new ArrayList<Edge>();
    edges.add(ae);
    edges.add(ef);
    edges.add(fg);
    edges.add(gh);
    edges.add(hb);
    edges.add(bc);
    edges.add(cd);
    edges.add(da);

    this.simpleObject = new Face(edges);
  }
}
