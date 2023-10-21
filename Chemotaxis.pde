class Bacteria
{
  int mySize, myX, myY, myColor;
  Bacteria(int x, int y, int biggness)
  {
    mySize = biggness;
    myX = x;
    myY = y;
    if(dist(myX, myY, mouseX, mouseY) > 5)
      myColor = color(255, 0, 0);
    else
      myColor = color(0, 0, 0);
  }
  Bacteria(){
    mySize = 10;
    myX = 0;
    myY = 0;
  }
  Bacteria(int x, int y){
    mySize = 50;
    myX = x;
    myY = y;
  }
  void show()
  {
    if(dist(myX, myY, mouseX, mouseY) > 5)
      fill(255, 0, 0);
    else
      fill(0, 0, 0);
      
    ellipse(myX, myY, mySize, mySize);
  }
  void runaway(){
    if(mouseX > myX && dist(myX, myY, mouseX, mouseY) > 5)
      myX = myX + (int)(Math.random()*6)-1;
    else if(dist(myX, myY, mouseX, mouseY) > 5)
      myX = myX + (int)(Math.random()*6)-4;
    else
      myX = myX;
   
    
  if(mouseY > myY && dist(myX, myY, mouseX, mouseY) > 5)
    myY = myY + (int)(Math.random()*6)-1;
  else if(dist(myX, myY, mouseX, mouseY) > 5)
    myY = myY + (int)(Math.random()*6)-4;
  else
    myY = myY; 
  if(dist(myX, myY, mouseX, mouseY) < 5){
    text("OUCH", 232, 250);
    text("OUCH", 132, 250);
    text("OUCH", 332, 250);
    text("OUCH", 232, 150);
    text("OUCH", 232, 350);
    text("OUCH", 32, 250);
    text("OUCH", 432, 250);
    text("OUCH", 232, 450);
    text("OUCH", 232, 50);
    text("OUCH", 232, 350);

    
    
  }
  if(dist(myX, myY, mouseX, mouseY) > 5){
    ellipse(mouseX, mouseY, 30, 30);  
  }
  }
}
Bacteria bob, bobJr, bobIII, bobIV;
void setup()
{
  background(0);
  size(500, 500);
  bob = new Bacteria((int)(Math.random()*500), (int)(Math.random()*500), 25);
  bobJr = new Bacteria((int)(Math.random()*500), (int)(Math.random()*500), 25);
  bobIII = new Bacteria((int)(Math.random()*500), (int)(Math.random()*500), 25);
  bobIV = new Bacteria((int)(Math.random()*500), (int)(Math.random()*500), 25);
}
void draw(){
  background(0);
  fill(255);  
  bob.runaway();
  bobJr.runaway();
  bobIII.runaway();
  bobIV.runaway();
  bob.show();
  bobJr.show();
  bobIII.show();
  bobIV.show();
  
    
  
}
