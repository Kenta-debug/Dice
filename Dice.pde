Die one = new Die(50,50);
Die two = new Die(225,50);
Die three = new Die(400,50);
Die four = new Die(50,200);
Die five = new Die(225,200);
Die six = new Die(400,200);
Die seven = new Die(50,400);
Die eight = new Die(225,400);
Die nine = new Die(400,400);
void setup()
{
  size(500,500);
  noLoop();
}
void draw()
{
  one.show();
  one.roll();
  one.sum();
  two.show();
  two.roll();
  two.sum();
  three.show();
  three.roll();
  three.sum();
  four.show();
  four.roll();
  four.sum();
  five.show();
  five.roll();
  five.sum();
  six.show();
  six.roll();
  six.sum();
  seven.show();
  seven.roll();
  seven.sum();
  eight.show();
  eight.roll();
  eight.sum();
  nine.show();
  nine.roll();
  nine.sum();
  
  
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int rectSize, dots, myX, myY,dotSize,sum;
  
  Die(int x, int y) //constructor
  {
    sum = 0;
    dots = 1;
  rectSize = 50;
    myX  = x;
    myY = y;
    dotSize = 10;
  }
  void roll()
  {
    dots = (int)(Math.random()*6)+1;
  }
  void sum()
  {
    sum = sum + dots;
    text("The Current Sum is... " + sum,350,470);
  }
  


  void show(){
  
    rect(myX, myY, rectSize, rectSize);
    
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



