class Star extends TransformableObject{
  
  Face face;
  
  public Star(float posX, float posY, float sideLen){
    Vertex a = new Vertex(posX, posY);
    Vertex b = new Vertex(posX + sideLen/3, posY + sideLen);
    Vertex c = new Vertex(posX - sideLen/3, posY + sideLen);
    Vertex d = new Vertex(posX - sideLen/2, posY+sideLen/3);
    Vertex e = new Vertex(posX + sideLen/2, posY+sideLen/3);
    
    Edge ab = new Edge(a,b, new int[]{0,0,0});
    Edge ac = new Edge(a,c, new int[]{0,0,0});
    Edge bd = new Edge(b,d, new int[]{0,0,0});
    Edge ce = new Edge(c,e, new int[]{0,0,0});
    Edge de = new Edge(d,e, new int[]{0,0,0});
    
    ArrayList<Edge> edges = new ArrayList<Edge>();
    edges.add(ab);
    edges.add(ac);
    edges.add(bd);
    edges.add(ce);
    edges.add(de);
    
    face = new Face(edges);
  }
}
