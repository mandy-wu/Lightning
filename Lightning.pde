int startX = 150;
int startY = 64;
int endX = 150;
int endY = 300;

void setup()
{
  size(500,500);
  strokeWeight(2);
  background(0);
}
void draw()
{
  cloud();
  ground();
  lighthouse();
  stroke(255,235,3);
  while (endX<500)
  {
    endX = startX+(int)(Math.random()*10);
    endY = startY+(int)(Math.random()*20);
    line(startX,startY,endX,endY);
    startX=endX;
    startY=endY;
  }
}
void mousePressed()
{
  background(0);
  cloud();
  ground();
  lighthouse();
  startX= 150;
  startY = 64;
  endX = 150;
  endY = 300;
}

void cloud()
{
  noStroke();
  fill(126,120,120);
  rect(-5,-5,510,50);
  ellipse (10,40,50,50);
  ellipse (60,40,50,50);
  ellipse (110,40,50,50);
  ellipse (160,40,50,50);
  ellipse (210,40,50,50);
  ellipse (260,40,50,50);
  ellipse (310,40,50,50);
  ellipse (360,40,50,50);
  ellipse (410,40,50,50);
  ellipse (460,40,50,50);
  ellipse (510,40,50,50);
}

void ground()
{
  fill(33,135,255);
  rect(0,480,370,30);
}

void lighthouse()
{
  fill(131,85,15);
  rect(370,400,150,150);
  fill(255,0,0);
  rect(420,300,50,100);
  rect(410,270,70,30);
  triangle(445,200,410,240,480,240);
  fill(183,178,170);
  rect(420,240,50,30);
  fill(0);
  rect(441,380,10,20);
  rect(441,350,10,10);
  rect(441,320,10,10);
}