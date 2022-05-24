Cursor cursor; //<>// //<>//
Target target;

public void setup() {
  size(1200, 800);
  colorMode(HSB,height,height,height);
  cursor = new Cursor(new PVector(mouseX, mouseY));
  target = new Target(width/2, height/2);
  frameRate(90);
}

public void draw() {
  background(mouseY, height, height);
   cursor.show();
  cursor.move();
  target.show();
  target.move();
 // if (mousePressed) 
  cursor.hit(target);
}
