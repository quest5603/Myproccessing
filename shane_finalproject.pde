

int x=100;
int x2=200;
int x3=140;
int y=130;
 int y2=130;
   int y3=130;
    int y4=170;
     int y5=170;
int z=0;
int a=10;//background color
int b=200;//color
int c=22;//color
int d=58;//stroke color
int e=189;//stroke color
int f=255;//stroke color
int fix=1;
int n=0;
int b2=100;//coordinates for n
int b3=40;
int b4=70;
int b5=100;
int e2=0;//coordinates for E
int e3=70;
int e4=140;
int t=75;//coordinates for A
 int t2=30;
  int t3=150;
   int t4=200;
    int t5=0;
int q=255;
int c2=100;//bottom squares xcoordinates
int f2=10;//bottom squares color
int f3=10;
int f4=10;

float maxDistance;
float angle= 0.0;
float angle2= 0.0;
void setup(){

size(1000,700);
maxDistance = dist(0, 0, width, height);
}

void draw(){
  int ranPos= (int(random(350,450)));
   int ranPos2= (int(random(450,550)));
    int ranPos3= (int(random(550,650)));
  int ranCol2= (int(random(255)));
  int ranCol3= (int(random(255)));
  //actual background
  fill(249,246,239,60);
   rect(0,0,width,height);
 //some decorations
 fill(f2,f3,f4);
 rect(c2,ranPos,30,30);
  rect(c2,ranPos2,30,30);
   rect(c2,ranPos3,30,30);
   
   
  //Shane S horizontal
  fill(b,c,c);
  rect(x,y4,30,30);
  translate(30,0);
  rect(x,y3,30,30);
  translate(30,0);
  rect(x,y,30,30);
  translate(0,70);
  rect(x,y5,30,30);
  translate(-30,0);
  rect(x,y,30,30);
  translate(-30,0);
  rect(x,y2,30,30);
  translate(0,70);
  rect(x,y,30,30);
  translate(30,0);
  rect(x,y3,30,30);
  translate(30,0);
  rect(x,y,30,30);
 //the H in Shane
 translate(0,0);
 rect(200,-10,30,170);
 translate(90,0);
 rect(200,-10,30,70);
 rect(200,90,30,70);
 rect(x2,60,15,30);
 rect(x3,60,30,30);
 //A in shane
 translate(300,-40);
 triangle(t,t2,t3,t4,t5,t4);
 //N in shane
 fill(b,c,c);
 translate(100,30);
 rect(b2,0,30,170);
 translate(90,0);
 rect(b5,0,30,170);
 rect(b3,30,30,30);
 rect(b3,60,30,30);
 rect(b4,120,30,30);
 rect(b4,90,30,30);
 //E in Shane
 translate(100,0);
 rect(100,e2,30,170);
 rect(130,e2,90,30);
 rect(130,e3,90,30);
 rect(130,e4,90,30);
 
 
  //background type stuff
   stroke(d,e,f);
   strokeWeight(.5);
   translate(-740,-130);
    for (int i = 0; i <= width; i += 10) {
    for (int j = 0; j <= height; j += 10) {
      fill(a,a,a,q);
      float mouseDist = dist(mouseX, mouseY, i, j);
      float diameter = (mouseDist / maxDistance) * 50.0;
      rect(i, j, diameter, diameter);
    } 
  }
   //fun little spin 
  noStroke();
   translate(mouseX, mouseY);
angle = angle + 0.03;
angle2 = angle2 - 0.06;
rotate(angle);
for (int  t= 0; t < 11; t++) { // 18 repetitions
  strokeWeight(t); // Increase stroke weight 
  rotate(PI/5); // Accumulate the rotation 
  rect(140, 140, 20, 20);
   rotate(PI/5);
  }
  rotate(angle2);
  for (int s = 0; s < 18; s++) { // 18 repetitions
  strokeWeight(s); // Increase stroke weight 
  rotate(PI/5); // Accumulate the rotation 
   rotate(PI/5);
  rect(140, 140, 10, 10);
  c2++;
  } 
  if(c2>=width-50){
    c2=100;
}
    //S animation in shane
  if (keyCode == 83) {        
      y +=5;
      y2 +=5;
      y3 +=5;
      y4 +=5;
      y5 +=5;
   }
 if (y>=700){
   y=0;
 }
 if (y2>=700){
   y2=0;
 }
 if (y3>=700){
   y3=0;
 }
 if (y4>=700){
   y4=0;
 }
 if (y5>=700){
   y5=0;
 }
  //makes screen white, other colors possible 
  if (keyCode == 32) {
    a=255;
    b=10;
    c=10;
    d=255;
    e=174;
    f=45;
    f2=255;
    f3=255;
    f4=255;
  }
  //changes screen to normal
  else if(keyCode == 16) {
    a=10;
    d=58;
    e=189;
    f=255;
    f2=10;
    f3=10;
    f4=10;
  }
 if (mouseButton == LEFT) {
   b=ranCol2;
   c=ranCol3; 
  } 
  if(keyCode == 72) {
    x2+=2;
    x3+=2;
  }
  if(x2>=215){
    x2=110;
  }
  if(x3>=200){
    x3=110;
  }
  if(keyCode == 78) {
    b5-= 2;
    b4-= 2;
  }
  if(b4<=30){
    b4+= 50;
    b5+= 50; 
  }
  if(keyCode == 69) {
    e2=170;
    e3=240;
    e4=310;
  }
  else{
    e2=0;
    e3=70;
    e4=140;
  }
  if(keyCode == 65){
 t+=2;
 t3+=2;
 t5+=2;
  }
  if(t5>=(width-450)){
     t=width-(width-75);
    t3=width-(width);
    t5=width-(width-150);
  }
  if(keyCode == 66){
    q=0;
  }
  if(keyCode == 8){
 x=100;
 x2=200;
 x3=140;
 y=130;
 y2=130;
 y3=130;
 y4=170;
 y5=170;
 z=0;
 a=10;//background color
 b=200;//color
 c=22;//color
 d=58;//stroke color
 e=189;//stroke color
 f=255;//stroke color
 fix=1;
 n=0;
 b2=100;//coordinates for n
 b3=40;
b4=70;
b5=100;
e2=0;//coordinates for E
e3=70;
e4=140;
t=75;//coordinates for A
t2=30;
t3=150;
t4=200;
t5=0;
q=255;
c2=100;//bottom squares xcoordinates
f2=10;//bottom squares color
f3=10;
f4=10;
  }
}