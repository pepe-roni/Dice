Die pls;
int x, y;
void setup()
{
  size(800, 500);
  noLoop();
}
void draw()
{
  noStroke();
  background(48, 84, 65);
  pls=new Die(250, 250);
  pls.show();
}
void mousePressed()
{
  redraw();
}
class Die 
{
  int myX, myY, valueDie;
  Die(int x, int y) 
  {
    valueDie=2;
    //valueDie=(int)(Math.random()*6)+1;
    myX=x;
    myY=y;
  }
  void roll()
  {
    
  }
  void show()
  {
    fill(255,0,0);
    rect(myX, myY, 50, 50);
    fill(255);
    if (valueDie==1)
    {
      ellipse(myX+25, myY+25, 12, 12);
    }
    if (valueDie==2)
    {
      ellipse(myX+15,myY+40,12,12);
      ellipse(myX+40,myY+15,12,12);
    }
    
  }
}

