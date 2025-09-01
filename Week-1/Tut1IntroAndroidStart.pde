// example program
// draws the android logo
// example by Edwin Dertien 2010
// updated by Ansgar 2018, Peter 2023 


void setup() {
	size(400, 400);
	rectMode(CENTER);
	ellipseMode(CENTER);
}

void draw() {
  int x = width / 2;
  int y = height / 2;
  color col = color(0, 255, 0); // green
  
	background(#FFFFFF);
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
