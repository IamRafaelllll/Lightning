
int startX = 230;
int startY = 180;
int startX2 = 115;
int startY2 = 180;
int endX = 0;
int endY = 0;
int endX2=0;
int endY2=0;


void setup()
{
  size(350, 300);
  strokeWeight(5);
  background(204, 229, 255);
  beginShape();

  fill(0);
  beginShape();
  vertex(75, 63);
  bezierVertex(70, 60, 59, 56, 49, 56);
  bezierVertex(56, 74, 71, 87, 81, 95);
  bezierVertex(75, 85, 72, 74, 75, 63);
  endShape();
  beginShape();
  vertex(281, 89);
  bezierVertex(289, 87, 280, 88, 307, 90);
  bezierVertex(296, 103, 287, 108, 272, 113);
  bezierVertex(277, 104, 278, 101, 280, 89);
  endShape();


  fill(255, 255, 0);
  stroke(0);
  beginShape();
  beginShape();
  vertex(75, 63);
  bezierVertex(85, 65, 116, 80, 138, 95);
  bezierVertex(156, 94, 192, 93, 209, 95);
  bezierVertex(225, 96, 267, 88, 281, 89);
  vertex(272, 113);
  bezierVertex(262, 117, 242, 122, 223, 123);
  bezierVertex(238, 155, 240, 182, 224, 200);
  bezierVertex(198, 224, 148, 224, 122, 200);
  bezierVertex(104, 187, 114, 138, 123, 123);
  bezierVertex(106, 113, 92, 106, 80, 93);
  bezierVertex(70, 83, 71, 74, 75, 63);
  endShape();


  //Eyes
  stroke(0);
  strokeWeight(23);
  point(206, 147);
  point(140, 147);

  stroke(255);
  strokeWeight(9);
  point(142, 140);
  point(204, 140);

  noFill();
  stroke(0);
  strokeWeight(2);
  arc(173, 166, 6, 3, 45, 135);

  stroke(0);
  strokeWeight(3);
  bezier(154, 179, 159, 189, 169, 178, 173, 179);
  bezier(192, 179, 187, 189, 177, 178, 173, 179);

  fill(255, 0, 0);
  stroke(0);
  ellipse(125, 180, 20, 20); 
  ellipse(220, 180, 20, 20);

  fill(255, 255, 0);

}


void draw()
{
  

  while (endX2 >= 0) {
    endX2 = startX2 - (int)(Math.random()*15);
    endY2 = startY2 + (int)(Math.random()*19)-9;
    stroke(255, 204, 0);
    line(startX2, startY2, endX2, endY2);
    startX2=endX2;
    startY2=endY2;
  }
  //right
  while (endX <= 350) {
    endX = startX + (int)(Math.random()*15);
    endY = startY + (int)(Math.random()*17)-8;
    stroke(255, 204, 0);
    line(startX, startY, endX, endY);
    startX=endX;
    startY=endY;
  }
}
void mousePressed()
{
  for (startY=0; startY<2; startY++) {
    startX = 230;
    startY = 180;
    endX = 0;
    endY =0;
    startX2 = 115;
    startY2=180;
    endX2 = 0;
    endY2=0;
  }
}
