//1. spawn a bunch of creatures that move
Creature[] creatures = new Creature[5];

public void setup() {
  size(800,800);
  creatures = new Creature(50,100);
  
}

public void draw() {
  background(220);
  world.show();
  creatures.show();
  creatures.move();
for (int i = 0; i < creatures.length; i++) {
   creatures[i].show();    
   creatures[i].move();
}
