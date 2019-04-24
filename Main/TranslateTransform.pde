class TranslateTransform extends Transform {
  public TranslateTransform(float xFactor, float yFactor) {
    this.t = new float[][]{{1., 0., xFactor},
                          {0., 1., yFactor},
                          {0., 0., 1.}};
    this.name = "translate";
  }
}
