class Isometric3DSquare extends TransformableObject {
  public Isometric3DSquare(float posX, float posY, float sideLen) {
    ArrayList<Edge> edges = new ArrayList<Edge>();
    //Face 1
    Vertex a1 = new Vertex(posX, posY);
    Vertex a2 = new Vertex(posX+sideLen, posY);
    Vertex a3 = new Vertex(posX+sideLen, posY+sideLen);
    Vertex a4 = new Vertex(posX+sideLen*2/3, posY+sideLen);
    Vertex a5 = new Vertex(posX+sideLen*2/3, posY+sideLen*2/3);
    Vertex a6 = new Vertex(posX+sideLen/3, posY+sideLen*2/3);
    Vertex a7 = new Vertex(posX+sideLen/3, posY+sideLen);
    Vertex a8 = new Vertex(posX, posY+sideLen); 

    Edge a1a2 = new Edge(a1, a2, new int[]{0, 0, 0});
    Edge a2a3 = new Edge(a2, a3, new int[]{0, 0, 0});
    Edge a3a4 = new Edge(a3, a4, new int[]{0, 0, 0});
    Edge a4a5 = new Edge(a4, a5, new int[]{0, 0, 0});
    Edge a5a6 = new Edge(a5, a6, new int[]{0, 0, 0});
    Edge a6a7 = new Edge(a6, a7, new int[]{0, 0, 0});
    Edge a7a8 = new Edge(a7, a8, new int[]{0, 0, 0});
    Edge a8a1 = new Edge(a8, a1, new int[]{0, 0, 0});

    edges.add(a1a2);
    edges.add(a2a3);
    edges.add(a3a4);
    edges.add(a4a5);
    edges.add(a5a6);
    edges.add(a6a7);
    edges.add(a7a8);
    edges.add(a8a1);

    //Face 2
    Vertex a9 = new Vertex(posX+50, posY-50);
    Vertex a10 = new Vertex(posX+sideLen+50, posY-50);
    Vertex a11 = new Vertex(posX+sideLen+50, posY+sideLen-50);
    Vertex a12 = new Vertex(posX+sideLen*2/3+50, posY+sideLen-50);
    Vertex a13 = new Vertex(posX+sideLen*2/3+50, posY+sideLen*2/3-50);
    Vertex a14 = new Vertex(posX+sideLen/3+50, posY+sideLen*2/3-50);
    Vertex a15 = new Vertex(posX+sideLen/3+50, posY+sideLen-50);
    Vertex a16 = new Vertex(posX+50, posY+sideLen-50); 

    Edge a9a10 = new Edge(a9, a10, new int[]{0, 0, 0});
    Edge a10a11 = new Edge(a10, a11, new int[]{0, 0, 0});
    Edge a11a12 = new Edge(a11, a12, new int[]{0, 0, 0});
    Edge a12a13 = new Edge(a12, a13, new int[]{0, 0, 0});
    Edge a13a14 = new Edge(a13, a14, new int[]{0, 0, 0});
    Edge a14a15 = new Edge(a14, a15, new int[]{0, 0, 0});
    Edge a15a16 = new Edge(a15, a16, new int[]{0, 0, 0});
    Edge a16a9 = new Edge(a16, a9, new int[]{0, 0, 0});

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
