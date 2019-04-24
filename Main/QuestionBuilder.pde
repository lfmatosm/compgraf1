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

            int correct = 0; int value = 10;
            q = new Question(shapes, options, correct, value);
        }
        if (i == 2){
          //level2
              Lines3 s15 = new Lines3(OBJ_SIZE,OBJ_SIZE,OBJ_SIZE,OBJ_SIZE);
              s15.rotate(90);
              s15.translate(0,-7);
              Lines2 s16 = new Lines2(OBJ_SIZE,OBJ_SIZE,OBJ_SIZE,OBJ_SIZE);
              s16.translate(130,0);
              s16.rotate(270);
              Lines3 s17 = new Lines3(OBJ_SIZE,OBJ_SIZE,OBJ_SIZE,OBJ_SIZE);
              s17.rotate(180);
              s17.translate(200,-15);
              Lines2 s18 = new Lines2(OBJ_SIZE,OBJ_SIZE,OBJ_SIZE,OBJ_SIZE);
              s18.rotate(180);
              s18.translate(35,90);
              Lines2 s19 = new Lines2(OBJ_SIZE,OBJ_SIZE,OBJ_SIZE,OBJ_SIZE);
              s19.translate(110,90);
              s19.rotate(90);
              Lines1 s20 = new Lines1(OBJ_SIZE,OBJ_SIZE,OBJ_SIZE);
              s20.translate(200,110);
              Lines1 s21 = new Lines1(OBJ_SIZE,OBJ_SIZE,OBJ_SIZE);
              s21.translate(250,110);
              Lines3 s22 = new Lines3(OBJ_SIZE,OBJ_SIZE,OBJ_SIZE,OBJ_SIZE);
              s22.translate(10,200);
              Square s23 = new Square(OBJ_SIZE,OBJ_SIZE,OBJ_SIZE,OBJ_SIZE);
              s23.translate(110,200);
            
              ArrayList<TransformableObject> shapes = new ArrayList<TransformableObject>();
              shapes.add(s15); shapes.add(s16); shapes.add(s17);
              shapes.add(s18); shapes.add(s19); shapes.add(s20); 
              shapes.add(s21); shapes.add(s22); shapes.add(s23);  
        
            
              Lines2 s24 = new Lines2(OBJ_SIZE,OBJ_SIZE,OBJ_SIZE,OBJ_SIZE);
              s24.translate(0,280);
              s24.rotate(90);
              Lines1 s25 = new Lines1(OBJ_SIZE,OBJ_SIZE,OBJ_SIZE);
              s25.translate(120,330);
              s25.rotate(90);
              Lines2 s26 = new Lines2(OBJ_SIZE,OBJ_SIZE,OBJ_SIZE,OBJ_SIZE);
              s26.translate(220,300);
              s26.rotate(270);
              ZShape s27 = new ZShape(OBJ_SIZE,OBJ_SIZE,OBJ_SIZE,OBJ_SIZE);
              s27.translate(0,400);
              Lines2 s28 = new Lines2(OBJ_SIZE,OBJ_SIZE,OBJ_SIZE,OBJ_SIZE);
              s28.translate(100,400);
              Lines1 s29 = new Lines1(OBJ_SIZE,OBJ_SIZE,OBJ_SIZE);
              s29.translate(220,380);
              s29.rotate(90);
          
              AnswerButton a1, a2, a3, a4, a5, a6;
              Vertex a1V = s24.getOriginVertex();
              a1 = new AnswerButton(s24, round(a1V.getX()-PADDING), round(a1V.getY()-PADDING), 
                  SIZE_X, SIZE_Y, REGULAR_COLOR, HIGHLIGHT_COLOR);
              Vertex a2V = s25.getOriginVertex();
              a2 = new AnswerButton(s25, round(a2V.getX()-PADDING), round(a2V.getY()-PADDING-50), SIZE_X, SIZE_Y, REGULAR_COLOR, HIGHLIGHT_COLOR);
              Vertex a3V = s26.getOriginVertex();
              a3 = new AnswerButton(s26, round(a3V.getX()-PADDING), round(a3V.getY()-PADDING), 
                  SIZE_X, SIZE_Y, REGULAR_COLOR, HIGHLIGHT_COLOR);
              Vertex a4V = s27.getOriginVertex();
              a4 = new AnswerButton(s27, round(a4V.getX()-PADDING), round(a4V.getY()-PADDING), 
                  SIZE_X, SIZE_Y, REGULAR_COLOR, HIGHLIGHT_COLOR);
              Vertex a5V = s28.getOriginVertex();
              a5 = new AnswerButton(s28, round(a5V.getX()-PADDING), round(a5V.getY()-PADDING), SIZE_X, 
                  SIZE_Y, REGULAR_COLOR, HIGHLIGHT_COLOR);
              Vertex a6V = s29.getOriginVertex();
              a6 = new AnswerButton(s29, round(a6V.getX()-PADDING), round(a6V.getY()-PADDING), SIZE_X, 
                  SIZE_Y, REGULAR_COLOR, HIGHLIGHT_COLOR);
              ArrayList<AnswerButton> options = new ArrayList<AnswerButton>();
              options.add(a1); options.add(a2); options.add(a3);
              options.add(a4); options.add(a5); options.add(a6);
  
              int correct = 5; int value = 10;
              q = new Question(shapes, options, correct, value);
        }
        if (i == 3){
          //level3
            Triangle s1 = new Triangle(50,50,50);
            Square s2 = new Square(50,50,50,50);
            s2.translate(100, 0);
            Triangle s3 = new Triangle(50,50,50);
            s3.rotate(90);
            s3.translate(220,-10);
            Triangle s4 = new Triangle(50,50,50);
            Triangle s5 = new Triangle(50,50,50);
            s4.translate(0,100);
            s4.rotate(90);
            s5.translate(0,100);
            s5.rotate(270);
            Triangle s6 = new Triangle(50,50,50);
            s6.translate(110,110);
            s6.rotate(30);
            Star8 s7 = new Star8(50,50,50);
            s7.translate(210,100);
            Pentagon s8 = new Pentagon(50,50,50);
            s8.translate(10,200);
            Square s9 = new Square(50,50,50,50);
            s9.scale(.7);
            s9.shear(.3,.3);
            s9.translate(100,200);
            s9.rotate(45);
            
            ArrayList<TransformableObject> shapes = new ArrayList<TransformableObject>();
            shapes.add(s1); shapes.add(s2); shapes.add(s3); 
            shapes.add(s4); shapes.add(s5); shapes.add(s6); 
            shapes.add(s7); shapes.add(s8); shapes.add(s9);
           
            Square s10 = new Square(50,50,50,50);
            Square s11 = new Square(50,50,50,50);
            s10.translate(-10,350);
            s10.scale(.8);
            s10.rotate(45);
            s11.translate(-10,350);
            s11.scale(.8);
            Square s12 = new Square(50,50,25,50);
            s12.translate(110,350);
            Square s13 = new Square(50,50,50,50);
            s13.shear(.3,.3);
            s13.scale(.7);
            s13.translate(210,350);
            s13.rotate(135);
            Square s14 = new Square(50,50,50,25);
            s14.translate(-12,450);
            Star s15 = new Star(50,50,50);
            s15.translate(122,435);
            Triangle s16 = new Triangle(50,50,50);
            Triangle s17 = new Triangle(50,50,50);
            s16.translate(245,440);
            s16.scale(.8);
            s16.rotate(180);
            s17.translate(200,440);
            s17.scale(.8);
            
            
            ArrayList<TransformableObject> a1Images = new ArrayList<TransformableObject>();
            a1Images.add(s10); a1Images.add(s11);
            ArrayList<TransformableObject> a6Images = new ArrayList<TransformableObject>();
            a6Images.add(s16); a6Images.add(s17); 
            AnswerButton a1, a2, a3, a4, a5, a6;
            Vertex a1V = s10.getOriginVertex();
            a1 = new AnswerButton(a1Images, round(a1V.getX()-PADDING+2), round(a1V.getY()-PADDING+2), 
                SIZE_X, SIZE_Y, REGULAR_COLOR, HIGHLIGHT_COLOR);
            Vertex a2V = s12.getOriginVertex();
            a2 = new AnswerButton(s12, round(a2V.getX()-PADDING), round(a2V.getY()-PADDING), SIZE_X-25, SIZE_Y, REGULAR_COLOR, HIGHLIGHT_COLOR);
            Vertex a3V = s13.getOriginVertex();
            a3 = new AnswerButton(s13, round(a3V.getX()-PADDING), round(a3V.getY()-PADDING), 
                SIZE_X+15, SIZE_Y-15, REGULAR_COLOR, HIGHLIGHT_COLOR);
            Vertex a4V = s14.getOriginVertex();
            a4 = new AnswerButton(s14, round(a4V.getX()-PADDING), round(a4V.getY()-PADDING), 
                SIZE_X, SIZE_Y-25, REGULAR_COLOR, HIGHLIGHT_COLOR);
            Vertex a5V = s15.getOriginVertex();
            a5 = new AnswerButton(s15, round(a5V.getX()-PADDING), round(a5V.getY()-PADDING), SIZE_X, 
                SIZE_Y, REGULAR_COLOR, HIGHLIGHT_COLOR);
            Vertex a6V = s17.getOriginVertex();
            a6 = new AnswerButton(a6Images, round(a6V.getX()-PADDING), round(a6V.getY()-PADDING), SIZE_X+18, 
                SIZE_Y-5, REGULAR_COLOR, HIGHLIGHT_COLOR);
            ArrayList<AnswerButton> options = new ArrayList<AnswerButton>();
            options.add(a1); options.add(a2); options.add(a3);
            options.add(a4); options.add(a5); options.add(a6);

            int correct = 4; int value = 10;
            q = new Question(shapes, options, correct, value);
        }
        if (i == 4) {
            //level4
            Square_square s1 = new Square_square(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s1.rotate(90.);
            s1.translate(0.,0.);
            Square_square s2 = new Square_square(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s2.translate(100.,10.);
            Square_square s3 = new Square_square(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s3.rotate(270.);
            s3.translate(220.,20.);
            Triangle_square s4 = new Triangle_square(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s4.translate(5., 110.);
            s4.rotate(-90.);
            Triangle_square s5 = new Triangle_square(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s5.rotate(180.);
            s5.translate(130.,100.);
            Triangle_square s6 = new Triangle_square(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s6.rotate(90.);
            s6.translate(225,90);
            Diamond s7 = new Diamond(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s7.translate(-10., 200);
            Diamond s8 = new Diamond(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s8.translate(105.,190.);
            s8.rotate(315.);

            ArrayList<TransformableObject> shapes = new ArrayList<TransformableObject>();
            shapes.add(s1); shapes.add(s2); 
            shapes.add(s3); shapes.add(s4); 
            shapes.add(s5); shapes.add(s6); 
            shapes.add(s7); shapes.add(s8); 
            
            Square_square s9 = new Square_square(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s9.rotate(180.);
            s9.translate(10.,350);
            Diamond s10 = new Diamond(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s10.rotate(90);
            s10.translate(105., 350);
            Triangle_square s11 = new Triangle_square(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s11.translate(210,350);
            Triangle s12 = new Triangle(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s12.rotate(210);
            s12.translate(0,440);
            Diamond s13 = new Diamond(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s13.rotate(270);
            s13.translate(104,450);
            Diamond_square s14 = new Diamond_square(OBJ_SIZE, OBJ_SIZE, OBJ_SIZE);
            s14.translate(210,450);

            
            ArrayList<TransformableObject> a1Images = new ArrayList<TransformableObject>();
            a1Images.add(s9); 
            ArrayList<TransformableObject> a3Images = new ArrayList<TransformableObject>();
            a3Images.add(s11); 
            ArrayList<TransformableObject> a4Images = new ArrayList<TransformableObject>();
            a4Images.add(s12); 
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

            int correct = 4; int value = 10;
            q = new Question(shapes, options, correct, value);
        }
        return q;
    }
}
