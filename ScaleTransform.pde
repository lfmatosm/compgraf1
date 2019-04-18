class ScaleTransform extends Transform {
  public ScaleTransform(float xFactor, float yFactor) {
    this.t = new float[][]{{xFactor, 0., 0.},
                          {0., yFactor, 0.},
                          {0., 0., 1.}};
    this.name = "scale";
  }
}
