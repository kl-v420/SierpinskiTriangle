public void setup()
{
  size(500,520);
  background(0,0,0);
}
public void draw()
{
  sierpinski(0, 500, 500);
}
public void sierpinski(int x, int y, int len) 
{
  stroke(161,16,161);
  noFill();
  if(len < 20){
  triangle(x,y, x + len, y, x + len, y + len);
  }else{
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
  
}
