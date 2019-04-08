abstract class TransformableObject{
  ArrayList<Face> objects;
  Face simpleObject;
  
  //Reflete um Objeto em relação a x ou y;
  void reflect(boolean aroundX, boolean aroundY){
    int xRefl = 0;
    int yRefl = 0;
    
    if(aroundX == false) xRefl = 1;
    if(aroundX == true) xRefl = -1;
    if(aroundY == false) yRefl = 1;
    if(aroundY == true) yRefl = -1;

    PVector centroAntigo = getCenter();
    translateToOrign();
    
    if ((this.objects == null) || (this.objects.size() == 0)) {
      for (Edge e : simpleObject.getEdges()){
        e.getVertexA().setXY(e.getVertexA().getX()*xRefl, e.getVertexA().getY()*yRefl);
      }
      translate(centroAntigo.x, centroAntigo.y);
    } else{
      for (Face f : this.objects){
        for(Edge e : f.getEdges()){
          e.getVertexA().setXY(e.getVertexA().getX()*xRefl, e.getVertexA().getY()*yRefl);
        }
      }
      translate(centroAntigo.x, centroAntigo.y);
    }
  }


  // Vertex transform(float[][] tr, Vertex v) {
  //   Vertex u = new Vertex(v.getX(), v.getY());
  //   float[][] p = {{v.getX()}, {v.getY()}};
  //   float[][] t = {
  //     {v.getX()-v.getX()}, {v.getY()-v.getY()}
  //   };
  //   float[][] tp = v.multMat(tr, t);
  //   return new Vertex(tp[0][0]+u.getX(), tp[1][0]+u.getY());
  // }

  // DELETAR
  void reflection(boolean aroundX, boolean aroundY){
    int xRefl = 1;
    int yRefl = 1;
    if (aroundX) xRefl = -1;
    if (aroundY) yRefl = -1;

    if ((this.objects == null) || (this.objects.size() == 0)) {
      for (Edge e : simpleObject.getEdges()) reflectEdge(e, xRefl, yRefl);
    } else {
      for (Face f : this.objects) {
        for (Edge e : f.getEdges()) reflectEdge(e, xRefl, yRefl);
      }
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

  public void translateToOrign(){
    PVector center = getCenter();
    translate(-center.x, -center.y);
  }

  //Translada um Objeto somando uma coordenada (x,y) em seus Vertex
  void translate(float x, float y){
    if ((this.objects == null) || (this.objects.size() == 0)) {
      for (Edge e : simpleObject.getEdges()) translateEdge(e, x, y);
    } else{
      for (Face f : this.objects){
        for(Edge e : f.getEdges()) translateEdge(e, x, y);
      }
    }
  }

  void scale(float scalingFactorX, float scalingFactorY) {
    if ((this.objects == null) || (this.objects.size() == 0)) {
      this.simpleObject = scaledFace(this.simpleObject, scalingFactorX, scalingFactorY);
    } else for (Face f : this.objects) f = scaledFace(f, scalingFactorX, scalingFactorY);
  }

  //Cisalhamento.
  void shear(float shearFactorX, float shearFactorY) {
    if ((this.objects == null) || (this.objects.size() == 0)) {
      this.simpleObject = shearedFace(this.simpleObject, shearFactorX, shearFactorY);
    } else for (Face f : this.objects) f = shearedFace(f, shearFactorX, shearFactorY);
  }

  void reflectEdge(Edge e, int xRefl, int yRefl) {
    e.getVertexA().setXY(e.getVertexA().getX()*xRefl, e.getVertexA().getY()*yRefl);
    e.getVertexB().setXY(e.getVertexB().getX()*xRefl, e.getVertexB().getY()*yRefl);
  }

  Face shearedFace(Face f, float shearFactorX, float shearFactorY) {
    ArrayList<Edge> newEdges =  new ArrayList<Edge>();
    for (Edge e : f.getEdges()) {
      Vertex a = e.getVertexA();
      Vertex b = e.getVertexB();
      newEdges.add(new Edge(shearedVertex(a, shearFactorX, shearFactorY),
      shearedVertex(b, shearFactorX, shearFactorY)));
    }
    return new Face(newEdges);
  }

  Vertex shearedVertex(Vertex v, float shearFactorX, float shearFactorY) {
    return new Vertex(v.getX() + (shearFactorX * v.getY()),
    v.getY() + (shearFactorY * v.getX()));
  }

  void uniformScale(float scalingFactor) {
    scale(scalingFactor, scalingFactor);
  }

  void translateEdge(Edge e, float x, float y) {
    e.getVertexA().add(new PVector(x, y));
  }

  void translateVertex(Vertex v, float x, float y) {
    v.add(new PVector(x, y));
  }

  Face scaledFace(Face f, float scalingFactorX, float scalingFactorY) {
    // Vertex center = centroid(f);
    ArrayList<Edge> newEdges =  new ArrayList<Edge>();
    for (Edge e : f.getEdges()) {
      Vertex a = new Vertex(e.getVertexA().getX(), e.getVertexA().getY());
      Vertex b = new Vertex(e.getVertexB().getX(), e.getVertexB().getY());
      // Vertex aDist = a.distanceTo(center);
      // Vertex bDist = b.distanceTo(center);
      // translateVertex(a, -aDist.getX(), -aDist.getY());
      // translateVertex(b, -bDist.getX(), -bDist.getY());
      Edge newE = new Edge(scaledVertex(a, scalingFactorX, scalingFactorY),
      scaledVertex(b, scalingFactorX, scalingFactorY));
      // translateVertex(aDist, center.getX(), center.getY());
      // translateVertex(bDist, center.getX(), center.getY());
      // newE.setVertexA(aDist); newE.setVertexB(bDist);
      newEdges.add(newE);
    }
    // Face newF = new Face(newEdges);
    // Vertex upmF = uppermostVertex(f);
    // Vertex upmNewF = uppermostVertex(newF);
    // upmNewF.sub(upmF);
    // for (Edge e : newEdges) translateEdge(e, -upmNewF.getX(), -upmNewF.getY());
    return new Face(newEdges);
  }

  Vertex scaledVertex(Vertex v, float scalingFactorX, float scalingFactorY) {
    return new Vertex((v.getX() * scalingFactorX), (v.getY() * scalingFactorY));
  }

  //FIXME
  void rotate(float ang){
    float[] center = findCenter();
    if (this.objects == null){
      for(Edge e : simpleObject.getEdges()){
        float[][] matrixA = {{e.getVertexA().getX()}, {e.getVertexA().getY()}, {1}};
        float[][] matrixB = {{1,0,-center[0]}, {0,1,-center[1]}, {0,0,1}};
        float[][] matrixC = e.getVertexA().multMat(matrixB, matrixA);
        float[][] matrixD = {{cos(ang), -sin(ang), 0}, {sin(ang), cos(ang), 0}, {0,0,1}};

        float[][] matrixE = e.getVertexA().multMat(matrixD, matrixC);
        float[][] matrixF = {{1, 0, center[0]}, {0, 1, center[1]}, {0, 0, 1}};

        e.getVertexA().multMat(matrixF, matrixE);

        float[][] matrixG = {{e.getVertexB().getX()}, {e.getVertexB().getY()}, {1}};
        float[][] matrixH= {{1,0,-center[0]}, {0,1,-center[1]}, {0,0,1}};

        float[][] matrixI = e.getVertexB().multMat(matrixH, matrixG);
        float[][] matrixJ = {{cos(ang), -sin(ang), 0}, {sin(ang), cos(ang), 0}, {0,0,1}};

        float[][] matrixK = e.getVertexB().multMat(matrixJ, matrixI);
        float[][] matrixL = {{1, 0, center[0]}, {0, 1, center[1]}, {0, 0, 1}};

        e.getVertexB().multMat(matrixL, matrixK);

      }
    }else{
      for (Face f : objects){
        for(Edge e : f.getEdges()){
          float[][] matrixA = {{e.getVertexA().getX()}, {e.getVertexA().getY()}, {1}};
          float[][] matrixB = {{1,0,-center[0]}, {0,1,-center[1]}, {0,0,1}};

          float[][] matrixC = e.getVertexA().multMat(matrixB, matrixA);
          float[][] matrixD = {{cos(ang), -sin(ang), 0}, {sin(ang), cos(ang), 0}, {0,0,1}};

          float[][] matrixE = e.getVertexA().multMat(matrixD, matrixC);
          float[][] matrixF = {{1, 0, center[0]}, {0, 1, center[1]}, {0, 0, 1}};

          e.getVertexA().multMat(matrixF, matrixE);

          float[][] matrixG = {{e.getVertexB().getX()}, {e.getVertexB().getY()}, {1}};
          float[][] matrixH= {{1,0,-center[0]}, {0,1,-center[1]}, {0,0,1}};

          float[][] matrixI = e.getVertexB().multMat(matrixH, matrixG);
          float[][] matrixJ = {{cos(ang), -sin(ang), 0}, {sin(ang), cos(ang), 0}, {0,0,1}};

          float[][] matrixK = e.getVertexB().multMat(matrixJ, matrixI);
          float[][] matrixL = {{1, 0, center[0]}, {0, 1, center[1]}, {0, 0, 1}};

          e.getVertexB().multMat(matrixL, matrixK);
        }
      }
    }
  }

  //DELETAR?
  private float[] findCenter(){
    float[] center = new float[2];
    float highX = 0, highY = 0;
    float lowX = MAX_INT, lowY = MAX_INT;
    if (this.objects == null){
      for(Edge e: simpleObject.getEdges()){
        if(e.getVertexA().getX() > highX){
          highX = e.getVertexA().getX();
        }
        if(e.getVertexA().getY() > highY){
          highY = e.getVertexA().getY();
        }
        if(e.getVertexA().getX() < lowX){
          lowX = e.getVertexA().getX();
        }
        if(e.getVertexA().getY() < lowY){
          lowY = e.getVertexA().getY();
        }

        if(e.getVertexB().getX() > highX){
          highX = e.getVertexA().getX();
        }
        if(e.getVertexB().getY() > highY){
          highY = e.getVertexA().getY();
        }
        if(e.getVertexB().getX() < lowX){
          lowX = e.getVertexA().getX();
        }
        if(e.getVertexB().getY() < lowY){
          lowY = e.getVertexA().getY();
        }
      }
    }else{
      for(Face f : objects){
        for(Edge e : f.getEdges()){
          if(e.getVertexA().getX() > highX){
            highX = e.getVertexA().getX();
          }
          if(e.getVertexA().getY() > highY){
            highY = e.getVertexA().getY();
          }
          if(e.getVertexA().getX() < lowX){
            lowX = e.getVertexA().getX();
          }
          if(e.getVertexA().getY() < lowY){
            lowY = e.getVertexA().getY();
          }

          if(e.getVertexB().getX() > highX){
            highX = e.getVertexA().getX();
          }
          if(e.getVertexB().getY() > highY){
            highY = e.getVertexA().getY();
          }
          if(e.getVertexB().getX() < lowX){
            lowX = e.getVertexA().getX();
          }
          if(e.getVertexB().getY() < lowY){
            lowY = e.getVertexA().getY();
          }
        }
      }
    }
    center[0] = (highX + lowX)/2;
    center[1] = (highY + lowY)/2;
    return center;
  }

  Vertex centroid(Face f) {
    ArrayList<Edge> edges = f.getEdges();
    ArrayList<Vertex> vertex = new ArrayList<Vertex>();
    for (Edge e : edges) {
      vertex.add(e.getVertexA()); vertex.add(e.getVertexB());
    }
    return average(vertex);
  }

  Vertex uppermostVertex(Face f) {
    Vertex upm = new Vertex(-5000, -5000);
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

  Vertex average(ArrayList<Vertex> vs) {
    if ((vs == null) || (vs.size() == 0)) return new Vertex(0., 0.);
    float xSum = 0; float ySum = 0;
    for (Vertex v : vs) { xSum += v.getX(); ySum += v.getY(); }
    return new Vertex(xSum/vs.size(), ySum/vs.size());
  }
}
