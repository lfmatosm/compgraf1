abstract class TransformableObject{
  ArrayList<Face> objects;
  Face simpleObject;

  //Reflete um Objeto em relação a x ou y;
  void reflection(boolean aroundX, boolean aroundY){
    int xRefl = 0;
    int yRefl = 0;

    if(aroundX == false) xRefl = 1;
    if(aroundX == true) xRefl = -1;
    if(aroundY == false) yRefl = 1;
    if(aroundY == true) yRefl = -1;

    PVector centroAntigo = getCenter();
    translateToOrigin();

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

  public void translateToOrigin(){
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
      scaleFace(this.simpleObject, scalingFactorX, scalingFactorY);
    } else for (Face f : this.objects) scaleFace(f, scalingFactorX, scalingFactorY);
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

  void scaleFace(Face f, float scalingFactorX, float scalingFactorY) {
    PVector centroAntigo = getCenter();
    translateToOrigin();
    ArrayList<Edge> newEdges =  new ArrayList<Edge>();
    for (Edge e : f.getEdges()) {
      Vertex a = e.getVertexA();
      e.getVertexA().setXY(a.getX()*scalingFactorX, a.getY()*scalingFactorY);

    }
    translate(centroAntigo.x, centroAntigo.y);
    return;
  }

  Vertex scaledVertex(Vertex v, float scalingFactorX, float scalingFactorY) {
    return new Vertex((v.getX() * scalingFactorX), (v.getY() * scalingFactorY));
  }

  //Recebe um ângulo em radianos e executa a rotação do objeto relativa ao ângulo,
  //no sentido anti-horário.
  void rotate(float rad){
    float[] center = findCenter();
    if (this.objects == null){
      for(Edge e : simpleObject.getEdges()){
        float[][] matrixA = {{e.getVertexA().getX()}, {e.getVertexA().getY()}, {1}};
        float[][] matrixB = {{1,0,-center[0]}, {0,1,-center[1]}, {0,0,1}};
        float[][] matrixC = e.getVertexA().multMat(matrixB, matrixA);
        float[][] matrixD = {{cos(rad), -sin(rad), 0}, {sin(rad), cos(rad), 0}, {0,0,1}};

        float[][] matrixE = e.getVertexA().multMat(matrixD, matrixC);
        float[][] matrixF = {{1, 0, center[0]}, {0, 1, center[1]}, {0, 0, 1}};

        e.getVertexA().multMat(matrixF, matrixE);

        float[][] matrixG = {{e.getVertexB().getX()}, {e.getVertexB().getY()}, {1}};
        float[][] matrixH= {{1,0,-center[0]}, {0,1,-center[1]}, {0,0,1}};

        float[][] matrixI = e.getVertexB().multMat(matrixH, matrixG);
        float[][] matrixJ = {{cos(rad), -sin(rad), 0}, {sin(rad), cos(rad), 0}, {0,0,1}};

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
          float[][] matrixD = {{cos(rad), -sin(rad), 0}, {sin(rad), cos(rad), 0}, {0,0,1}};

          float[][] matrixE = e.getVertexA().multMat(matrixD, matrixC);
          float[][] matrixF = {{1, 0, center[0]}, {0, 1, center[1]}, {0, 0, 1}};

          e.getVertexA().multMat(matrixF, matrixE);

          float[][] matrixG = {{e.getVertexB().getX()}, {e.getVertexB().getY()}, {1}};
          float[][] matrixH= {{1,0,-center[0]}, {0,1,-center[1]}, {0,0,1}};

          float[][] matrixI = e.getVertexB().multMat(matrixH, matrixG);
          float[][] matrixJ = {{cos(rad), -sin(rad), 0}, {sin(rad), cos(rad), 0}, {0,0,1}};

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
}
