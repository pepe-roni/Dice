Die pls;
int total;
void setup()
{
  size(800, 500);
  noLoop();
}
void draw()
{
  noStroke();
  background(48, 84, 65);
  for (int y=60; y<=440; y+=60)
  {
    for (int x=60; x<=740; x+=60)
    {
      pls=new Die(x, y);
      pls.show();
      total+=pls.valueDie;
    }
  }
  textSize(20);
  text("Die Count: "+total,360,30);
}
void mousePressed()
{
  total=0;
  redraw();
}
class Die 
{
  int myX, myY, valueDie;
  Die(int x, int y) 
  {
    valueDie=(int)(Math.random()*6)+1;
    myX=x;
    myY=y;
  }
  void roll()
  {
  }
  void show()
  {
    fill(random(0, 255), random(0, 200), random(0, 255));
    rect(myX, myY, 50, 50);
    fill(255);
    if (valueDie==1)
    {
      ellipse(myX+25, myY+25, 12, 12);
    }
    if (valueDie==2)
    {
      ellipse(myX+10, myY+40, 12, 12);
      ellipse(myX+40, myY+10, 12, 12);
    }
    if (valueDie==3)
    {
      ellipse(myX+10, myY+40, 12, 12);
      ellipse(myX+40, myY+10, 12, 12);
      ellipse(myX+25, myY+25, 12, 12);
    }
    if (valueDie==4)
    {
      ellipse(myX+10, myY+40, 12, 12);
      ellipse(myX+40, myY+10, 12, 12);
      ellipse(myX+40, myY+40, 12, 12);
      ellipse(myX+10, myY+10, 12, 12);
    }
    if (valueDie==5)
    {
      ellipse(myX+10, myY+40, 12, 12);
      ellipse(myX+40, myY+10, 12, 12);
      ellipse(myX+40, myY+40, 12, 12);
      ellipse(myX+10, myY+10, 12, 12);      
      ellipse(myX+25, myY+25, 12, 12);
    }
    if (valueDie==6)
    {
      ellipse(myX+10, myY+40, 12, 12);
      ellipse(myX+40, myY+10, 12, 12);
      ellipse(myX+40, myY+40, 12, 12);
      ellipse(myX+10, myY+10, 12, 12);
      ellipse(myX+10, myY+25, 12, 12);
      ellipse(myX+40, myY+25, 12, 12);
    }
  }
}

