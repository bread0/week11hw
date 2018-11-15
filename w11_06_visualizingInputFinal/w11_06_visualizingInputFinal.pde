// seizure warning don't hold down any key
// i mean you can but you've been warned

BouncinBall[] balls = new BouncinBall[100];
int whichPos = 0;

void setup () {
  size(800, 800);
}

void draw() {
  background(255);

  for (int i = 0; i < balls.length; i++) {
    if (balls[i] != null) {
      balls[i].updateBall();
      balls[i].displayBall();
    }
  }
}

void mousePressed() {
  if (whichPos < balls.length - 1) {
    whichPos++;
  } else {
    whichPos = 0;
  }
  balls[whichPos] = new BouncinBall(mouseX, mouseY);
}

void keyPressed() {
  setColor();
  background (r, g, b);
}

float r, g, b;
void setColor() {
  r = random(255);
  g = random(255);
  b = random(255);
}

class BouncinBall {
  float posX;
  float posY;
  float velX;
  float velY;
  float size = 10;

  BouncinBall(float posX, float posY) {
    this.posX = posX;
    this.posY = posY;
    velX = random(-5, 5);
    velY = random(-5, 5);
  }

  void displayBall() {
    noStroke();
    fill(30);
    ellipse(posX, posY, size, size);
  }

  void updateBall() {
    posX += velX;
    posY += velY;

    if (posX > width - size/2 || posX < 0 + size/2) {
      velX *= -1;
    }
    if (posY > height - size/2 || posY < 0 + size/2) {
      velY *= -1;
    }
  }
}
