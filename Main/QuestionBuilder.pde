class QuestionBuilder {
    final int PADDING = 5;
    final int OBJ_SIZE = 50;
    final int BTN_WIDTH = 55;
    final int BTN_HEIGHT = 55;
    final int SIZE_X = BTN_WIDTH + PADDING;
    final int SIZE_Y = BTN_HEIGHT + PADDING;
    final color REGULAR_COLOR = color(255, 255, 255);
    final color HIGHLIGHT_COLOR = color(200, 100, 200);

    public QuestionBuilder() {};
    
    public Question buildQuestion(int i) {
        Question q = new Question();
        if (i == 1) {
            //level1
            Triangle s1 = new Triangle(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s1.rotate(30.);
            s1.translate(0.,10.);
            Square s2 = new Square(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s2.translate(100.,0.);
            Triangle s3 = new Triangle(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s3.translate(220.,-10.);
            s3.rotate(90.);
            Triangle s4 = new Triangle(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s4.translate(0., 100.);
            s4.rotate(210.);
            Triangle s5 = new Triangle(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s5.rotate(30.);
            s5.translate(110.,110.);
            Square s6 = new Square(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s6.translate(210,100);
            Square s7 = new Square(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s7.translate(-10., 200);
            Triangle s8 = new Triangle(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s8.translate(110.,190.);
            s8.rotate(90.);

            Square s2Aux = new Square(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s2Aux.translate(100.,0.);
            s2Aux.scale(.5);
            Triangle s4Aux = new Triangle(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s4Aux.translate(0., 100.);
            s4Aux.rotate(210.);
            s4Aux.scale(.5);
            ArrayList<TransformableObject> shapes = new ArrayList<TransformableObject>();
            shapes.add(s1); shapes.add(s2); shapes.add(s2Aux);
            shapes.add(s3); shapes.add(s4); shapes.add(s4Aux); 
            shapes.add(s5); shapes.add(s6); shapes.add(s7); 
            shapes.add(s8); 
            
            Triangle s9 = new Triangle(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s9.rotate(30.);
            s9.translate(0.,360);
            Square s10 = new Square(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s10.translate(100,350);
            Square s11 = new Square(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s11.translate(200,350);
            Triangle s12 = new Triangle(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s12.rotate(210);
            s12.translate(0,450);
            Triangle s13 = new Triangle(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s13.translate(110,460);
            s13.rotate(30);
            Triangle s14 = new Triangle(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s14.rotate(210);
            s14.translate(210,440);

            Triangle s9Aux = new Triangle(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s9Aux.rotate(30.);
            s9Aux.translate(0.,360);
            s9Aux.scale(.5);
            Square s11Aux = new Square(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s11Aux.translate(200,350);
            s11Aux.scale(.5f);
            Triangle s12Aux = new Triangle(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s12Aux.rotate(210);
            s12Aux.translate(0,450);
            s12Aux.scale(.5);
            
            ArrayList<TransformableObject> a1Images = new ArrayList<TransformableObject>();
            a1Images.add(s9); a1Images.add(s9Aux);
            ArrayList<TransformableObject> a3Images = new ArrayList<TransformableObject>();
            a3Images.add(s11); a3Images.add(s11Aux);
            ArrayList<TransformableObject> a4Images = new ArrayList<TransformableObject>();
            a4Images.add(s12); a4Images.add(s12Aux);
            AnswerButton a1, a2, a3, a4, a5, a6;
            Vertex a1V = s9.getOriginVertex();
            a1 = new AnswerButton(a1Images, round(a1V.getX()-PADDING), round(a1V.getY()-PADDING), 
                SIZE_X, SIZE_Y, REGULAR_COLOR, HIGHLIGHT_COLOR);
            Vertex a2V = s10.getOriginVertex();
            a2 = new AnswerButton(s10, round(a2V.getX()-PADDING), round(a2V.getY()-PADDING), SIZE_X, SIZE_Y, REGULAR_COLOR, HIGHLIGHT_COLOR);
            Vertex a3V = s11.getOriginVertex();
            a3 = new AnswerButton(a3Images, round(a3V.getX()-PADDING), round(a3V.getY()-PADDING), 
                SIZE_X, SIZE_Y, REGULAR_COLOR, HIGHLIGHT_COLOR);
            Vertex a4V = s12.getOriginVertex();
            a4 = new AnswerButton(a4Images, round(a4V.getX()-PADDING), round(a4V.getY()-PADDING), 
                SIZE_X, SIZE_Y, REGULAR_COLOR, HIGHLIGHT_COLOR);
            Vertex a5V = s13.getOriginVertex();
            a5 = new AnswerButton(s13, round(a5V.getX()-PADDING), round(a5V.getY()-PADDING), SIZE_X, 
                SIZE_Y, REGULAR_COLOR, HIGHLIGHT_COLOR);
            Vertex a6V = s14.getOriginVertex();
            a6 = new AnswerButton(s14, round(a6V.getX()-PADDING), round(a6V.getY()-PADDING), SIZE_X, 
                SIZE_Y, REGULAR_COLOR, HIGHLIGHT_COLOR);
            ArrayList<AnswerButton> options = new ArrayList<AnswerButton>();
            options.add(a1); options.add(a2); options.add(a3);
            options.add(a4); options.add(a5); options.add(a6);

            int correct = 1; int value = 10;
            q = new Question(shapes, options, correct, value);
        }
        return q;
    }
}