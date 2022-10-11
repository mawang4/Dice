  void setup()
  {
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
      int myX, myY, diceNum; 
      
      Die(int x, int y) //constructor
      {  
        myX = x;
        myY = y;
        diceNum = (int)(Math.random() * 6) + 1; 
      }
      void roll()
      {
          //your code here
      }
      void show()
      {
          //your code here
      }
  }
