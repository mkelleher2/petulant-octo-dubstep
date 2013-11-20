class Ball {
  PVector loc;
  PVector vel;
  int d;
  color c;


  Ball() {
    loc=new PVector(random(d, width-d), random(d, height-d));
    vel=new PVector(random (2, 6), random(2, 6));
    c=color(random(360), 100, 100,80);
    d=int(random(50,80));
      colorMode(HSB, 360, 100, 100);
  }
  void display() {
    noStroke();
    fill(c);
    ellipse(loc.x, loc.y, d, d);
  }
  void move() {
    loc.add(vel);
    if (loc.y>height-d/2) {
      loc.y=height-d/2;
      vel.y*=-1;
    }
    if (loc.y<d/2) {
      loc.y=d/2;
      vel.y*=-1;
    }
    if (loc.x>width-d/2 ) {
      loc.x=width-d/2;
      vel.x*=-1;
    }
    if ( loc.x<d/2) {
      loc.x=d/2;
      vel.x*=-1;
    }
  }
}

