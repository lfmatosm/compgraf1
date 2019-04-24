class AnswerButton extends Button {
    private ArrayList<TransformableObject> objects = new ArrayList<TransformableObject>();
    
    public AnswerButton(TransformableObject obj, int x, int y, 
    int sizeX, int sizeY, color regular, color highlight) {
        super(x, y, sizeX, sizeY, regular, highlight);
        this.objects.add(obj);
    }

    public AnswerButton(ArrayList<TransformableObject> objs, int x, int y, 
    int sizeX, int sizeY, color regular, color highlight) {
        super(x, y, sizeX, sizeY, regular, highlight);
        this.objects = objs;
    }

    void draw() {
        update(mouseX, mouseY);

        if (overBtn) fill(btnHighlight);
        else fill(btnColor);
        // stroke(0);
        rect(btnX, btnY, btnWidth, btnHeight);

        for (TransformableObject obj : this.objects) obj.draw();
    }
}
