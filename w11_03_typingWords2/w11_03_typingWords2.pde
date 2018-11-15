// code 1 FA 18
// bryan ma

// typing words 2

String letters = "";
ArrayList<Word> words = new ArrayList<Word>();
Word w;

void setup() {
  size(600, 600);
  w = new Word(50, 50, "hello!");
  textSize(16);
  textAlign(CENTER);
}

void draw() {
  background(100);
  w.display();
  text(letters, 0, 50, 600, 1000);
  for (Word temp : words) {
    temp.display();
  }
}

void keyPressed() {
  if ((key == ENTER) || (key == RETURN)) {
    Word w = new Word(random(width), random(height), letters);
    words.add(w);
    letters = "";
    for (Word temp : words) {
      println(temp.theWord);
    }
  } else if ((key > 31) && (key != CODED)) {
    letters = letters + key;
  }
}

class Word {
  String theWord;
  float x, y;

  Word(float x, float y, String text) {
    theWord = text;
    this.x = x;
    this.y = y;
  }

  void display() {
    fill(255);
    text(theWord, x, y);
  }
}
