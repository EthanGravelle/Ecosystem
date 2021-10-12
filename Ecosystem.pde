//1. spawn a bunch of creatures that move
Creature[] creatures = new Creature[5];
Food[] food = new Food[3];
public void setup() {
  size(800,800);
spawnCreatures();
spawnFood();
  
}

public void draw() {
  background(220);
  for (int i = 0; i < creatures.length; i++) {
  for (int e = 0; e < food.length; e++) {
  creatures[i].show();    
  creatures[i].move();
  food[e].show();
}
  }
}

public void spawnCreatures() {
  for (int i = 0; i < creatures.length; i++) {
    creatures[i] = new Creature((int)(Math.random()*400 + 15),(int)(Math.random()*300 + 10));
  }
}

public void spawnFood() {
  for (int i = 0; i < food.length; i++) {
    food[i] = new Food((int)(Math.random()*400 + 20),(int)(Math.random()*350 + 15));
  }
}
