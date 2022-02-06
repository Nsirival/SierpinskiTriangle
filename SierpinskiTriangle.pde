public void setup()
{

  size (600, 600);
}
public void draw()
{
  sierpinski(mouseX - (mouseX/2), mouseY + (mouseY/2), (mouseX + mouseY)/2, color(0));
  fill(0, 0, 0, 50);
  rect(0, 0, 600, 600);
}
public void mouseDragged()//optional
{
  

}
public void sierpinski(int x, int y, int len, color col) 
{
  if (len < 20) {
    noStroke();
    fill(col);
    triangle(x, y, x + len, y, x + len/2, y - len);
  } else {
    sierpinski(x, y, len/2, color(255, 0, 0));
    sierpinski(x+ len/2, y, len/2, color(255, 255, 0));
    sierpinski(x+ len/4, y-len/2, len/2,  color(0, 0, 255));
  }
}
