Die bob;

void setup()
{
  size(300,300);
	noLoop();
}
void draw()
{
  background(197,197,197);
  int count = 0;
  for( int y = 20; y <= 190; y = y + 70)
  {
    for( int x = 20; x <= 290; x = x + 70)
    {
  bob = new Die(x,y);
   bob.show();
   count = count  + bob.dRandom;
    }
  }
  fill(0,0,0);
  text("Total: " + count , 125, 250);
}
void mousePressed()
{
	redraw();
}
class Die 
{
 int dRandom, myX, myY;
 Die(int x, int y)
 {
   roll();
   myX = x;
   myY = y; 
 }
 void roll()
 {
  dRandom = (int)(Math.random()* 6) + 1;
 
 }
 void show()
 {
   noStroke();
   fill(0,50,100);
   rect(myX, myY, 50,50,10);

   if (dRandom == 1)
   {
     fill(150,150,0);
     ellipse(myX + 25, myY + 25,5,5);
   }
   if (dRandom == 2)
   {
     fill(150,150,0);
     ellipse(myX + 15, myY + 15,5,5);
     ellipse(myX + 35, myY + 35,5,5);
   }
   if(dRandom == 3)
   {
     fill(150,150,0);
     ellipse(myX + 15, myY + 15,5,5);
     ellipse(myX + 25, myY + 25,5,5);
     ellipse(myX + 35, myY + 35,5,5);
   }
   if(dRandom == 4)
   {
     fill(150, 150,0);
     ellipse( myX + 15, myY + 15, 5,5);
     ellipse( myX + 35, myY + 35, 5,5);
     ellipse( myX + 15, myY + 35, 5,5);
     ellipse( myX + 35, myY + 15, 5,5);
	  }
  if(dRandom == 5)
  {
    fill(150,150,0);
    ellipse(myX + 15, myY + 15,5,5);
    ellipse(myX + 35, myY + 15,5,5);
    ellipse(myX + 25, myY + 25,5,5);
    ellipse(myX + 15, myY + 35,5,5);
    ellipse(myX + 35, myY + 35,5,5); 
  }
  if(dRandom == 6)
  {
    fill(150,150,0);
    ellipse(myX + 15 ,myY + 15, 5,5);
    ellipse(myX + 15, myY + 25, 5,5);
    ellipse(myX + 15, myY + 35, 5,5);
    ellipse(myX + 35, myY + 15,5,5);
    ellipse(myX + 35, myY + 25, 5,5);
    ellipse(myX + 35, myY + 35, 5,5);
    }
  }
}
