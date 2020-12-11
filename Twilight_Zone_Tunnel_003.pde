// Twilight Zone Tunnel
// Rupert Russell 12/12/2020

float scale = 6.0;

float translate = 15 * scale;
float stepDown = 60 * scale; 
float y = 0;
float initialCircle = 1750 * scale;
int numberOfCircles = 28;

void setup() {
  size(11462, 11462);
  noLoop();
  background(255);
}

void draw() {
  translate(width/2, height/2);

  for (int x = 0; x < numberOfCircles; x++) {
    y = y + 0.5;

    fill(0);
    circle(0 - translate * x, 0 - translate * y, initialCircle - x * stepDown );


    x ++;
    fill(255);
    circle(0 - translate * x, 0 - translate * y, initialCircle - x * stepDown );
  }
  save("tunnel.png");
  exit();
}
