class Star {
  PVector loc; 
  float s;
  int d;

  Star() {
    loc=new PVector(random(s, width-s), random(s, height-s));
    s=random(3);
    rectMode(CENTER);
    colorMode(RGB, 255, 255, 255);
  }
  void display() {
    d=int(random(1, 3));
    if (d==1) {
      fill(255);
    }
    else {
      fill(0);
    }
    rect(loc.x, loc.y, s, s);
  }
}

