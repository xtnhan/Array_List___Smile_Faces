class smileFace {
  float x;
  float y;
  float r;
  boolean smiling;

  //Constructor

  smileFace (float xx, float yy, float rr) {
    x = xx;
    y = yy;
    r = rr;
    smiling = false;
  }


  void draw () {
    if (smiling) {
      drawSmile();
    } else {
      drawFrown();
    }
  }

  void update () {
    if (dist(x, y, mouseX, mouseY) <= r) {//collision detection
      smiling = false;
    } else {
      smiling = true;
    }
  }


  void drawSmile() {//Send this code to student to save time
    fill(246, 255, 0); 
    circle(x, y, r*2);

    // eyes 
    fill(255, 255, 255); 
    circle(x - r/2, y-r/3, 10);
    circle(x + r/2, y-r/3, 10);

    // mouth
    noFill();
    arc(x, y, r, r, 0, PI);
  }

  void drawFrown() {
    fill(246, 255, 0); 
    circle(x, y, r*2);

    // eyes 
    fill(255, 255, 255); 
    circle(x - r/2, y-r/3, 10);
    circle(x + r/2, y-r/3, 10);

    // mouth
    noFill();
    arc(x, y+r/2, r, r, PI, TWO_PI);
  }
}
