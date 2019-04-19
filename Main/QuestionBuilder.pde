class QuestionBuilder {
    final static int PADDING = 3;
    final static int OBJ_SIZE = 50;

    public QuestionBuilder() {};
    
    public Question buildQuestion(int i) {
        Question q = new Question();
        if (i == 1) {
            //level1
                Triangle s1 = new Triangle(50,50,50);
                s1.rotate(30.);
                s1.translate(0.,10.);
                Square s2 = new Square(50,50,50,50);
                s2.translate(100.,0.);
                Triangle s3 = new Triangle(50,50,50);
                s3.translate(220.,-10.);
                s3.rotate(90.);
                Triangle s4 = new Triangle(50,50,50);
                s4.translate(0., 100.);
                s4.rotate(210.);
                Triangle s5 = new Triangle(50,50,50);
                s5.rotate(30.);
                s5.translate(110.,110.);
                Square s6 = new Square(50,50,50,50);
                s6.translate(210,100);
                Square s7 = new Square(50,50,50,50);
                s7.translate(-10., 200);
                Triangle s8 = new Triangle(50,50,50);
                s8.translate(110.,190.);
                s8.rotate(90.);
  
                Square s2Aux = new Square(50,50,50,50);
                s2Aux.translate(100.,0.);
                s2Aux.scale(.5);
                Triangle s4Aux = new Triangle(50,50,50);
                s4Aux.translate(0., 100.);
                s4Aux.rotate(210.);
                s4Aux.scale(.5);

                ArrayList<TransformableObject> shapes = new ArrayList<TransformableObject>();
                shapes.add(s1); shapes.add(s2); shapes.add(s2Aux);
                shapes.add(s3); shapes.add(s4); shapes.add(s4Aux); 
                shapes.add(s5); shapes.add(s6); shapes.add(s7); 
                shapes.add(s8); 
                
  
                Triangle s9 = new Triangle(50,50,50);
                s9.rotate(30.);
                s9.translate(0.,360);
                Square s10 = new Square(50,50,50,50);
                s10.translate(100,350);
                Square s11 = new Square(50,50,50,50);
                s11.translate(200,350);
                Triangle s12 = new Triangle(50,50,50);
                s12.rotate(210);
                s12.translate(0,450);
                Triangle s13 = new Triangle(50,50,50);
                s13.translate(110,460);
                s13.rotate(30);
                Triangle s14 = new Triangle(50,50,50);
                s14.rotate(210);
                s14.translate(210,440);
   
                Triangle s9Aux = new Triangle(50,50,50);
                s9Aux.rotate(30.);
                s9Aux.translate(0.,360);
                s9Aux.scale(.5);
                Square s11Aux = new Square(50,50,50,50);
                s11Aux.translate(200,350);
                s11Aux.scale(.5f);
                Triangle s12Aux = new Triangle(50,50,50);
                s12Aux.rotate(210);
                s12Aux.translate(0,450);
                s12Aux.scale(.5);

                ArrayList<TransformableObject> options = new ArrayList<TransformableObject>();
                options.add(s9); options.add(s9Aux); options.add(s10);
                options.add(s11); options.add(s11Aux); options.add(s12); 
                options.add(s12Aux); options.add(s13); options.add(s14);
                
                // ArrayList<TransformableObject> a1Images = new ArrayList<TransformableObject>();
                // a1Images.add(s9); a1Images.add(s9Aux);
                // ArrayList<TransformableObject> a3Images = new ArrayList<TransformableObject>();
                // a3Images.add(s11); a3Images.add(s11Aux);
                // ArrayList<TransformableObject> a4Images = new ArrayList<TransformableObject>();
                // a4Images.add(s12); a4Images.add(s12Aux);

                // AnswerButton a1, a2, a3, a4, a5, a6;
                // Vertex a1V = s9.getUppermostVertex();
                // a1 = new AnswerButton(a1Images, a1V.getX()-PADDING, a1V.getY()-PADDING, 
                // OBJ_SIZE+PADDING, OBJ_SIZE+PADDING);
                // Vertex a2V = s10.getUppermostVertex();
                // a2 = new AnswerButton(s10, a2V.getX()-PADDING, a2V.getY()-PADDING, OBJ_SIZE+PADDING, OBJ_SIZE+PADDING);
                // Vertex a3V = s11.getUppermostVertex();
                // a3 = new AnswerButton(a3Images, a3V.getX()-PADDING, a3V.getY()-PADDING, 
                // OBJ_SIZE+PADDING, OBJ_SIZE+PADDING);
                // Vertex a4V = s12.getUppermostVertex();
                // a4 = new AnswerButton(a4Images, a4V.getX()-PADDING, a4V.getY()-PADDING, OBJ_SIZE+PADDING, OBJ_SIZE+PADDING);
                // Vertex a5V = s13.getUppermostVertex();
                // a5 = new AnswerButton(s13, a5V.getX()-PADDING, a5V.getY()-PADDING, OBJ_SIZE+PADDING, OBJ_SIZE+PADDING);
                // Vertex a6V = s14.getUppermostVertex();
                // a6 = new AnswerButton(s14, a6V.getX()-PADDING, a6V.getY()-PADDING, OBJ_SIZE+PADDING, OBJ_SIZE+PADDING);

                // ArrayList<AnswerButton> options = new ArrayList<AnswerButton>();
                // options.add(a1); options.add(a2); options.add(a3);
                // options.add(a4); options.add(a5); options.add(a6);

                int correct = 1;
                q = new Question(shapes, options, correct);
  
                // s1.draw();
                // s2.draw();
                // s3.draw();
                // s4.draw();
                // s5.draw();
                // s6.draw();
                // s7.draw();
                // s8.draw();
                // s9.draw();
                // s10.draw();
                // s11.draw();
                // s12.draw();
                // s13.draw();

                // s14.draw();
                // s2Aux.draw();
                // s4Aux.draw();
                // s9Aux.draw();
                // s11Aux.draw();
                // s12Aux.draw();
  
                // background(255);

        }
        return q;
    }
}