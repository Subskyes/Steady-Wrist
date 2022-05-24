public class Target {
  private PVector pos, vel;
  private final int size = 50;
  public boolean active = true;

public Target(float x, float y) {
  pos = new PVector (x,y);
  vel = new PVector(mouseX, mouseY).sub(pos).setMag(1);
}
public void show() {
  fill (0,255,0);
  circle(pos.x,pos.y,size);
}

public void move() {
  pos.add(vel);
  if(pos.x > width-size || pos.x < size - 5) {
      vel.x *= -1;
    }
    if(pos.y > height-size || pos.y < size - 5) {
      vel.y *= -1;
    }
}
}
