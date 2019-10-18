void setup()
{
  size(500,500);
	noLoop();
}
void draw()
{
	//your code here
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int rectSize, dots, myX, myY;
	
	Die(int x, int y) //constructor
	{
    dots = (int)(Math.random()*6)+1;
		rectSize = 50;
    myX  = x;
    myY = y;
	}
	void roll()
	{
		//your code here
	}

	void show()
	{
		rect(myX, myY, rectSize, rectSize);
    
	}
}
