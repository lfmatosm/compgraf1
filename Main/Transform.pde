abstract class Transform {
  float[][] t = {{}};

  public float[][] multiply(float[][] other) {
    if (this.t[0].length != other.length) {
        throw new IllegalArgumentException("Incompatible matrices.");
    }

    float[][] mtx = new float[this.t.length][other[0].length];

    for (int i = 0; i < this.t.length; i++) {
        for (int j = 0; j < other[0].length; j++) {
            for (int k = 0; k < this.t[0].length; k++) {
                mtx[i][j] += this.t[i][k] * other[k][j];
            }
        }
    }
    return mtx;
  }
}
