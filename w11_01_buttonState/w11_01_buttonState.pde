// code 1 FA 18
// bryan ma

// this sketch creates a Button class that changes a 'pressed' boolean
// from false to true, and vice versa, when clicked on. pressing once
// is all that's needed to change the state. 

// create a different Button class that also has a 'pressed' boolean, 
// but unlike the other Button, the mouse needs to be held on the button
// in order to set it to true. releasing the mouse button or moving it off
// the button returns the boolean to false.

// finally, check in the sketch for the state of the buttons (see the 
// getButtonStatus() method for an example of how to access their state
// and create some kind of visual effect whenever the buttons are active. 


Button button;
Buttonne redButton;

void setup() {
  size(300, 300);
  button = new Button(120, 95, 100, 30);
  redButton = new Buttonne(60, 195, 100, 30);
}

void draw() {
  background(100);
  button.display();
  button.effect();
  redButton.display();
  redButton.effect();
}

void mousePressed() {
  button.checkPressed();
}

void mouseDragged() {
  redButton.checkPressed();
}

void mouseReleased() {
  redButton.pressed = false;
}
