Player player;
Ball[] balls = new Ball [5];

void setup () {
 size (1000,800);
 
 int playerSize = 60;
 int ballSize = 100;
 float timer = 0;
 
 for (int i = 0; i < balls.length; i++) {
  balls[i] = new Ball (ballSize, playerSize, timer);
 }
  player = new Player (playerSize);
}

void draw () {
  background (30,50,70);
 
   player.display();
 
  for (int i = 0; i < balls.length; i++) {
   balls[i].spawn(); 
   balls[i].damage();
  }
  
}
