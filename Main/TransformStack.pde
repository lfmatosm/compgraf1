class TransformStack {
  ArrayList<Transform> ts;

  public TransformStack() { this.ts = new ArrayList<Transform>(); }

  public void add(Transform t) { this.ts.add(t); }

  public void apply(Object2D obj) {
    if (obj.isSimple()) {
      ArrayList<Edge> edges = obj.simpleObject.getEdges();
      for (Transform t : this.ts) {
        ArrayList<Edge> newEdges = new ArrayList<Edge>();
        for (Edge e : edges) {
          Vertex a = e.getVertexA(); Vertex b = e.getVertexB();
          float[][] u = t.multiply(a.toMatrix());
          float[][] v = t.multiply(b.toMatrix());
          a.toVertex(u); b.toVertex(v);
          newEdges.add(new Edge(a, b));
        }
        edges = newEdges;
      }
      obj.simpleObject = new Face(edges);
    }
  }
}
