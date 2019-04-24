//Representa uma cadeia de aplicação de transformações.
//Recebe uma lista de transformações que serão aplicadas de forma sequencial
//em um dado objeto.
class TransformChain {
  ArrayList<Transform> ts;

  public TransformChain() { this.ts = new ArrayList<Transform>(); }

  public void add(Transform t) { this.ts.add(t); }

  public void applyTo(TransformableObject obj) {
    if (obj.isSimple()) {
      ArrayList<Edge> edges = obj.simpleObject.getEdges();
      int tCount = 0;
      for (Transform t : this.ts) {
        ArrayList<Edge> newEdges = new ArrayList<Edge>();
        int eCount = 0;
        for (Edge e : edges) {
          // print("*******************************************************\n\n");
          Vertex a = new Vertex(e.getVertexA().getX(), e.getVertexA().getY());
          Vertex b = new Vertex(e.getVertexB().getX(), e.getVertexB().getY());
          // print("Old a-b: " + e + "\n");
          float[][] am = a.toMatrix();
          float[][] bm = b.toMatrix();
          // print("Matrix of a:"+obj.showMtx(am)+"\n");
          // print("Matrix of b:"+obj.showMtx(bm)+"\n");
          float[][] u = t.multiply(am);
          float[][] v = t.multiply(bm);
          // print("Matrix of T(a):"+obj.showMtx(u)+"\n");
          // print("Matrix of T(b):"+obj.showMtx(v)+"\n");
          a.toVertex(u); b.toVertex(v);
          Edge newE = new Edge(a, b, new int[]{0,0,0});
          // print("New a-b: " + newE + "\n");
          newEdges.add(newE);
          eCount++;
          // print("*******************************************************\n\n");
        }
        // print("Transformed edges: " + eCount + "\n\n");
        // print("Old edges:"+ obj.showEdges(edges));
        // print("New edges:"+ obj.showEdges(newEdges));

        edges = newEdges;

        tCount++;
      }
      // print("Transform count: " + tCount + "\n\n");
      obj.simpleObject = new Face(edges);
    }
  }
}
