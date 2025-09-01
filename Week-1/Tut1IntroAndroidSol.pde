// example program
// draws the android logo
// example by Edwin Dertien 2010
// updated by Ansgar 2018, Peter 2023

static SolutionVersion whichSolution = SolutionVersion.TWO_ANDROIDS;

enum SolutionVersion {
  THREE_ANDROIDS,
  AT_MOUSE,
  GLOBAL_POS,
  TWO_ANDROIDS
};


int androidX=0, androidY=0;
color androidColor=#00FF00;

int android2X=0, android2Y=0;
color android2Color=#FF0000;


void setup() {
  size(400, 400);
  rectMode(CENTER);
  ellipseMode(CENTER);
  
  androidX = width/2;
  androidY = height/2;
  androidColor=#00FF00;
  
  android2X = width/4;
  android2Y = height/2;
  android2Color=#FF0000;
 
}

void drawAndroid(int x, int y, color col) {
  stroke(col);
  strokeWeight(1);
  fill(col);

  //body
  rect(x, y, 50, 50);
  ellipse(x - 20, y + 25, 10, 10);
  ellipse(x + 20, y + 25, 10, 10);
  rect(x, y + 25, 40, 10);

  // arms
  ellipse(x - 35, y - 20, 10, 10);
  rect(x - 35, y - 5, 10, 25);
  ellipse(x - 35, y + 10, 10, 10);

  ellipse(x + 35, y - 20, 10, 10);
  rect(x + 35, y - 5, 10, 25);
  ellipse(x + 35, y + 10, 10, 10);

  // legs
  ellipse(x - 10, y + 50, 10, 10);
  ellipse(x + 10, y + 50, 10, 10);
  rect(x - 10, y + 40, 10, 20);
  rect(x + 10, y + 40, 10, 20);

  // head
  int headX = x;
  int headY = y - 28;
  arc(headX, headY, 50, 50, PI, 2 * PI);

  // antennae
  strokeWeight(3);
  line(headX, headY - 5, headX - 15, headY - 30);
  line(headX, headY - 5, headX + 15, headY - 30);

  // eyes:
  noStroke();
  fill(#FFFFFF);
  ellipse(headX - 10, headY - 10, 7, 7);
  ellipse(headX + 10, headY - 10, 7, 7);

}

void draw() {
  background(#FFFFFF);
  
  if (whichSolution == SolutionVersion.THREE_ANDROIDS) {  
    // 3 androids next to each other, different colors
    drawAndroid(width / 4, height / 2, color(255, 0, 0));
    drawAndroid(width / 2, height / 2, color(0, 255, 0));
    drawAndroid(width * 3 / 4, height / 2, color(0, 0, 255));
  }
  
  
  if (whichSolution == SolutionVersion.AT_MOUSE) {  
    // Android at mouse position  
    drawAndroid(mouseX, mouseY, color(0, 255, 0));
  }
  
  if (whichSolution == SolutionVersion.GLOBAL_POS) {  
    // Android via global variables
    drawAndroid(androidX, androidY, androidColor);
  }
  
  if (whichSolution == SolutionVersion.TWO_ANDROIDS) {
    drawAndroid(androidX, androidY, androidColor);
    drawAndroid(android2X, android2Y, android2Color);
  }
}

void mousePressed() { 
  if (whichSolution == SolutionVersion.GLOBAL_POS) {
    androidColor = #FF0000;
    androidX=mouseX; androidY=mouseY; // Already moving the android to the mouse position when pressed feels smoother 
  }
}
void mouseReleased() { 
  if (whichSolution == SolutionVersion.GLOBAL_POS) {
    androidColor = #00FF00;
  }
}

void mouseDragged() { androidX=mouseX; androidY=mouseY; }

void mouseMoved() { android2X=mouseX; android2Y=mouseY; }
