Ball[] b;
Star[] s;
Shoot sa, sb, sc, sd;
void setup() {
  size(800, 800);
  b=new Ball[150];
  s=new Star[500];
  for (int i=0; i<b.length; i++) {
    b[i]= new Ball();
  }
  for (int i=0; i<s.length; i++) {
    s[i]= new Star();
  }
  sa=new Shoot(width/3, 0, 3, 2, 10);
  sb=new Shoot(width, height/4, -1, 3, 20);
  sc=new Shoot(0, height/2, 2, 4, 20);
  sd=new Shoot(width, height/2, -1, 5, 10);
}
void draw() {
  background(0);
  for (int i=0; i<b.length;i++) {
    b[i].display();
    b[i].move();
  }
  for (int i=0; i<s.length; i++) {
    s[i].display();
  }
  sa.display();
  sa.move();
  sb.display();
  sb.move();
  sc.display();
  sc.move();
  sd.display();
  sd.move();

}
