class Buttonne {
  boolean pressed;
  float x, y;
  float w, h;
  
  Buttonne(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  
  void checkPressed() {
    if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
      pressed = true;
    } else {
      pressed = false;
    }
    if (mousePressed == false) {
      pressed = false;
    }
  }
  
  void display() {
    stroke(1);
    if (pressed) {
      fill(240, 0, 0);
    } else {
      fill(150, 0, 0);
    }
    rect(x, y, w, h);
  }
  
  boolean getButtonStatus() {
    return pressed;
  }
  
    void effect() {
    if (pressed) {
      noStroke();
      fill(255);
      ellipse(x+100, y, 10, 10);
    }
  }
}
