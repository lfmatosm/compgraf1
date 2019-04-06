void rotate2D(PVector xy, float[][] m2, float graus){
  m2 = new float[][]{{cos(graus), -sin(graus)},{sin(graus), cos(graus)}};
  float[] m1 = xy.array();
  
  
}
 
 void setup(){
  size(800,600);
  background(0);
  
 }
 
 void draw(){
  Vertex a = new Vertex(50,50);
  Vertex b = new Vertex(50,100);
  Vertex c = new Vertex(100,100);
  Vertex d = new Vertex(100,50);
  
  Edge ea = new Edge(a,b);
  Edge eb = new Edge(b,c);
  Edge ec = new Edge(c,d);
  Edge ed = new Edge(d,a);
  
  Edge[] edges = {ea,eb,ec,ed};
  
  Face face = new Face(edges);
  
  /*
  for(Edge e : face.edges){
    PVector v1 = new PVector(cos(30), -sin(30));
    PVector v2 = new PVector(sin(30), cos(30));
    
    e.getVertexA().dot(v1,v2);
    e.getVertexB().dot(v1,v2);
  }
  */
  
  strokeWeight(10);
  stroke((sin(millis()/50)*155)+100,sin(millis()/50)*255,cos(millis()/50)*255);
  face.draw();
  noStroke();
  
  
 }
