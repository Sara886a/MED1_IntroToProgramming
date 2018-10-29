Player player;
Ball[] balls = new Ball [5];
Time timer;

void setup () {
 size (1000,800);
 
 int playerSize = 60;
 int ballSize = 100;
 int counter = 0;
 
 for (int i = 0; i < balls.length; i++) {
  balls[i] = new Ball (ballSize, playerSize);
 }
  player = new Player (playerSize);
  timer = new Time (counter);
}

void draw () {
  background (30,50,70);
  
  timer.display();
  timer.score();
  player.display();
 
  for (int i = 0; i < balls.length; i++) {
   balls[i].spawn(); 
   balls[i].damage();
  }
  
  
}
