class Square extends TransformableObject{
  
  Face face;
  
  public Square(float posX, float posY, float sideLen){
    Vertex a = new Vertex(posX, posY);
    Vertex b = new Vertex(posX, posY + sideLen);
    Vertex c = new Vertex(posX + sideLen, posY + sideLen);
    Vertex d = new Vertex(posX + sideLen, posY);
    
    Edge ea = new Edge(a,b, new int[]{0,0,0});
    Edge eb = new Edge(b,c, new int[]{0,0,0});
    Edge ec = new Edge(c,d, new int[]{0,0,0});
    Edge ed = new Edge(d,a, new int[]{0,0,0});
    
    ArrayList<Edge> edges = new ArrayList<Edge>();
    edges.add(ea);
    edges.add(eb);
    edges.add(ec);
    edges.add(ed);
    
    face = new Face(edges);
  }
}
