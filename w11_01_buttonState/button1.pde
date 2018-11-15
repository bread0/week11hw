class Button {
  boolean pressed;
  float x, y;
  float w, h;
  
  Button(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  void checkPressed() {
    if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
      pressed = !pressed;
    }
  }
  
  void display() {
    stroke(1);
    if (pressed) {
      fill(240);
    } else {
      fill(150);
    }
    rect(x, y, w, h);
  }
  
  boolean getButtonStatus() {
    return pressed;
  }
  
  void effect() {
    if (pressed) {
      noStroke();
      fill(0);
      ellipse(x+100, y, 10, 10);
    }
  }
}
