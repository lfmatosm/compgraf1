//Abstração de uma transformação. Utilizando multiplicação de matrizes,
//as classes-filhas de Transform podem transformar objetos 2D.
abstract class Transform {
  float[][] t = new float[3][3];
  String name;

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

  public void showMtx(float[][] mtx) {
    String str = ""; int i = 0; int j = 0;
    for (; i < mtx.length; i++) {
      for (; j < mtx[0].length; j++) {
          str += mtx[i][j] + " ";
      }
      str += "\n";
    }
    print("\n" + str + "\n" + "Qty. rows: " + mtx.length + "\tQty. columns: " +
    mtx[0].length + "\n");
  }
}
