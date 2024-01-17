class Node {

  int i, j, res, x, y, val;
  boolean active;

  public Node(int i, int j, int res) {
    this.i = i;
    this.j = j;
    this.res = res;
    this.x = this.i * this.res;
    this.y = this.j * this.res;
    this.val = (int)random(2);
    this.active = val == 1;
  }

  public void show() {
    stroke(0);
    
     fill(this.val * 255);
     circle(this.x, this.y, this.res/3);
  }
  
  public void activate() {
    if (this.val == 0) {
      this.val = 1;
    }
    if (!this.active) {
      this.active = true;
    }
    
  }
}
