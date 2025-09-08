void setup() {
  size(800, 600);
  noStroke();
}

void draw() {
  background(220);
  float w = width;
  float h = height;
  float w2 = w/2.0;
  float h2 = h/2.0;

  // 3.1 pointInRect
  // 3.2 rectHighlight uses pointInRect + mouseX, mouseY
  // 3.3 Quadrant highlight
  rectHighlight(0,   0,  w2, h2);
  rectHighlight(w2,  0,  w2, h2);
  rectHighlight(0,  h2,  w2, h2);
  rectHighlight(w2, h2,  w2, h2);

  // 3.4 Grid 10x8, cell under mouse black
  int cols = 10, rows = 8;
  float cw = width/(float)cols, ch = height/(float)rows;

  // draw a separator bar just for clarity
  fill(255); rect(0, 0, width, 4);

  for (int i=0; i<cols; i++){
    for (int j=0; j<rows; j++){
      float x = i*cw, y = j*ch;
      rectHighlight(x, y, cw, ch);
    }
  }
}

// 3.1
boolean pointInRect(float x, float y, float sx, float sy, float sw, float sh) {
  return x >= sx && x <= sx + sw && y >= sy && y <= sy + sh;
}

// 3.2
void rectHighlight(float x, float y, float w, float h) {
  if (pointInRect(mouseX, mouseY, x, y, w, h)) fill(0);
  else fill(255);
  rect(x, y, w, h);
}
