public void setup()
{
  frameRate(5);
  size (600, 600);
  background(0);}
public void draw()
{
  
  
}
public void mouseDragged()//optional
{
  sierpinski(Math.abs(mouseX-300)+300, mouseY, mouseX);
  fill(0, 0, 0, 34);
  rect(0, 0, 600, 600);

}
public void sierpinski(int x, int y, int len) 
{
  if (len < 20) {
    noStroke();
    fill(255, 255, 255, 100);
    triangle(x, y, x + len, y, x + len/2, y - len);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+ len/2, y, len/2);
    sierpinski(x+ len/4, y-len/2, len/2);
  }
}
