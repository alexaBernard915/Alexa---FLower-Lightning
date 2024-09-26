int startX = 0;
  int startY = 270;
  int endX = 0;
  int endY = 300;

void setup()
{
  background(167,214,235);
  size(300,300);
  noLoop();
}

void drawFlower(int x, int y){
  noStroke();
  fill(252,189,245);
  ellipse(x, y, 20, 20);
  triangle(x + 10, y - 5, x + 10, y - 15, x, y - 5);
  triangle(x - 10, y - 5, x - 10, y - 15, x, y - 5);
  ellipse (x, y - 10, 8, 8);
}

void draw()
{
  noStroke();
  fill(85,171,101);
rect(0,270,300,50);
 startX = (int)(Math.random()*200)+ 50;
 startY = 270;
 endY = 270;
  while(endY > 100){
  endX = startX + (int)(Math.random()*10)-5;
  endY= startY - (int)(Math.random()*20);
  strokeWeight(2);
  stroke(93,201,111);
  line(startX,startY,endX,endY);
  startX=endX;
  startY=endY;
}
drawFlower(endX,endY);
}
void mousePressed()
{
 redraw();
}


