class Diamond_square extends TransformableObject {

  // Face face;

  public Diamond_square(float posX, float posY, float sideLen){
    Vertex a = new Vertex(posX, posY);
    Vertex b = new Vertex(posX, posY + sideLen);
    Vertex c = new Vertex(posX + sideLen/2, posY);
    Vertex f = new Vertex(posX + 5*sideLen/8, posY + sideLen/8);
    Vertex g = new Vertex(posX + sideLen/2, posY + sideLen/4);
    Vertex h = new Vertex(posX + 3*sideLen/4, posY + sideLen/2);
    Vertex i = new Vertex(posX + 7*sideLen/8, posY + 3*sideLen/8);
    Vertex d = new Vertex(posX + sideLen, posY + sideLen/2);
    Vertex e = new Vertex(posX + sideLen, posY + sideLen);

    Edge ab = new Edge(a,b, new int[]{0,0,0});
    Edge ac = new Edge(a,c, new int[]{0,0,0});
    Edge cf = new Edge(c,f, new int[]{0,0,0});
    Edge fg = new Edge(f,g, new int[]{0,0,0});
    Edge gh = new Edge(g,h, new int[]{0,0,0});
    Edge hi = new Edge(h,i, new int[]{0,0,0});
    Edge id = new Edge(i,d, new int[]{0,0,0});
    Edge de = new Edge(d,e, new int[]{0,0,0});
    Edge eb = new Edge(e,b, new int[]{0,0,0});

    ArrayList<Edge> edges = new ArrayList<Edge>();
    edges.add(ab);
    edges.add(ac);
    edges.add(cf);
    edges.add(fg);
    edges.add(gh);
    edges.add(hi);
    edges.add(id);
    edges.add(de);
    edges.add(eb);

    this.simpleObject = new Face(edges);
  }
} 
