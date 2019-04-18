class ShearTransform extends Transform {
  public ShearTransform(float xFactor, float yFactor) {
    this.t = new float[][]{{1., xFactor, 0.},
                          {yFactor, 1., 0.},
                          {0., 0., 1.}};
    this.name = "shear";
  }
}
