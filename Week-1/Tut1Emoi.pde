color col = #FFFF00;

void drawEmoi(int x, int y, color col) {
  fill(col);
  circle(x,y,50);
  fill(#000000);
  
  circle(x-10,y-10,5);
  circle(x+10,y-10,5);
  
  arc(x,y+5,30,15,0,PI);
}

void setup() {
  size(300,300);
}

void draw() {
  background(#FFFFFF);
  drawEmoi(width*2/3,height/2,col);
  drawEmoi(width*1/3,height/2,#FF00FF);
  
  color col = #0000FF;
  drawEmoi(width/2,height*2/3,col);
}

void mousePressed() { col = #00FF00; }
void mouseReleased() { col = #FFFF00; }
