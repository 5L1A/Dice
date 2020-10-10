int sum = 0;
void setup()
{
  noLoop();
  background(100,200,150);
  size(390,390);
}
void draw()
{  

  
  for(int i = 0; i < 760; i += 40) {
    for( int h = 0; h < 370; h += 40) {
        Die bob = new Die(i, h);
        bob.show();
        bob.roll();
    }
  } 
    fill(0, 102, 153, 204);
    rect(0, 360, 370, 30);
    fill(0, 952, 333, 204);
    text(sum, 0, 370);
    
}
void mousePressed()
{
  redraw();
  sum = 0;
}
class Die //models one single dice cube
{
  int myX, myY;   
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
  }
  void show()
  {

  rect(myX, myY,350,350);
  int numDot = (int) ((Math.random()*6)+ 1);
  if(numDot == 1){
     ellipse(myX + 20, myY + 20, 10, 10);
     sum++;
    } else
    
    if(numDot == 2){
      ellipse(myX + 30, myY + 30, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
      sum += 2;
    } else
    
    if(numDot == 3) {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 20, myY + 20, 10, 10);
      ellipse(myX + 30, myY + 30, 10, 10);
      sum += 3;
    } else
    
    if(numDot == 4) {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 30, myY + 30, 10, 10);
      ellipse(myX + 10, myY - 10, 10, 10);
      ellipse(myX + 30, myY + 10, 10, 10);
      sum += 4;
    } else
    
    if(numDot == 5) {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 30, myY + 30, 10, 10);
      ellipse(myX + 10, myY - 10, 10, 10);
      ellipse(myX + 30, myY + 10, 10, 10);
      ellipse(myX + 20, myY + 20, 10, 10);
      sum += 5;
    } else
    
    if(numDot == 6) {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 30, myY + 30, 10, 10);
      ellipse(myX + 10, myY - 10, 10, 10);
      ellipse(myX + 30, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 21, 10, 10);
      ellipse(myX + 30, myY + 21, 10, 10);
      sum += 6;
    }
  }
}
