comet [] flyer;
void setup() {
  size(500, 500);
  flyer = new comet[500];
  for (int i = 0; i < flyer.length; i++) {
    flyer[i] = new comet();
    flyer[0] = new Oddballcomet();
  }
};

void draw() {
  background(0);
 for(int p = 0; p < flyer.length;p++){
    flyer[p].move();
    flyer[p].show();
  }
}
class comet {
  double myAngle;
  int myX, myY, mySpeed;  
  comet() {
    myX = 250;
    myY = 250;
    mySpeed = (int)(Math.random()*15);
    myAngle = (Math.random()*2)*Math.PI;
  }
  void move() {
    double xAng = Math.cos(myAngle)*mySpeed;
   double yAng= Math.sin(myAngle)*mySpeed;
   myX+=xAng;
   myY+=yAng;
   if(myX > 500 || myX < 0){
     myX = 250;
     myY = 250;
     myAngle = (Math.random()*2)*Math.PI;
   }
   if(myY > 500 || myY < 0){
    myY = 250;
    myX = 250;
    myAngle = (Math.random()*2)*Math.PI;
   }
  }
  void show() {
    noStroke();
    fill(#F0BFBF);
    ellipse(myX,myY,5,15);
    ellipse(myX,myY,15,5);
  }
}

class Oddballcomet extends comet
{
 Oddballcomet(){
  myX = 250;
  myY = 250;
  mySpeed = 15;
  myAngle = (Math.random()*2)*Math.PI;
  }
  void move(){
    double xAng = Math.cos(myAngle)*mySpeed;
   double yAng= Math.sin(myAngle)*mySpeed;
   myX+=xAng;
   myY+=yAng;
   if(myX > 500 || myX < 0){
     myX = 250;
     myY = 250;
     myAngle = (Math.random()*2)*Math.PI;
   }
   if(myY > 500 || myY < 0){
    myY = 250;
    myX = 250;
    myAngle = (Math.random()*2)*Math.PI;
   }
  }
  void show(){
    stroke(#F0BFBF);
    fill(255);
    ellipse(myX,myY,40,20);
    ellipse(myX,myY,20,40);
  }
}
