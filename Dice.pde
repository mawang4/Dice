  Die dice; 
  
  int sum = 0;
  
  void setup()
  {
      size(600, 600);  
      noLoop();
  }
  void draw()
  {
      background(198, 198, 198); 
      for(int j = 40; j <= 440; j+=100)
          {
             for(int i = 50; i < 550; i+=100)
             {
               dice = new Die(i, j); 
               dice.roll(); 
               dice.show(); 
               sum = sum + dice.myNum;
             }
          }      
      textAlign(CENTER); 
      text("Sum: " + sum, 300, 570);
}
  void mousePressed()
  { 
      sum = 0;
      redraw(); 
  }
  class Die //models one single dice cube
  {
      int myX, myY, myNum; 
      
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
      }
      void roll()
      {
          myNum = (int)(Math.random()*6) + 1; 
      }
      void show()
      {  
          fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256)); 
          rect(myX, myY, 90, 90); 
          
          if(myNum == 1){
            fill(0, 0, 0);
            ellipse(myX + 45, myY + 45, 13, 13); 
          } 
          if(myNum == 2){
            fill(0, 0, 0);
            ellipse(myX + 60, myY + 45, 13, 13); 
            ellipse(myX + 30, myY + 45, 13, 13); 
          } 
          if(myNum == 3){
            fill(0, 0, 0);
            ellipse(myX + 45, myY + 45, 13, 13);
            ellipse(myX + 20, myY + 20, 13, 13); 
            ellipse(myX + 70, myY + 70, 13, 13); 
          } 
          if(myNum == 4){
            fill(0, 0, 0);
            ellipse(myX + 20, myY + 20, 13, 13); 
            ellipse(myX + 70, myY + 20, 13, 13); 
            ellipse(myX + 70, myY + 70, 13, 13); 
            ellipse(myX + 20, myY + 70, 13, 13);
          } 
           if(myNum == 5){
            fill(0, 0, 0);
            ellipse(myX + 20, myY + 20, 13, 13); 
            ellipse(myX + 70, myY + 20, 13, 13); 
            ellipse(myX + 70, myY + 70, 13, 13); 
            ellipse(myX + 20, myY + 70, 13, 13);
            ellipse(myX + 45, myY + 45, 13, 13); 
          } 
          if(myNum == 6){
            fill(0, 0, 0);
            ellipse(myX + 20, myY + 20, 13, 13); 
            ellipse(myX + 70, myY + 20, 13, 13); 
            ellipse(myX + 70, myY + 70, 13, 13); 
            ellipse(myX + 20, myY + 70, 13, 13);
            ellipse(myX + 20, myY + 45, 13, 13);
            ellipse(myX + 70, myY + 45, 13, 13);
          } 
      }
  }
