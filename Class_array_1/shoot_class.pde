class Shoot {
  PVector loc;
  PVector vel;
  int d;
  float s;

  Shoot(int x, int y, int vx, int vy, int l) {
    loc= new PVector(x, y);
    vel= new PVector(vx, vy);
    s=l;
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
  void move() {
    loc.add(vel);
    if (loc.x<0) {
      loc.x=width;
    }
    if (loc.x>width) {
      loc.x=0;
    }
    if (loc.y>height) {
      loc.y=0;
    }
  }
}

