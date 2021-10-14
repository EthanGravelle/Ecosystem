//1. spawn a bunch of creatures that move
Creature[] creatures = new Creature[20];
Food[] food = new Food[20];
public void setup() {
  size(800, 800);
  spawnCreatures();
  spawnFood();
}

public void draw() {
  background(220);
  for (int i = 0; i < creatures.length; i++) { 
    if (creatures[i].hp > 0) { //work on creatures disappearing here
      creatures[i].active = false;
      creatures[i].show();
      creatures[i].move();
      for (int e = 0; e < food.length; e++) {
        if (food[e].active == false)
          continue;

   creatures[i].collides(food[e]);
      }
    }
  }
  for (int e = 0; e < food.length; e++) {
    if (food[e].active == true)  
    food[e].show();
      
  }
}
  public void spawnCreatures() {
    for (int i = 0; i < creatures.length; i++) {
      creatures[i] = new Creature((int)(Math.random()*400 + 15), (int)(Math.random()*300 + 10));
    }
  }

  public void spawnFood() {
    for (int i = 0; i < food.length; i++) {
      food[i] = new Food((int)(Math.random()*400 + 20), (int)(Math.random()*350 + 15));
    }
  }
