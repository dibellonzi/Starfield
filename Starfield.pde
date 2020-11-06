Particle[]tony =new Particle[1000];
OddballParticle homie =new OddballParticle(2,0);

void setup()
{
  size(400,400);
  for(int i=0;i<tony.length;i++){
    tony[i]=new Particle(Math.random()*5, Math.random()*360);
  }
}
void draw()
{
  background(0);
  for(int i=0;i<tony.length;i++){
    homie.move();
    homie.show();
    tony[i].move();
    tony[i].show();
  }
}
class Particle
{
  int myRed,myGreen,myBlue;
  double myX, myY, mySpeed, myAngle;
  Particle(double speed, double angle){
    myX = 200;
    myY = 200;
    mySpeed = speed;
    myAngle = angle;

  }

  void move(){
    myX+=Math.cos(myAngle)*mySpeed;
    myY+=Math.sin(myAngle)*mySpeed;
  }
  void show(){
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    ellipse((float)myX,(float)myY,12,12);
  }
}
class OddballParticle extends Particle
{
  OddballParticle(double speed, double angle) {
    super(speed,angle);
    myRed=(128);
    myGreen=(0);
    myBlue=(128);
    myX=200;
    myY=200;
  }
  void move(){
     if(myX>=400){
       mySpeed=-.01;
     }
     if(myX<=0){
       mySpeed=.01;
     }
    myX+=Math.cos(myAngle)*mySpeed;
  }
  void show(){
    fill(myRed,myGreen,myBlue);
    triangle((float)myX-10,(float)myY+10,(float)myX,(float)myY-10,(float)myX+10,(float)myY+10);
  }

}
