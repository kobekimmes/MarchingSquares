int screen = 800;
int res = 100;

void settings() {
  width = screen;
  height = screen;
}

int rows = (screen / res) + 1;
int cols = (screen / res) + 1;

Field field = new Field(screen, res);


void setup() {
  field.initField();
  
}


void draw() {
  background(255);
  field.showField();
  field.activateSquare();

}
