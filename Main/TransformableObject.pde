abstract class TransformableObject {
  ArrayList<Face> objects;
  Face simpleObject;

  //Reflete um Objeto em relação a x ou y;
  void reflection(boolean aroundX, boolean aroundY){
    int xRefl = 0;
    int yRefl = 0;

    if (aroundX == false) xRefl = 1;
    if (aroundX == true) xRefl = -1;
    if (aroundY == false) yRefl = 1;
    if (aroundY == true) yRefl = -1;

    Vertex oldCenter = this.centroid();
    translate(-oldCenter.getX(), -oldCenter.getY());

    if (this.isSimple()) {
      for (Edge e : simpleObject.getEdges()){
        e.getVertexA().setXY(e.getVertexA().getX()*xRefl, e.getVertexA().getY()*yRefl);
      }
      translate(-oldCenter.getX(), -oldCenter.getY());
    } else {
      for (Face f : this.objects){
        for(Edge e : f.getEdges()){
          e.getVertexA().setXY(e.getVertexA().getX()*xRefl, e.getVertexA().getY()*yRefl);
        }
      }
      translate(oldCenter.getX(), oldCenter.getY());
    }
  }

  //Pega o maior X e o maior Y (Pontos Diferentes)
  public PVector getXYMax(){
    float xMax = 0;
    float yMax = 0;
    for (Edge e : simpleObject.getEdges()){
      if(e.getVertexA().getX() > xMax) xMax = e.getVertexA().getX();
      if(e.getVertexB().getX() > xMax) xMax = e.getVertexB().getX();

      if(e.getVertexA().getY() > yMax) yMax = e.getVertexA().getY();
      if(e.getVertexB().getY() > yMax) yMax = e.getVertexB().getY();
    }
    return new PVector(xMax,yMax);
  }

  //Pega o menor X e o menor Y (Pontos Diferentes)
  public PVector getXYMin(){
    float xMin = 800;
    float yMin = 600;
    for (Edge e : simpleObject.getEdges()){
      if(e.getVertexA().getX() < xMin) xMin = e.getVertexA().getX();
      if(e.getVertexB().getX() < xMin) xMin = e.getVertexB().getX();

      if(e.getVertexA().getY() < yMin) yMin = e.getVertexA().getY();
      if(e.getVertexB().getY() < yMin) yMin = e.getVertexB().getY();
    }
    return new PVector(xMin, yMin);
  }

  //Retorna a um PVector com a coordenada do centro do Objeto
  public PVector getCenter(){
    PVector maxXY = getXYMax();
    PVector minXY = getXYMin();

    float xMed = (maxXY.x + minXY.x)/2;
    float yMed = (maxXY.y + minXY.y)/2;

    return new PVector(xMed, yMed);
  }

  void reflectEdge(Edge e, int xRefl, int yRefl) {
    e.getVertexA().setXY(e.getVertexA().getX()*xRefl, e.getVertexA().getY()*yRefl);
    e.getVertexB().setXY(e.getVertexB().getX()*xRefl, e.getVertexB().getY()*yRefl);
  }

  //Troca a escala do objeto de forma uniforme em ambos os eixos x e y.
  public void scale(float factor) {
    scale(factor, factor);
  }

  //Troca a escala do objeto de acordo com os fatores de escala passados.
  public void scale(float xFactor, float yFactor) {
    Vertex centroid = this.centroid();
    print("Centroid: "+centroid+"\n");
    TranslateTransform tt1 = new TranslateTransform(-centroid.getX(),
    -centroid.getY());
    ScaleTransform sclt = new ScaleTransform(xFactor, yFactor);
    TranslateTransform tt2 = new TranslateTransform(centroid.getX(),
    centroid.getY());

    print("Translate T1 matrix:"+this.showMtx(tt1.t));
    print("Translate SCLT matrix:"+this.showMtx(sclt.t));
    print("Translate T2 matrix:"+this.showMtx(tt2.t));

    TransformChain chain = new TransformChain();
    chain.add(tt1); chain.add(sclt); chain.add(tt2);

    chain.applyTo(this);
  }


  //Rotaciona um objeto em torno de seu centróide.
  public void rotate(float rad) {
    Vertex centroid = this.centroid();
    print("Centroid: "+centroid+"\n");
    TranslateTransform tt1 = new TranslateTransform(-centroid.getX(),
    -centroid.getY());
    RotationTransform rtt = new RotationTransform(rad);
    TranslateTransform tt2 = new TranslateTransform(centroid.getX(),
    centroid.getY());

    print("Translate T1 matrix:"+this.showMtx(tt1.t));
    print("Translate RTT matrix:"+this.showMtx(rtt.t));
    print("Translate T2 matrix:"+this.showMtx(tt2.t));

    TransformChain chain = new TransformChain();
    chain.add(tt1); chain.add(rtt); chain.add(tt2);

    chain.applyTo(this);
  }

  //Cisalha o objeto de forma equivalente em ambos os eixos x e y de acordo
  //com um fator.
  public void shear(float factor) {
    shear(factor, factor);
  }

  //Cisalha o objeto de forma distinta em cada eixo.
  public void shear(float xFactor, float yFactor) {
    Vertex centroid = this.centroid();
    print("Centroid: "+centroid+"\n");
    TranslateTransform tt1 = new TranslateTransform(-centroid.getX(),
    -centroid.getY());
    ShearTransform sht = new ShearTransform(xFactor, yFactor);
    TranslateTransform tt2 = new TranslateTransform(centroid.getX(),
    centroid.getY());

    print("Translate T1 matrix:"+this.showMtx(tt1.t));
    print("Translate SHT matrix:"+this.showMtx(sht.t));
    print("Translate T2 matrix:"+this.showMtx(tt2.t));

    TransformChain chain = new TransformChain();
    chain.add(tt1); chain.add(sht); chain.add(tt2);

    chain.applyTo(this);
  }


  //Translada um objeto somando uma coordenada (x,y) a cada um de seus vértices.
  public void translate(float xFactor, float yFactor) {
    TranslateTransform tt = new TranslateTransform(xFactor,
    yFactor);

    print("Translate T1 matrix:"+this.showMtx(tt.t));

    TransformChain chain = new TransformChain();
    chain.add(tt);

    chain.applyTo(this);
  }

  //Desenha o objeto na tela.
  public void draw(){
    if ((objects == null) || (objects.size() == 0)) {
      simpleObject.draw();
    }
    else {
      for(Face f : objects){
        f.draw();
      }
    }
  }

  //Verifica se o objeto é simples (se possui apenas uma face).
  public boolean isSimple() { return this.objects == null ||
    this.objects.size() == 0; }

  public Face getFace() { return this.simpleObject; }

  public ArrayList<Vertex> getVertices() {
    ArrayList<Vertex> vertices = new ArrayList<Vertex>();
    if (this.isSimple()) {
      for (Edge e : this.simpleObject.getEdges()) {
        vertices.add(e.getVertexA()); vertices.add(e.getVertexB());
      }
    }
    return vertices;
  }

  //Obtém o vértice do objeto mais próximo do ponto/vértice passado por parâmetro.
  public Vertex getNearestTo(Vertex u) {
    double minorDist = Double.MAX_VALUE;
    Vertex nearest = new Vertex((float)Double.MAX_VALUE, (float)Double.MAX_VALUE);
    for (Vertex v : this.getVertices()) {
      double dist = v.euclideanDistanceTo(u);
      if (dist < minorDist) {
        minorDist = dist; nearest = v;
      }
    }
    return nearest;
  }


  public void setFace(Face newF) { this.simpleObject = newF;}

  public String showMtx(float[][] mtx) {
    String str = "";
    for (int i = 0; i < mtx.length; i++) {
      for (int j = 0; j < mtx[0].length; j++) {
          str += mtx[i][j] + " ";
      }
      str += "\n";
    }
    return ("\n" + str + "\n");
  }

  //Obtém o centróide do conjunto de vértices do objeto.
  Vertex centroid() {
    ArrayList<Vertex> vertices = this.getVertices();
    return average(vertices);
  }

  Vertex getUppermostVertex(Face f) {
    Vertex upm = new Vertex(-(float)Double.MAX_VALUE, -(float)Double.MAX_VALUE);
    ArrayList<Edge> edges = f.getEdges();
    ArrayList<Vertex> vertex = new ArrayList<Vertex>();
    for (Edge e : edges) {
      vertex.add(e.getVertexA()); vertex.add(e.getVertexB());
    }
    for (Vertex v : vertex) {
      if (v.biggerThan(upm)) upm = new Vertex(v.getX(), v.getY());
    }
    return upm;
  }

  //Retorna o vértice (x', y') que é o ponto médio do conj. de vértices
  //representado pelo objeto.
  Vertex average(ArrayList<Vertex> vs) {
    if ((vs == null) || (vs.size() == 0)) return new Vertex(0., 0.);
    float xSum = 0; float ySum = 0;
    for (Vertex v : vs) { xSum += v.getX(); ySum += v.getY(); }
    return new Vertex(xSum/vs.size(), ySum/vs.size());
  }


  public String showEdges(ArrayList<Edge> es) {
    String str = "";
    for (Edge e : es) {
      str += e + ", ";
    }
    return ("\n" + str + "\n");
  }
}
