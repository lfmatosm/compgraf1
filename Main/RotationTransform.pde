class RotationTransform extends Transform {
  public RotationTransform(float rad) {
    rad = rad/57.2958;
    this.t = new float[][]{{cos(rad), -sin(rad), 0.},
                          {sin(rad), cos(rad), 0.},
                          {0., 0., 1.}};
    this.name = "rotation";
  }
}
