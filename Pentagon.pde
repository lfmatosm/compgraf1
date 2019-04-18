class Pentagon extends TransformableObject {

  Face face;

  public Pentagon(float posX, float posY, float sideLen){
    Vertex a = new Vertex(posX, posY);
    Vertex b = new Vertex(posX + sideLen/3, posY + sideLen);
    Vertex c = new Vertex(posX - sideLen/3, posY + sideLen);
    Vertex d = new Vertex(posX - sideLen/2, posY+sideLen/3);
    Vertex e = new Vertex(posX + sideLen/2, posY+sideLen/3);

    Edge ae = new Edge(a,e, new int[]{0,0,0});
    Edge eb = new Edge(e,b, new int[]{0,0,0});
    Edge bc = new Edge(b,c, new int[]{0,0,0});
    Edge cd = new Edge(c,d, new int[]{0,0,0});
    Edge da = new Edge(d,a, new int[]{0,0,0});

    ArrayList<Edge> edges = new ArrayList<Edge>();
    edges.add(ae);
    edges.add(eb);
    edges.add(bc);
    edges.add(cd);
    edges.add(da);

    face = new Face(edges);
  }
}
