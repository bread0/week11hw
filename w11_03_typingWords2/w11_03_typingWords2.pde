// code 1 FA 18
// bryan ma

// typing words 2

// see previous sketch for instructions.

ArrayList<Word> words = new ArrayList<Word>();

void setup() {
  size(600, 600);
}

void draw() {
  background(100);
  for (int i = 0; i < words.size(); i++) {
    Word temp = words.get(i);
    temp.display();
  }
  //words.display();
}

void keyPressed() {
  //if ((key == ENTER) || (key == RETURN)) {
  //  println(letters);
  //  letters = "";
  //} else if ((key > 31) && (key != CODED)) {
  //  letters = letters + key;
  //}
}

class Word {
  //String theWord;
  String letters = "";
  float x, y;

  Word() {
    //theWord = text + key;
    textSize(16);
    textAlign(CENTER);
  }

  void display() {
    //  text(theWord, x, y);
    //}
    if ((key == ENTER) || (key == RETURN)) {
      println(letters);
      letters = "";
    } else if ((key > 31) && (key != CODED)) {
      letters = letters + key;
    }
  }
}
