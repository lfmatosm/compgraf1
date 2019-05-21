class Isometric3DSquare extends TransformableObject {
  public Isometric3DSquare(float posX, float posY, float sideLen) {
    ArrayList<Edge> edges = new ArrayList<Edge>();
    //Face 1
    Vertex a1 = new Vertex(posX, posY,0);
    Vertex a2 = new Vertex(posX+sideLen, posY,0);
    Vertex a3 = new Vertex(posX+sideLen, posY+sideLen,0);
    Vertex a4 = new Vertex(posX+sideLen*2/3, posY+sideLen,0);
    Vertex a5 = new Vertex(posX+sideLen*2/3, posY+sideLen*2/3,0);
    Vertex a6 = new Vertex(posX+sideLen/3, posY+sideLen*2/3,0);
    Vertex a7 = new Vertex(posX+sideLen/3, posY+sideLen,0);
    Vertex a8 = new Vertex(posX, posY+sideLen,0); 

    Edge a1a2 = new Edge(a1, a2, new int[]{0, 0, 0});
    Edge a2a3 = new Edge(a2, a3, new int[]{0, 0, 0});
    Edge a3a4 = new Edge(a3, a4, new int[]{0, 0, 0});
    Edge a4a5 = new Edge(a4, a5, new int[]{0, 0, 0});
    Edge a5a6 = new Edge(a5, a6, new int[]{0, 0, 0});
    Edge a6a7 = new Edge(a6, a7, new int[]{0, 0, 0});
    Edge a7a8 = new Edge(a7, a8, new int[]{0, 0, 0});
    Edge a8a1 = new Edge(a8, a1, new int[]{0, 0, 0});



    //Face 2
    Vertex a9 = new Vertex(posX+100, posY-60, 0);
    Vertex a10 = new Vertex(posX+100+sideLen, posY-60,0);
    Vertex a11 = new Vertex(posX+100+sideLen, posY+sideLen-60,0);
    Vertex a12 = new Vertex(posX+100+sideLen*2/3, posY+sideLen-60,0);
    Vertex a13 = new Vertex(posX+100+sideLen*2/3, posY-60+sideLen*2/3,0);
    Vertex a14 = new Vertex(posX+100+sideLen/3, posY-60+sideLen*2/3,0);
    Vertex a15 = new Vertex(posX+100+sideLen/3, posY+sideLen-60,0);
    Vertex a16 = new Vertex(posX+100, posY+sideLen-60, 0); 

    Edge a9a10 = new Edge(a9, a10, new int[]{0, 0, 0});
    Edge a10a11 = new Edge(a10, a11, new int[]{0, 0, 0});
    Edge a11a12 = new Edge(a11, a12, new int[]{0, 0, 0});
    Edge a12a13 = new Edge(a12, a13, new int[]{0, 0, 0});
    Edge a13a14 = new Edge(a13, a14, new int[]{0, 0, 0});
    Edge a14a15 = new Edge(a14, a15, new int[]{0, 0, 0});
    Edge a15a16 = new Edge(a15, a16, new int[]{0, 0, 0});
    Edge a16a9 = new Edge(a16, a9, new int[]{0, 0, 0});


  System.out.println(a8.getY());
  System.out.println(a11.getY());
  

    
    
    ArrayList<Vertex> f1 = new ArrayList<Vertex>();
    f1.add(a1);
    f1.add(a2);
    f1.add(a3);
    f1.add(a4);
    f1.add(a5);
    f1.add(a6);
    f1.add(a7);
    f1.add(a8);
    
    ArrayList<Vertex> f2 = new ArrayList<Vertex>();
    f2.add(a9);
    f2.add(a10);
    f2.add(a11);
    f2.add(a12);
    f2.add(a13);
    f2.add(a14);
    f2.add(a15);
    f2.add(a16);
    
    int x1 = 30;
    int y1 = 30;
    int x2 = -30;
    int y2 = -30;
    
    float[][] mtz1 = new float[][]{{cos(y1/57.2958),   0, -sin(y1/57.2958)},
                                      {sin(x1/57.2958)*sin(y1/57.2958),         cos(x1/57.2958),  sin(x1/57.2958)*cos(y1/57.2958)},
                                      {cos(x1/57.2958)*sin(y1/57.2958),       -sin(x1/57.2958),       cos(x1/57.2958)*cos(y1/57.2958)}};
     
     float[][] mtz2 = new float[][]{{cos(y2/57.2958),   0, -sin(y2/57.2958)},
                                      {sin(x2/57.2958)*sin(y2/57.2958),         cos(x2/57.2958),  sin(x2/57.2958)*cos(y2/57.2958)},
                                      {cos(x2/57.2958)*sin(y2/57.2958),       -sin(x2/57.2958),       cos(x2/57.2958)*cos(y2/57.2958)}};
     
    //for (Edge e: f1.getEdges()){
    //  float[][] mtzAtual1 = new float[][]{{e.getVertexA().getX()}, {e.getVertexA().getY()}, {1}};
    //  float[][] mtzAtual2 = new float[][]{{e.getVertexB().getX()}, {e.getVertexB().getY()}, {1}};
      
    //  float[][] mtzResult1 = new float[mtz1.length][mtzAtual1[0].length];
    //  float[][] mtzResult2 = new float[mtz1.length][mtzAtual2[0].length];


    //for (int i = 0; i < mtz1.length; i++) {
    //    for (int j = 0; j < mtzAtual1[0].length; j++) {
    //        for (int k = 0; k < mtz1[0].length; k++) {
    //            mtzResult1[i][j] += mtz1[i][k] * mtzAtual1[k][j];
    //        }
    //    }
    //}
    
    //    for (int i = 0; i < mtz1.length; i++) {
    //    for (int j = 0; j < mtzAtual2[0].length; j++) {
    //        for (int k = 0; k < mtz1[0].length; k++) {
    //            mtzResult2[i][j] += mtz1[i][k] * mtzAtual2[k][j];
    //        }
    //    }
    //}
    
    //  e.setVertexA(new Vertex(mtzResult1[0][0], mtzResult1[1][0]));
    //  e.setVertexB(new Vertex(mtzResult2[0][0], mtzResult2[1][0]));
    //}
  
  for (Vertex v: f1){
      float[][] mtzAtual1 = new float[][]{{v.getX()}, {v.getY()}, {1}};
      
      float[][] mtzResult1 = new float[mtz2.length][mtzAtual1[0].length];

    for (int i = 0; i < mtz2.length; i++) {
        for (int j = 0; j < mtzAtual1[0].length; j++) {
            for (int k = 0; k < mtz2[0].length; k++) {
                mtzResult1[i][j] += mtz2[i][k] * mtzAtual1[k][j];
            }
        }
    }
    
      v.setX(mtzResult1[0][0]);
      v.setY(mtzResult1[1][0]);
    }
  
  for (Vertex v: f2){
      float[][] mtzAtual1 = new float[][]{{v.getX()}, {v.getY()}, {1}};
      
      float[][] mtzResult1 = new float[mtz2.length][mtzAtual1[0].length];

    for (int i = 0; i < mtz2.length; i++) {
        for (int j = 0; j < mtzAtual1[0].length; j++) {
            for (int k = 0; k < mtz2[0].length; k++) {
                mtzResult1[i][j] += mtz2[i][k] * mtzAtual1[k][j];
            }
        }
    }
    
      v.setX(mtzResult1[0][0]);
      v.setY(mtzResult1[1][0]);
    }
    
        edges.add(a1a2);
    edges.add(a2a3);
    edges.add(a3a4);
    edges.add(a4a5);
    edges.add(a5a6);
    edges.add(a6a7);
    edges.add(a7a8);
    edges.add(a8a1);
    
        edges.add(a9a10);
    edges.add(a10a11);
    edges.add(a11a12);
    edges.add(a12a13);
    edges.add(a13a14);
    edges.add(a14a15);
    edges.add(a15a16);
    edges.add(a16a9);
        
    
        //Face 3
    Edge a1a9 = new Edge(a1, a9, new int[]{0, 0, 0});
    Edge a2a10 = new Edge(a2, a10, new int[]{0, 0, 0});

    edges.add(a1a9);
    edges.add(a2a10);

    //Face 4
    Edge a3a11 = new Edge(a3, a11, new int[]{0, 0, 0});

    edges.add(a3a11);

    //Face 5
    Edge a4a12 = new Edge(a4, a12, new int[]{0, 0, 0});

    edges.add(a4a12);

    //Face 6
    Edge a5a13 = new Edge(a5, a13, new int[]{0, 0, 0});

    edges.add(a5a13);

    //Face 7
    Edge a6a14 = new Edge(a6, a14, new int[]{0, 0, 0});

    edges.add(a6a14);

    //Face 8
    Edge a7a15 = new Edge(a7,a15, new int[]{0,0,0});

    edges.add(a7a15);

    //Face 9
    Edge a8a16 = new Edge(a8,a16, new int[]{0,0,0});

    edges.add(a8a16);    
    
    
    this.simpleObject = new Face(edges);
  }
}
