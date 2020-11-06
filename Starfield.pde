Particle[] dit = new Particle[200]; //declares or creates 20 empty apartments

void setup()
{
  size(400,400);
  background(0);
  for(int i = 0; i < dit.length; i++)
  {
    dit[i] = new Particle(); //fill in the apartments with one Particle each
    dit[0] = new OddballParticle(); //replace first element of arr with Oddball
    dit[1] = new OddballParticle();  
}
}

void draw()
{
  //background(0);
  fill(0,0,0,20);
  rect(0,0,400,400);
  noStroke();
  for(int i = 0; i < dit.length; i++)
  {
    dit[i].move();
    dit[i].show();
  }
  //rect(0,0,400,400);
}

void mouseClicked(){
  for(int i = 0; i < dit.length; i++){
    dit[i].reset();
   }
}

class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle()
  {
    myX = myY = 200;
    //myX = mouseX;
    //myY = mouseY;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    //myColor = (255);
  }
  void move()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
    
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX,(float)myY,4,4);
  }
  void reset()
  {
    myX = mouseX;
    myY = mouseY;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
}

class OddballParticle extends Particle //Don't need to redeclare variables
{
  OddballParticle()
  {
    myX = myY = 200;
    //myX = mouseX;
    //myY = mouseY;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show()
  {
    fill(myColor);
    rect((float)myX,(float)myY,15,15);
  }
  void reset()
  {
    myX = mouseX;
    myY = mouseY;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
}
