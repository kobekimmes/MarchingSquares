
class Square {

  byte state;
  Node topLeft, topRight, bottomRight, bottomLeft;
  PVector topMid, rightMid, bottomMid, leftMid;
  int res;


  public Square(Node tLeft, Node tRight, Node bRight, Node bLeft) {

    this.topLeft = tLeft;
    this.topRight = tRight;
    this.bottomRight = bRight;
    this.bottomLeft = bLeft;

    this.res = topLeft.res;

    this.topMid = new PVector(topLeft.x + this.res / 2, topLeft.y);
    this.rightMid = new PVector(topRight.x, topRight.y + this.res /2);
    this.bottomMid = new PVector(bottomRight.x - this.res/2, bottomRight.y);
    this.leftMid = new PVector(bottomLeft.x, bottomLeft.y - this.res/2);

    this.state = 0b0000;
  }

  public void getState() {
    this.state |= (this.bottomLeft.active) ? 0b0001 : 0b0;
    this.state |= (this.bottomRight.active) ? 0b0010 : 0b0;
    this.state |= (this.topRight.active) ? 0b0100 : 0b0;
    this.state |= (this.topLeft.active) ? 0b1000 : 0b0;
  }

  public void vLine(PVector a, PVector b) {
    strokeWeight(3);
    line(a.x, a.y, b.x, b.y);
  }
 
    
  public void activate() {
    this.topLeft.activate();
    this.topRight.activate();
    this.bottomRight.activate();
    this.bottomLeft.activate();
    
  }

  public void show() {
    this.getState();
    //noFill();
    //stroke(127);

    //rect(topLeft.x, topLeft.y, this.res, this.res);



    //circle(topMid.x, topMid.y, this.res / 5);
    //circle(rightMid.x, rightMid.y, this.res / 5);
    //circle(bottomMid.x, bottomMid.y, this.res / 5);
    //circle(leftMid.x, leftMid.y, this.res / 5);
    
    println(this.state);
    switch (this.state) {
      
    case 1:
      vLine(leftMid, bottomMid);
      break;
    case 2:
      vLine(bottomMid, rightMid);
      break;
    case 3:
      vLine(leftMid, rightMid);
      break;
    case 4:
      vLine(topMid, rightMid);
      break;

    case 5:
      vLine(leftMid, topMid);
      vLine(bottomMid, rightMid);
      break;

    case 6:
      vLine(topMid, bottomMid);
      break;

    case 7:
      vLine(leftMid, topMid);
      break;

    case 8:
      vLine(leftMid, topMid);
      break;

    case 9:
      vLine(topMid, bottomMid);
      break;

    case 10:
      vLine(leftMid, bottomMid);
      vLine(topMid, rightMid);
      break;

    case 11:
      vLine(topMid, rightMid);
      break;

    case 12:
      vLine(leftMid, rightMid);
      break;

    case 13:
      vLine(bottomMid, rightMid);
      break;

    case 14:
      vLine(leftMid, bottomMid);
      break;

    case 15:
      //fill(0);
      //rect(topLeft.x, topLeft.y, this.res, this.res);
      break;

    default:
      break;
    }
  }
}
