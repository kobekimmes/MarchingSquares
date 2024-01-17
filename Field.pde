

class Field {

  int rows, cols, res;
  Square[][] squares;
  Node[][] nodes;

  public Field(int screen, int res) {
    this.res = res;
    this.rows = (screen / this.res) + 1;
    this.cols = (screen / this.res) + 1;
    this.squares = new Square[cols][rows];
    this.nodes = new Node[cols][rows];
  }

  public void initField() {
    for (int i = 0; i < this.cols; i++) {
      for (int j = 0; j < this.rows; j++) {
        this.nodes[i][j] = new Node(i, j, res);
      }
    }
    for (int i = 0; i < this.cols-1; i++) {
      for (int j = 0; j < this.rows-1; j++) {
        this.squares[i][j] = new Square(nodes[i][j], nodes[i+1][j], nodes[i+1][j+1], nodes[i][j+1]);
      }
    }
  }

  public void showField() {
    for (int i = 0; i < this.cols; i++) {
      for (int j = 0; j < this.rows; j++) {
        this.nodes[i][j].show();
      }
    }
    for (int i = 0; i < this.cols-1; i++) {
      for (int j = 0; j < this.rows-1; j++) {
        this.squares[i][j].show();
      }
    }
  }

  public void activateSquare() {
    int x = mouseX / this.res;
    int y = mouseY / this.res;

    if (mousePressed) {
      this.squares[x][y].activate();
    }
  }
}
