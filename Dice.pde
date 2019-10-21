
void setup()
{
  size(500,500);
  noLoop();
}
void draw()
{
   background(255);
   int sum = 0;
  for(int i = 0; i < 300; i = i + 100){
   for(int j = 0; j < 300; j = j +100){
       Die bob = new Die(i, j);
       bob.show();
       sum = bob.dots + sum;
       
   }
  text("The sum is... " + sum, 350, 350);
  }
  
  
}
void mousePressed()
{
  background(0);
  redraw();
}
class Die //models one single dice cube
{
  int rectSize, dots, myX, myY,dotSize;
  
  Die(int x, int y) //constructor
  {
   roll();
  rectSize = 50;
    myX  = x;
    myY = y;
    dotSize = 10;
  }
  void roll()
  {
    dots = (int)(Math.random()*6)+1;
  }

  


  void show(){
    fill(255);
    rect(myX, myY, rectSize, rectSize);
    fill(0 , 0 , 0);
    if(dots == 1){
       ellipse(myX+24, myY+25, dotSize, dotSize);
      }
    else if(dots == 2){
      ellipse(myX+10,myY+10,dotSize,dotSize);
      ellipse(myX+35,myY+35,dotSize,dotSize);
      }
    else if(dots == 3){
       ellipse(myX+10, myY+15, dotSize, dotSize);
       ellipse(myX+20, myY+25, dotSize, dotSize);
       ellipse(myX+30, myY+35, dotSize, dotSize);
      }
     else if(dots == 4){
        ellipse(myX+10, myY+15, dotSize, dotSize);
        ellipse(myX+35, myY+15, dotSize, dotSize);
        ellipse(myX+10, myY+35, dotSize, dotSize);
        ellipse(myX+35, myY+35, dotSize, dotSize);
     }
      else if(dots == 5){
        ellipse(myX+24, myY+25, dotSize, dotSize);
        ellipse(myX+10, myY+15, dotSize, dotSize);
        ellipse(myX+35, myY+15, dotSize, dotSize);
        ellipse(myX+10, myY+35, dotSize, dotSize);
        ellipse(myX+35, myY+35, dotSize, dotSize);
       }
       else if(dots == 6){
        ellipse(myX+10, myY+10, dotSize, dotSize);
        ellipse(myX+10, myY+25, dotSize, dotSize);
        ellipse(myX+10, myY+40, dotSize, dotSize);
        ellipse(myX+35, myY+10, dotSize, dotSize);
        ellipse(myX+35, myY+25, dotSize, dotSize);
        ellipse(myX+35, myY+40, dotSize, dotSize);
       }
      
       
     }

     }



