public class Cursor {
  private PVector pos, vel;
  private final int size = 10;
 private int score;
  
  public Cursor(PVector pos) {
    this.pos = pos;
    score = 0;
  }
  
  public void show() {
    fill (0,0,0,100);
    circle(pos.x,pos.y,size); //<>//
    rect (mouseX - 2, mouseY + 20, 2, size*2);
    rect (mouseX - 2, mouseY - 40, 2, size*2);
    rect (mouseX - 40, mouseY - 2, size *2,2);
    rect (mouseX + 20, mouseY - 2, size *2,2);
    noStroke();
}
public void move() {
  pos = new PVector (mouseX, mouseY);
}
public void hit(Target target) {
  double dist = PVector.sub(this.pos,target.pos).mag();
  if (dist <= this.size / 2 + target.size / 2 && mousePressed && frameCount % 90 == 0) {
    target.vel.x += 1;
    target.vel.y += 1;
    score ++;
    System.out.println("Hit");
} 
 textSize(48);
 text(score, 100, 100);
}
}
